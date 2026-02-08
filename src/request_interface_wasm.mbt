fn request_new_ffi(input: JsValue, init: JsValue) -> Request = "webapi_Request" "new"

fn request_method_ffi(obj: JsValue) -> JsValue = "webapi_Request" "get_method"

fn request_url_ffi(obj: JsValue) -> JsValue = "webapi_Request" "get_url"

fn request_headers_ffi(obj: JsValue) -> JsValue = "webapi_Request" "get_headers"

fn request_destination_ffi(obj: JsValue) -> JsValue = "webapi_Request" "get_destination"

fn request_referrer_ffi(obj: JsValue) -> JsValue = "webapi_Request" "get_referrer"

fn request_referrer_policy_ffi(obj: JsValue) -> JsValue = "webapi_Request" "get_referrerPolicy"

fn request_mode_ffi(obj: JsValue) -> JsValue = "webapi_Request" "get_mode"

fn request_credentials_ffi(obj: JsValue) -> JsValue = "webapi_Request" "get_credentials"

fn request_cache_ffi(obj: JsValue) -> JsValue = "webapi_Request" "get_cache"

fn request_redirect_ffi(obj: JsValue) -> JsValue = "webapi_Request" "get_redirect"

fn request_integrity_ffi(obj: JsValue) -> JsValue = "webapi_Request" "get_integrity"

fn request_keepalive_ffi(obj: JsValue) -> JsValue = "webapi_Request" "get_keepalive"

fn request_is_reload_navigation_ffi(obj: JsValue) -> JsValue = "webapi_Request" "get_isReloadNavigation"

fn request_is_history_navigation_ffi(obj: JsValue) -> JsValue = "webapi_Request" "get_isHistoryNavigation"

fn request_signal_ffi(obj: JsValue) -> JsValue = "webapi_Request" "get_signal"

fn request_duplex_ffi(obj: JsValue) -> JsValue = "webapi_Request" "get_duplex"

fn request_clone_ffi(obj: JsValue) -> JsValue = "webapi_Request" "clone"

fn request_body_ffi(obj: JsValue) -> JsValue = "webapi_Request" "get_body"

fn request_body_used_ffi(obj: JsValue) -> JsValue = "webapi_Request" "get_bodyUsed"

fn request_array_buffer_ffi(obj: JsValue) -> JsValue = "webapi_Request" "arrayBuffer"

fn request_blob_ffi(obj: JsValue) -> JsValue = "webapi_Request" "blob"

fn request_bytes_ffi(obj: JsValue) -> JsValue = "webapi_Request" "bytes"

fn request_form_data_ffi(obj: JsValue) -> JsValue = "webapi_Request" "formData"

fn request_json_ffi(obj: JsValue) -> JsValue = "webapi_Request" "json"

fn request_text_ffi(obj: JsValue) -> JsValue = "webapi_Request" "text"