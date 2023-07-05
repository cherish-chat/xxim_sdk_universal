#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
typedef struct _Dart_Handle* Dart_Handle;

typedef struct DartCObject DartCObject;

typedef int64_t DartPort;

typedef bool (*DartPostCObjectFnType)(DartPort port_id, void *message);

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef struct wire_StringList {
  struct wire_uint_8_list **ptr;
  int32_t len;
} wire_StringList;

typedef struct DartCObject *WireSyncReturn;

void store_dart_post_cobject(DartPostCObjectFnType ptr);

Dart_Handle get_dart_object(uintptr_t ptr);

void drop_dart_object(uintptr_t ptr);

uintptr_t new_dart_opaque(Dart_Handle handle);

intptr_t init_frb_dart_api_dl(void *obj);

void wire_new_instance(int64_t port_, struct wire_uint_8_list *instance_id);

void wire_destroy_instance(int64_t port_, struct wire_uint_8_list *instance_id);

void wire_init_instance(int64_t port_,
                        struct wire_uint_8_list *instance_id,
                        int32_t *net,
                        struct wire_uint_8_list *host,
                        uint16_t port,
                        bool ssl,
                        struct wire_StringList *ice_servers,
                        struct wire_uint_8_list *app_id,
                        struct wire_uint_8_list *install_id,
                        int32_t platform,
                        struct wire_uint_8_list *device_model,
                        struct wire_uint_8_list *os_version,
                        int32_t language,
                        int32_t request_timeout_millisecond,
                        struct wire_uint_8_list *db_dir,
                        struct wire_uint_8_list *custom_header,
                        int32_t keep_alive_second,
                        int32_t log_level);

void wire_preset_stream(int64_t port_, struct wire_uint_8_list *instance_id);

void wire_wait_stream_ready(int64_t port_, struct wire_uint_8_list *instance_id);

void wire_set_login_info(int64_t port_,
                         struct wire_uint_8_list *instance_id,
                         struct wire_uint_8_list *token,
                         struct wire_uint_8_list *user_id);

void wire_unset_login_info(int64_t port_, struct wire_uint_8_list *instance_id);

void wire_user_register(int64_t port_,
                        struct wire_uint_8_list *instance_id,
                        struct wire_uint_8_list *protobuf);

void wire_user_access_token(int64_t port_,
                            struct wire_uint_8_list *instance_id,
                            struct wire_uint_8_list *protobuf);

void wire_create_robot(int64_t port_,
                       struct wire_uint_8_list *instance_id,
                       struct wire_uint_8_list *protobuf);

void wire_refresh_user_access_token(int64_t port_,
                                    struct wire_uint_8_list *instance_id,
                                    struct wire_uint_8_list *protobuf);

void wire_revoke_user_access_token(int64_t port_,
                                   struct wire_uint_8_list *instance_id,
                                   struct wire_uint_8_list *protobuf);

void wire_friend_apply(int64_t port_,
                       struct wire_uint_8_list *instance_id,
                       struct wire_uint_8_list *protobuf);

void wire_list_friend_apply(int64_t port_,
                            struct wire_uint_8_list *instance_id,
                            struct wire_uint_8_list *protobuf);

void wire_friend_apply_handle(int64_t port_,
                              struct wire_uint_8_list *instance_id,
                              struct wire_uint_8_list *protobuf);

void wire_group_create(int64_t port_,
                       struct wire_uint_8_list *instance_id,
                       struct wire_uint_8_list *protobuf);

void wire_message_send(int64_t port_,
                       struct wire_uint_8_list *instance_id,
                       struct wire_uint_8_list *protobuf);

void wire_message_batch_send(int64_t port_,
                             struct wire_uint_8_list *instance_id,
                             struct wire_uint_8_list *protobuf);

void wire_list_notice(int64_t port_,
                      struct wire_uint_8_list *instance_id,
                      struct wire_uint_8_list *protobuf);

struct wire_StringList *new_StringList_0(int32_t len);

int32_t *new_box_autoadd_i32_0(int32_t value);

struct wire_uint_8_list *new_uint_8_list_0(int32_t len);

void free_WireSyncReturn(WireSyncReturn ptr);

static int64_t dummy_method_to_enforce_bundling(void) {
    int64_t dummy_var = 0;
    dummy_var ^= ((int64_t) (void*) wire_new_instance);
    dummy_var ^= ((int64_t) (void*) wire_destroy_instance);
    dummy_var ^= ((int64_t) (void*) wire_init_instance);
    dummy_var ^= ((int64_t) (void*) wire_preset_stream);
    dummy_var ^= ((int64_t) (void*) wire_wait_stream_ready);
    dummy_var ^= ((int64_t) (void*) wire_set_login_info);
    dummy_var ^= ((int64_t) (void*) wire_unset_login_info);
    dummy_var ^= ((int64_t) (void*) wire_user_register);
    dummy_var ^= ((int64_t) (void*) wire_user_access_token);
    dummy_var ^= ((int64_t) (void*) wire_create_robot);
    dummy_var ^= ((int64_t) (void*) wire_refresh_user_access_token);
    dummy_var ^= ((int64_t) (void*) wire_revoke_user_access_token);
    dummy_var ^= ((int64_t) (void*) wire_friend_apply);
    dummy_var ^= ((int64_t) (void*) wire_list_friend_apply);
    dummy_var ^= ((int64_t) (void*) wire_friend_apply_handle);
    dummy_var ^= ((int64_t) (void*) wire_group_create);
    dummy_var ^= ((int64_t) (void*) wire_message_send);
    dummy_var ^= ((int64_t) (void*) wire_message_batch_send);
    dummy_var ^= ((int64_t) (void*) wire_list_notice);
    dummy_var ^= ((int64_t) (void*) new_StringList_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_i32_0);
    dummy_var ^= ((int64_t) (void*) new_uint_8_list_0);
    dummy_var ^= ((int64_t) (void*) free_WireSyncReturn);
    dummy_var ^= ((int64_t) (void*) store_dart_post_cobject);
    dummy_var ^= ((int64_t) (void*) get_dart_object);
    dummy_var ^= ((int64_t) (void*) drop_dart_object);
    dummy_var ^= ((int64_t) (void*) new_dart_opaque);
    return dummy_var;
}