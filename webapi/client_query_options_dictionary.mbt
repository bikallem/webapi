// Do not edit. This file is generated.
// MoonBit type: ClientQueryOptions
// Specifications: service-workers.idl

///|
/// [ClientQueryOptions](https://developer.mozilla.org/en-US/docs/Web/API/ClientQueryOptions)
#external
pub type ClientQueryOptions

///|
pub impl TJsValue for ClientQueryOptions with to_js(self : ClientQueryOptions) -> JsValue = "%identity"

///|
pub impl FromJsAny for ClientQueryOptions with from_js_any(value : JsAny) -> ClientQueryOptions = "%identity"

///|
pub fn ClientQueryOptions::new(
  include_uncontrolled? : Bool = false,
  type_? : ClientType = ClientType::Window,
) -> ClientQueryOptions {
  client_query_options_ffi(
    TJsValue::to_js(include_uncontrolled),
    TJsValue::to_js(type_),
  )
}

///|
pub fn ClientQueryOptions::empty() -> ClientQueryOptions {
  client_query_options_empty_ffi()
}

///|
pub fn ClientQueryOptions::include_uncontrolled(
  self : ClientQueryOptions,
) -> Bool? {
  client_query_options_get_include_uncontrolled_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ClientQueryOptions::type_(self : ClientQueryOptions) -> ClientType? {
  client_query_options_get_type_ffi(TJsValue::to_js(self)).to_option()
}
