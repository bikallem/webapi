///|
extern "js" fn notification_options_ffi(
  dir : JsValue,
  lang : JsValue,
  body : JsValue,
  navigate : JsValue,
  tag : JsValue,
  image : JsValue,
  icon : JsValue,
  badge : JsValue,
  vibrate : JsValue,
  timestamp : JsValue,
  renotify : JsValue,
  silent : JsValue,
  require_interaction : JsValue,
  data : JsValue,
  actions : JsValue,
) -> NotificationOptions =
  #|(dir, lang, body, navigate, tag, image, icon, badge, vibrate, timestamp, renotify, silent, requireInteraction, data, actions) => {
  #|  const obj = {};
  #|  if (dir !== undefined) obj.dir = dir;
  #|  if (lang !== undefined) obj.lang = lang;
  #|  if (body !== undefined) obj.body = body;
  #|  if (navigate !== undefined) obj.navigate = navigate;
  #|  if (tag !== undefined) obj.tag = tag;
  #|  if (image !== undefined) obj.image = image;
  #|  if (icon !== undefined) obj.icon = icon;
  #|  if (badge !== undefined) obj.badge = badge;
  #|  if (vibrate !== undefined) obj.vibrate = vibrate;
  #|  if (timestamp !== undefined) obj.timestamp = timestamp;
  #|  if (renotify !== undefined) obj.renotify = renotify;
  #|  if (silent !== undefined) obj.silent = silent;
  #|  if (requireInteraction !== undefined) obj.requireInteraction = requireInteraction;
  #|  if (data !== undefined) obj.data = data;
  #|  if (actions !== undefined) obj.actions = actions;
  #|  return obj;
  #|}

///|
extern "js" fn notification_options_empty_ffi() -> NotificationOptions = "() => {}"

///|
extern "js" fn notification_options_get_dir_ffi(obj : JsValue) -> JsValue = "(obj) => obj.dir"

///|
extern "js" fn notification_options_get_lang_ffi(obj : JsValue) -> JsValue = "(obj) => obj.lang"

///|
extern "js" fn notification_options_get_body_ffi(obj : JsValue) -> JsValue = "(obj) => obj.body"

///|
extern "js" fn notification_options_get_navigate_ffi(obj : JsValue) -> JsValue = "(obj) => obj.navigate"

///|
extern "js" fn notification_options_get_tag_ffi(obj : JsValue) -> JsValue = "(obj) => obj.tag"

///|
extern "js" fn notification_options_get_image_ffi(obj : JsValue) -> JsValue = "(obj) => obj.image"

///|
extern "js" fn notification_options_get_icon_ffi(obj : JsValue) -> JsValue = "(obj) => obj.icon"

///|
extern "js" fn notification_options_get_badge_ffi(obj : JsValue) -> JsValue = "(obj) => obj.badge"

///|
extern "js" fn notification_options_get_vibrate_ffi(obj : JsValue) -> JsValue = "(obj) => obj.vibrate"

///|
extern "js" fn notification_options_get_timestamp_ffi(obj : JsValue) -> JsValue = "(obj) => obj.timestamp"

///|
extern "js" fn notification_options_get_renotify_ffi(obj : JsValue) -> JsValue = "(obj) => obj.renotify"

///|
extern "js" fn notification_options_get_silent_ffi(obj : JsValue) -> JsValue = "(obj) => obj.silent"

///|
extern "js" fn notification_options_get_require_interaction_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.requireInteraction"

///|
extern "js" fn notification_options_get_data_ffi(obj : JsValue) -> JsValue = "(obj) => obj.data"

///|
extern "js" fn notification_options_get_actions_ffi(obj : JsValue) -> JsValue = "(obj) => obj.actions"
