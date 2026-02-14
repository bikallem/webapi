// Do not edit. This file is generated.
// MoonBit type: CheckVisibilityOptions
// Specifications: cssom-view.idl

///|
/// [CheckVisibilityOptions](https://developer.mozilla.org/en-US/docs/Web/API/CheckVisibilityOptions)
#external
pub type CheckVisibilityOptions

///|
pub impl TJsValue for CheckVisibilityOptions with to_js(
  self : CheckVisibilityOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for CheckVisibilityOptions with from_js_any(value : JsAny) -> CheckVisibilityOptions = "%identity"

///|
pub fn CheckVisibilityOptions::new(
  check_opacity? : Bool,
  check_visibility_css? : Bool,
  content_visibility_auto? : Bool,
  opacity_property? : Bool,
  visibility_property? : Bool,
) -> CheckVisibilityOptions {
  check_visibility_options_ffi(
    opt_to_js(check_opacity),
    opt_to_js(check_visibility_css),
    opt_to_js(content_visibility_auto),
    opt_to_js(opacity_property),
    opt_to_js(visibility_property),
  )
}

///|
pub fn CheckVisibilityOptions::empty() -> CheckVisibilityOptions {
  check_visibility_options_empty_ffi()
}

///|
pub fn CheckVisibilityOptions::check_opacity(
  self : CheckVisibilityOptions,
) -> Bool? {
  let result = check_visibility_options_get_check_opacity_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn CheckVisibilityOptions::check_visibility_css(
  self : CheckVisibilityOptions,
) -> Bool? {
  let result = check_visibility_options_get_check_visibility_css_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn CheckVisibilityOptions::content_visibility_auto(
  self : CheckVisibilityOptions,
) -> Bool? {
  let result = check_visibility_options_get_content_visibility_auto_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn CheckVisibilityOptions::opacity_property(
  self : CheckVisibilityOptions,
) -> Bool? {
  let result = check_visibility_options_get_opacity_property_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn CheckVisibilityOptions::visibility_property(
  self : CheckVisibilityOptions,
) -> Bool? {
  let result = check_visibility_options_get_visibility_property_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
