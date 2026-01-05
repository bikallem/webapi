// Do not edit. This file is generated.
// MoonBit type: RequestInit
// Specifications: fetch.idl

///|
#external
pub type RequestInit

///|
pub impl TJsValue for RequestInit with to_js(self : RequestInit) -> JsValue = "%identity"

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
pub fn RequestInit::new(
  method_? : String,
  headers? : HeadersInit,
  body? : BodyInit,
  referrer? : String,
  referrer_policy? : ReferrerPolicy,
  mode? : RequestMode,
  credentials? : RequestCredentials,
  cache? : RequestCache,
  redirect? : RequestRedirect,
  integrity? : String,
  keepalive? : Bool,
  signal? : &TAbortSignal,
  duplex? : RequestDuplex,
  priority? : RequestPriority,
  window? : JsValue,
) -> RequestInit {
  request_init_ffi(
    opt_to_js(method_),
    opt_to_js(headers),
    opt_to_js(body),
    opt_to_js(referrer),
    opt_to_js(referrer_policy),
    opt_to_js(mode),
    opt_to_js(credentials),
    opt_to_js(cache),
    opt_to_js(redirect),
    opt_to_js(integrity),
    opt_to_js(keepalive),
    opt_to_js(signal),
    opt_to_js(duplex),
    opt_to_js(priority),
    opt_to_js(window),
  )
}

///|
extern "js" fn request_init_empty_ffi() -> RequestInit = "() => {}"

///|
pub fn RequestInit::empty() -> RequestInit {
  request_init_empty_ffi()
}
