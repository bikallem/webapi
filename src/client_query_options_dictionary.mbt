// Do not edit. This file is generated.
// MoonBit type: ClientQueryOptions
// Specifications: service-workers.idl

/// [ClientQueryOptions](https://developer.mozilla.org/en-US/docs/Web/API/ClientQueryOptions)
#external
pub type ClientQueryOptions

pub impl TJsValue for ClientQueryOptions with to_js(self: ClientQueryOptions) -> JsValue = "%identity"

pub impl FromJsAny for ClientQueryOptions with from_js_any(value : JsAny) -> ClientQueryOptions = "%identity"

pub fn ClientQueryOptions::new(include_uncontrolled? : Bool, 
type_? : ClientType) -> ClientQueryOptions {
  client_query_options_ffi(opt_to_js(include_uncontrolled), opt_to_js(type_))
}

pub fn ClientQueryOptions::empty() -> ClientQueryOptions { client_query_options_empty_ffi() }

pub fn ClientQueryOptions::include_uncontrolled(self : ClientQueryOptions) -> Bool? {
  client_query_options_get_include_uncontrolled_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn ClientQueryOptions::type_(self : ClientQueryOptions) -> ClientType? {
  client_query_options_get_type_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
extern "js" fn client_query_options_ffi(include_uncontrolled: JsValue, type_: JsValue) -> ClientQueryOptions = 
#|(includeUncontrolled, type) => {
#|  const obj = {};
#|  if (includeUncontrolled !== undefined) obj.includeUncontrolled = includeUncontrolled;
#|  if (type !== undefined) obj.type = type;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn client_query_options_empty_ffi() -> ClientQueryOptions = "() => {}"

#cfg(target="js")
extern "js" fn client_query_options_get_include_uncontrolled_ffi(obj: JsValue) -> JsValue = "(obj) => obj.includeUncontrolled"

#cfg(target="js")
extern "js" fn client_query_options_get_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.type"

#cfg(target="wasm-gc")
fn client_query_options_ffi(include_uncontrolled: JsValue, type_: JsValue) -> ClientQueryOptions = "webapi_ClientQueryOptions" "new"

#cfg(target="wasm-gc")
fn client_query_options_empty_ffi() -> ClientQueryOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn client_query_options_get_include_uncontrolled_ffi(obj: JsValue) -> JsValue = "webapi_ClientQueryOptions" "get_includeUncontrolled"

#cfg(target="wasm-gc")
fn client_query_options_get_type_ffi(obj: JsValue) -> JsValue = "webapi_ClientQueryOptions" "get_type"