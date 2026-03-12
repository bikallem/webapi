extern "js" fn url_pattern_init_ffi(protocol: JsValue, username: JsValue, password: JsValue, hostname: JsValue, port: JsValue, pathname: JsValue, search: JsValue, hash: JsValue, base_url: JsValue) -> URLPatternInit = 
#|(protocol, username, password, hostname, port, pathname, search, hash, baseURL) => {
#|  const obj = {};
#|  if (protocol !== undefined) obj.protocol = protocol;
#|  if (username !== undefined) obj.username = username;
#|  if (password !== undefined) obj.password = password;
#|  if (hostname !== undefined) obj.hostname = hostname;
#|  if (port !== undefined) obj.port = port;
#|  if (pathname !== undefined) obj.pathname = pathname;
#|  if (search !== undefined) obj.search = search;
#|  if (hash !== undefined) obj.hash = hash;
#|  if (baseURL !== undefined) obj.baseURL = baseURL;
#|  return obj;
#|}

extern "js" fn url_pattern_init_empty_ffi() -> URLPatternInit = "() => {}"

extern "js" fn url_pattern_init_get_protocol_ffi(obj: JsValue) -> JsValue = "(obj) => obj.protocol"

extern "js" fn url_pattern_init_get_username_ffi(obj: JsValue) -> JsValue = "(obj) => obj.username"

extern "js" fn url_pattern_init_get_password_ffi(obj: JsValue) -> JsValue = "(obj) => obj.password"

extern "js" fn url_pattern_init_get_hostname_ffi(obj: JsValue) -> JsValue = "(obj) => obj.hostname"

extern "js" fn url_pattern_init_get_port_ffi(obj: JsValue) -> JsValue = "(obj) => obj.port"

extern "js" fn url_pattern_init_get_pathname_ffi(obj: JsValue) -> JsValue = "(obj) => obj.pathname"

extern "js" fn url_pattern_init_get_search_ffi(obj: JsValue) -> JsValue = "(obj) => obj.search"

extern "js" fn url_pattern_init_get_hash_ffi(obj: JsValue) -> JsValue = "(obj) => obj.hash"

extern "js" fn url_pattern_init_get_base_url_ffi(obj: JsValue) -> JsValue = "(obj) => obj.baseURL"