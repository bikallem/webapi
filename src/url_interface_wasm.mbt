fn url_new_ffi(url: JsValue, base: JsValue) -> URL = "webapi_URL" "new"

fn url_parse_ffi(url: JsValue, base: JsValue) -> JsValue = "webapi_URL" "parse"

fn url_can_parse_ffi(url: JsValue, base: JsValue) -> JsValue = "webapi_URL" "canParse"

fn url_href_ffi(obj: JsValue) -> JsValue = "webapi_URL" "get_href"

fn url_set_href_ffi(obj: JsValue, href: JsValue) -> Unit = "webapi_URL" "set_href"

fn url_origin_ffi(obj: JsValue) -> JsValue = "webapi_URL" "get_origin"

fn url_protocol_ffi(obj: JsValue) -> JsValue = "webapi_URL" "get_protocol"

fn url_set_protocol_ffi(obj: JsValue, protocol: JsValue) -> Unit = "webapi_URL" "set_protocol"

fn url_username_ffi(obj: JsValue) -> JsValue = "webapi_URL" "get_username"

fn url_set_username_ffi(obj: JsValue, username: JsValue) -> Unit = "webapi_URL" "set_username"

fn url_password_ffi(obj: JsValue) -> JsValue = "webapi_URL" "get_password"

fn url_set_password_ffi(obj: JsValue, password: JsValue) -> Unit = "webapi_URL" "set_password"

fn url_host_ffi(obj: JsValue) -> JsValue = "webapi_URL" "get_host"

fn url_set_host_ffi(obj: JsValue, host: JsValue) -> Unit = "webapi_URL" "set_host"

fn url_hostname_ffi(obj: JsValue) -> JsValue = "webapi_URL" "get_hostname"

fn url_set_hostname_ffi(obj: JsValue, hostname: JsValue) -> Unit = "webapi_URL" "set_hostname"

fn url_port_ffi(obj: JsValue) -> JsValue = "webapi_URL" "get_port"

fn url_set_port_ffi(obj: JsValue, port: JsValue) -> Unit = "webapi_URL" "set_port"

fn url_pathname_ffi(obj: JsValue) -> JsValue = "webapi_URL" "get_pathname"

fn url_set_pathname_ffi(obj: JsValue, pathname: JsValue) -> Unit = "webapi_URL" "set_pathname"

fn url_search_ffi(obj: JsValue) -> JsValue = "webapi_URL" "get_search"

fn url_set_search_ffi(obj: JsValue, search: JsValue) -> Unit = "webapi_URL" "set_search"

fn url_search_params_ffi(obj: JsValue) -> JsValue = "webapi_URL" "get_searchParams"

fn url_hash_ffi(obj: JsValue) -> JsValue = "webapi_URL" "get_hash"

fn url_set_hash_ffi(obj: JsValue, hash: JsValue) -> Unit = "webapi_URL" "set_hash"

fn url_to_json_ffi(obj: JsValue) -> JsValue = "webapi_URL" "toJSON"

fn url_create_object_url_ffi(obj: JsValue) -> JsValue = "webapi_URL" "createObjectURL"

fn url_revoke_object_url_ffi(url: JsValue) -> Unit = "webapi_URL" "revokeObjectURL"