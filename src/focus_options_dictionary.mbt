// Do not edit. This file is generated.
// MoonBit type: FocusOptions
// Specifications: html.idl

///|
/// [FocusOptions](https://developer.mozilla.org/en-US/docs/Web/API/FocusOptions)
#external
pub type FocusOptions

///|
pub impl TJsValue for FocusOptions with to_js(self : FocusOptions) -> JsValue = "%identity"

///|
pub impl FromJsAny for FocusOptions with from_js_any(value : JsAny) -> FocusOptions = "%identity"

///|
pub fn FocusOptions::new(
  prevent_scroll? : Bool = false,
  focus_visible? : Bool,
) -> FocusOptions {
  focus_options_ffi(TJsValue::to_js(prevent_scroll), opt_to_js(focus_visible))
}

///|
pub fn FocusOptions::empty() -> FocusOptions {
  focus_options_empty_ffi()
}

///|
pub fn FocusOptions::prevent_scroll(self : FocusOptions) -> Bool? {
  let result = focus_options_get_prevent_scroll_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn FocusOptions::focus_visible(self : FocusOptions) -> Bool? {
  let result = focus_options_get_focus_visible_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
