extern "js" fn request_init_ffi(method_: JsValue, headers: JsValue, body: JsValue, referrer: JsValue, referrer_policy: JsValue, mode: JsValue, credentials: JsValue, cache: JsValue, redirect: JsValue, integrity: JsValue, keepalive: JsValue, signal: JsValue, duplex: JsValue, priority: JsValue, window: JsValue) -> RequestInit = 
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

extern "js" fn request_init_empty_ffi() -> RequestInit = "() => {}"