fn css_escape_ffi_wasm(ident: JsValue) -> JsValue = "webapi_CSS" "escape"

///|
fn css_escape_ffi(ident: JsValue) -> CSSOMString {
  css_escape_ffi_wasm(ident).unsafe_cast()
}