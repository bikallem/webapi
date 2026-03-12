fn notification_options_ffi(dir: JsValue, lang: JsValue, body: JsValue, navigate: JsValue, tag: JsValue, image: JsValue, icon: JsValue, badge: JsValue, vibrate: JsValue, timestamp: JsValue, renotify: JsValue, silent: JsValue, require_interaction: JsValue, data: JsValue, actions: JsValue) -> NotificationOptions = "webapi_NotificationOptions" "new"

fn notification_options_empty_ffi() -> NotificationOptions = "webapi_Dictionary" "empty"

fn notification_options_get_dir_ffi(obj: JsValue) -> JsValue = "webapi_NotificationOptions" "get_dir"

fn notification_options_get_lang_ffi(obj: JsValue) -> JsValue = "webapi_NotificationOptions" "get_lang"

fn notification_options_get_body_ffi(obj: JsValue) -> JsValue = "webapi_NotificationOptions" "get_body"

fn notification_options_get_navigate_ffi(obj: JsValue) -> JsValue = "webapi_NotificationOptions" "get_navigate"

fn notification_options_get_tag_ffi(obj: JsValue) -> JsValue = "webapi_NotificationOptions" "get_tag"

fn notification_options_get_image_ffi(obj: JsValue) -> JsValue = "webapi_NotificationOptions" "get_image"

fn notification_options_get_icon_ffi(obj: JsValue) -> JsValue = "webapi_NotificationOptions" "get_icon"

fn notification_options_get_badge_ffi(obj: JsValue) -> JsValue = "webapi_NotificationOptions" "get_badge"

fn notification_options_get_vibrate_ffi(obj: JsValue) -> JsValue = "webapi_NotificationOptions" "get_vibrate"

fn notification_options_get_timestamp_ffi(obj: JsValue) -> JsValue = "webapi_NotificationOptions" "get_timestamp"

fn notification_options_get_renotify_ffi(obj: JsValue) -> JsValue = "webapi_NotificationOptions" "get_renotify"

fn notification_options_get_silent_ffi(obj: JsValue) -> JsValue = "webapi_NotificationOptions" "get_silent"

fn notification_options_get_require_interaction_ffi(obj: JsValue) -> JsValue = "webapi_NotificationOptions" "get_requireInteraction"

fn notification_options_get_data_ffi(obj: JsValue) -> JsValue = "webapi_NotificationOptions" "get_data"

fn notification_options_get_actions_ffi(obj: JsValue) -> JsValue = "webapi_NotificationOptions" "get_actions"