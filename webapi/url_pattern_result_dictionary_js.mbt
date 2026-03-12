extern "js" fn url_pattern_result_ffi(inputs: JsValue, protocol: JsValue, username: JsValue, password: JsValue, hostname: JsValue, port: JsValue, pathname: JsValue, search: JsValue, hash: JsValue) -> URLPatternResult = 
#|(inputs, protocol, username, password, hostname, port, pathname, search, hash) => {
#|  const obj = {};
#|  if (inputs !== undefined) obj.inputs = inputs;
#|  if (protocol !== undefined) obj.protocol = protocol;
#|  if (username !== undefined) obj.username = username;
#|  if (password !== undefined) obj.password = password;
#|  if (hostname !== undefined) obj.hostname = hostname;
#|  if (port !== undefined) obj.port = port;
#|  if (pathname !== undefined) obj.pathname = pathname;
#|  if (search !== undefined) obj.search = search;
#|  if (hash !== undefined) obj.hash = hash;
#|  return obj;
#|}

extern "js" fn url_pattern_result_empty_ffi() -> URLPatternResult = "() => {}"

extern "js" fn url_pattern_result_get_inputs_ffi(obj: JsValue) -> JsValue = "(obj) => obj.inputs"

extern "js" fn url_pattern_result_get_protocol_ffi(obj: JsValue) -> JsValue = "(obj) => obj.protocol"

extern "js" fn url_pattern_result_get_username_ffi(obj: JsValue) -> JsValue = "(obj) => obj.username"

extern "js" fn url_pattern_result_get_password_ffi(obj: JsValue) -> JsValue = "(obj) => obj.password"

extern "js" fn url_pattern_result_get_hostname_ffi(obj: JsValue) -> JsValue = "(obj) => obj.hostname"

extern "js" fn url_pattern_result_get_port_ffi(obj: JsValue) -> JsValue = "(obj) => obj.port"

extern "js" fn url_pattern_result_get_pathname_ffi(obj: JsValue) -> JsValue = "(obj) => obj.pathname"

extern "js" fn url_pattern_result_get_search_ffi(obj: JsValue) -> JsValue = "(obj) => obj.search"

extern "js" fn url_pattern_result_get_hash_ffi(obj: JsValue) -> JsValue = "(obj) => obj.hash"