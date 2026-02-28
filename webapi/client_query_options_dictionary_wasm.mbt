///|
fn client_query_options_ffi(
  include_uncontrolled : JsValue,
  type_ : JsValue,
) -> ClientQueryOptions = "webapi_ClientQueryOptions" "new"

///|
fn client_query_options_empty_ffi() -> ClientQueryOptions = "webapi_Dictionary" "empty"

///|
fn client_query_options_get_include_uncontrolled_ffi(obj : JsValue) -> JsValue = "webapi_ClientQueryOptions" "get_includeUncontrolled"

///|
fn client_query_options_get_type_ffi(obj : JsValue) -> JsValue = "webapi_ClientQueryOptions" "get_type"
