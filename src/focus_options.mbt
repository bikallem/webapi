// Auto-generated MoonBit bindings for FocusOptions dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary FocusOptions {
//   boolean preventScroll = false;
//   boolean focusVisible;
// };

///|
#external
pub type FocusOptions

///|
pub impl TJsValue for FocusOptions with to_js(self : FocusOptions) -> JsValue = "%identity"

///|
fn focus_options_ffi(
  prevent_scroll : JsValue,
  focus_visible : JsValue,
) -> FocusOptions = "webapi_FocusOptions" "new"

///|
pub fn FocusOptions::new(
  prevent_scroll? : Bool = false,
  focus_visible? : Bool,
) -> FocusOptions {
  let focus_visible_js = opt_to_js(focus_visible)
  focus_options_ffi(TJsValue::to_js(prevent_scroll), focus_visible_js)
}

///|
pub fn FocusOptions::empty() -> FocusOptions = "webapi_Dictionary" "empty"
