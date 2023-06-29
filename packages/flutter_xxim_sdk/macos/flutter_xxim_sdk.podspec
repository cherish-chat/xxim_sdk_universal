release_tag_name = 'xxim_sdk-v0.0.2' # generated; do not edit

# We cannot distribute the XCFramework alongside the library directly,
# so we have to fetch the correct version here.
framework_name = 'XximSdk.xcframework'
remote_zip_name = "#{framework_name}.zip"
url = "https://github.com/cherish-chat/xxim_sdk_universal/releases/download/#{release_tag_name}/#{remote_zip_name}"
local_zip_name = "#{release_tag_name}.zip"
# 正式环境使用该方法
`
cd Frameworks
rm -rf #{framework_name}

echo "Downloading #{url}..."

if [ ! -f #{local_zip_name} ]
then
  curl -L #{url} -o #{local_zip_name}
fi

unzip #{local_zip_name}
cd -
`

Pod::Spec.new do |spec|
  spec.name          = 'flutter_xxim_sdk'
  spec.version       = '0.0.2'
  spec.license       = { :file => '../LICENSE' }
  spec.homepage      = 'https://github.com/cherish-chat/xxim_sdk_universal'
  spec.authors       = { 'Your Name' => 'your-email@example.com' }
  spec.summary       = 'iOS/macOS Flutter bindings for xxim_sdk'

  spec.source              = { :path => '.' }
  spec.source_files        = 'Classes/**/*'
  spec.public_header_files = 'Classes/**/*.h'
  spec.vendored_frameworks = "Frameworks/#{framework_name}"

  spec.ios.deployment_target = '11.0'
  spec.osx.deployment_target = '10.11'
end
