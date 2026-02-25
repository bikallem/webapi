///|
extern "js" fn request_init_ffi(
  method_ : JsValue,
  headers : JsValue,
  body : JsValue,
  referrer : JsValue,
  referrer_policy : JsValue,
  mode : JsValue,
  credentials : JsValue,
  cache : JsValue,
  redirect : JsValue,
  integrity : JsValue,
  keepalive : JsValue,
  signal : JsValue,
  duplex : JsValue,
  priority : JsValue,
  window : JsValue,
) -> RequestInit =
  #|(method, headers, body, referrer, referrerPolicy, mode, credentials, cache, redirect, integrity, keepalive, signal, duplex, priority, window) => {
  #|  const obj = {};
  #|  if (method !== undefined) obj.method = method;
  #|  if (headers !== undefined) obj.headers = headers;
  #|  if (body !== undefined) obj.body = body;
  #|  if (referrer !== undefined) obj.referrer = referrer;
  #|  if (referrerPolicy !== undefined) obj.referrerPolicy = referrerPolicy;
  #|  if (mode !== undefined) obj.mode = mode;
  #|  if (credentials !== undefined) obj.credentials = credentials;
  #|  if (cache !== undefined) obj.cache = cache;
  #|  if (redirect !== undefined) obj.redirect = redirect;
  #|  if (integrity !== undefined) obj.integrity = integrity;
  #|  if (keepalive !== undefined) obj.keepalive = keepalive;
  #|  if (signal !== undefined) obj.signal = signal;
  #|  if (duplex !== undefined) obj.duplex = duplex;
  #|  if (priority !== undefined) obj.priority = priority;
  #|  if (window !== undefined) obj.window = window;
  #|  return obj;
  #|}

///|
extern "js" fn request_init_empty_ffi() -> RequestInit = "() => {}"

///|
extern "js" fn request_init_get_method_ffi(obj : JsValue) -> JsValue = "(obj) => obj.method"

///|
extern "js" fn request_init_get_headers_ffi(obj : JsValue) -> JsValue = "(obj) => obj.headers"

///|
extern "js" fn request_init_get_body_ffi(obj : JsValue) -> JsValue = "(obj) => obj.body"

///|
extern "js" fn request_init_get_referrer_ffi(obj : JsValue) -> JsValue = "(obj) => obj.referrer"

///|
extern "js" fn request_init_get_referrer_policy_ffi(obj : JsValue) -> JsValue = "(obj) => obj.referrerPolicy"

///|
extern "js" fn request_init_get_mode_ffi(obj : JsValue) -> JsValue = "(obj) => obj.mode"

///|
extern "js" fn request_init_get_credentials_ffi(obj : JsValue) -> JsValue = "(obj) => obj.credentials"

///|
extern "js" fn request_init_get_cache_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cache"

///|
extern "js" fn request_init_get_redirect_ffi(obj : JsValue) -> JsValue = "(obj) => obj.redirect"

///|
extern "js" fn request_init_get_integrity_ffi(obj : JsValue) -> JsValue = "(obj) => obj.integrity"

///|
extern "js" fn request_init_get_keepalive_ffi(obj : JsValue) -> JsValue = "(obj) => obj.keepalive"

///|
extern "js" fn request_init_get_signal_ffi(obj : JsValue) -> JsValue = "(obj) => obj.signal"

///|
extern "js" fn request_init_get_duplex_ffi(obj : JsValue) -> JsValue = "(obj) => obj.duplex"

///|
extern "js" fn request_init_get_priority_ffi(obj : JsValue) -> JsValue = "(obj) => obj.priority"

///|
extern "js" fn request_init_get_window_ffi(obj : JsValue) -> JsValue = "(obj) => obj.window"
