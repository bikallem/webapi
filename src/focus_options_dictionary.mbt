// Auto-generated MoonBit bindings for FocusOptions dictionary
// Do not edit manually

#external
pub type FocusOptions

pub impl TJsValue for FocusOptions with to_js(self: FocusOptions) -> JsValue = "%identity"


fn focus_options_ffi(prevent_scroll : JsValue, focus_visible : JsValue) -> FocusOptions = "webapi_FocusOptions" "new"


pub fn FocusOptions::new(
  prevent_scroll? : Bool? : Bool = false,
  focus_visible? : Bool) -> FocusOptions {
    focus_options_ffi(
      TJsValue::to_js(prevent_scroll)
     ,opt_to_js(focus_visible)
    )
}


pub fn FocusOptions::empty() -> FocusOptions = "webapi_Dictionary" "empty"