use cbc::cipher::{Block, BlockDecryptMut, BlockEncryptMut, KeyIvInit};
use cbc::cipher::block_padding::Pkcs7;
use p256::{EncodedPoint, PublicKey, NistP256};
use rand_core::OsRng;
use elliptic_curve::ecdh::EphemeralSecret;

type Aes256CbcEnc = cbc::Encryptor<aes::Aes256>;
type Aes256CbcDec = cbc::Decryptor<aes::Aes256>;

pub fn generate_key() -> (EphemeralSecret<NistP256>, Vec<u8>) {
    // 生成公钥和私钥
    let secret: EphemeralSecret<NistP256> = EphemeralSecret::random(&mut OsRng);
    let public_key = EncodedPoint::from(secret.public_key());
    (secret, public_key.as_ref().to_vec())
}

pub fn unmarshal_public_key(pk: &[u8]) -> Result<PublicKey, String> {
    PublicKey::from_sec1_bytes(pk).map_err(|e| e.to_string())
}

pub fn generate_shared_secret(private_key: EphemeralSecret<NistP256>, public_key: Vec<u8>) -> Result<Vec<u8>, String> {
    let bob_public = PublicKey::from_sec1_bytes(public_key.as_ref())
        .map_err(|e| e.to_string())?;

    let alice_shared = private_key.diffie_hellman(&bob_public);
    Ok(alice_shared.raw_secret_bytes().to_vec())
}

pub fn aes_encrypt(key: Vec<u8>, iv: Vec<u8>, data: Vec<u8>) -> Result<Vec<u8>, String> {
    let aes256cbc_enc = Aes256CbcEnc::new_from_slices(&key, &iv);
    if aes256cbc_enc.is_err() {
        return Err("new_from_slices error".to_string());
    }
    let aes256cbc_enc = aes256cbc_enc.unwrap();
    let mut buf = [0u8; 48];
    let data_len = data.len();
    buf[..data_len].copy_from_slice(&data);
    let ct = aes256cbc_enc.encrypt_padded_b2b_mut::<Pkcs7>(&data, &mut buf).unwrap();
    Ok(ct.to_vec())
}

pub fn aes_decrypt(key: Vec<u8>, iv: Vec<u8>, data: Vec<u8>) -> Result<Vec<u8>, String> {
    let aes256cbc_dec = Aes256CbcDec::new_from_slices(&key, &iv);
    if aes256cbc_dec.is_err() {
        return Err("new_from_slices error".to_string());
    }
    let aes256cbc_dec = aes256cbc_dec.unwrap();
    let mut buf = [0u8; 48];
    let data_len = data.len();
    buf[..data_len].copy_from_slice(&data);
    let ct = aes256cbc_dec.decrypt_padded_b2b_mut::<Pkcs7>(&data, &mut buf).unwrap();
    Ok(ct.to_vec())
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_ecdh() {
        let (alice_secret, public_secret) = generate_key();
        // hex encode
        let public_secret = hex::encode(public_secret);
        println!("public_secret: {:?}", public_secret);

        let input_public_key: String = "04b9099890b5a5b039732bd8301d4ef92a3bf485f0febcf7dd1d4add87999616bcdecc23b9935d8509d5dc135484c18abf667649f5bc18986dc9a8372d373abb12".to_string();
        let input_public_key: Vec<u8> = hex::decode(input_public_key).unwrap();
        let public_key = unmarshal_public_key(&input_public_key).unwrap();

        let alice_shared = generate_shared_secret(alice_secret, input_public_key).unwrap();
        let alice_shared = hex::encode(alice_shared);
        println!("alice_shared: {:?}", alice_shared);
    }

    #[test]
    fn test_aes() {
        let key = vec![1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
                       17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32];
        let iv = vec![1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16];

        let data = vec![1, 2, 3, 4, 5, 6, 7, 8];
        let ct = aes_encrypt(key.clone(), iv.clone(), data.clone()).unwrap();
        println!("ct: {:?}", ct);
        let pt = aes_decrypt(key.clone(), iv.clone(), ct.clone()).unwrap();
        println!("pt: {:?}", pt);
    }
}