extern "js" fn css_escape_ffi_js(ident: JsValue) -> JsValue = "(ident) => CSS.escape(ident)"

///|
fn css_escape_ffi(ident: JsValue) -> CSSOMString {
  css_escape_ffi_js(ident).unsafe_cast()
}