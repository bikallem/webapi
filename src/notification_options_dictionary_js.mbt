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
