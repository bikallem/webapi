extern "js" fn request_new_ffi(input: JsValue, init: JsValue) -> Request = "(input, init) => new Request(input, init)"

extern "js" fn request_method_ffi(obj: JsValue) -> JsValue = "(obj) => obj.method"

extern "js" fn request_url_ffi(obj: JsValue) -> JsValue = "(obj) => obj.url"

extern "js" fn request_headers_ffi(obj: JsValue) -> JsValue = "(obj) => obj.headers"

extern "js" fn request_destination_ffi(obj: JsValue) -> JsValue = "(obj) => obj.destination"

extern "js" fn request_referrer_ffi(obj: JsValue) -> JsValue = "(obj) => obj.referrer"

extern "js" fn request_referrer_policy_ffi(obj: JsValue) -> JsValue = "(obj) => obj.referrerPolicy"

extern "js" fn request_mode_ffi(obj: JsValue) -> JsValue = "(obj) => obj.mode"

extern "js" fn request_credentials_ffi(obj: JsValue) -> JsValue = "(obj) => obj.credentials"

extern "js" fn request_cache_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cache"

extern "js" fn request_redirect_ffi(obj: JsValue) -> JsValue = "(obj) => obj.redirect"

extern "js" fn request_integrity_ffi(obj: JsValue) -> JsValue = "(obj) => obj.integrity"

extern "js" fn request_keepalive_ffi(obj: JsValue) -> JsValue = "(obj) => obj.keepalive"

extern "js" fn request_is_reload_navigation_ffi(obj: JsValue) -> JsValue = "(obj) => obj.isReloadNavigation"

extern "js" fn request_is_history_navigation_ffi(obj: JsValue) -> JsValue = "(obj) => obj.isHistoryNavigation"

extern "js" fn request_signal_ffi(obj: JsValue) -> JsValue = "(obj) => obj.signal"

extern "js" fn request_duplex_ffi(obj: JsValue) -> JsValue = "(obj) => obj.duplex"

extern "js" fn request_clone_ffi(obj: JsValue) -> JsValue = "(obj) => obj.clone()"

extern "js" fn request_body_ffi(obj: JsValue) -> JsValue = "(obj) => obj.body"

extern "js" fn request_body_used_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bodyUsed"

extern "js" fn request_array_buffer_ffi(obj: JsValue) -> JsValue = "(obj) => obj.arrayBuffer()"

extern "js" fn request_blob_ffi(obj: JsValue) -> JsValue = "(obj) => obj.blob()"

extern "js" fn request_bytes_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bytes()"

extern "js" fn request_form_data_ffi(obj: JsValue) -> JsValue = "(obj) => obj.formData()"

extern "js" fn request_json_ffi(obj: JsValue) -> JsValue = "(obj) => obj.json()"

extern "js" fn request_text_ffi(obj: JsValue) -> JsValue = "(obj) => obj.text()"