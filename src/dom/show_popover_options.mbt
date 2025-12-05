// Auto-generated MoonBit bindings for ShowPopoverOptions dictionary

// Do not edit manually

///|
#external
pub type ShowPopoverOptions

///|
pub impl TJsValue for ShowPopoverOptions with to_js(self : ShowPopoverOptions) -> JsValue = "%identity"

///|
fn show_popover_options_ffi(source : JsValue) -> ShowPopoverOptions = "webapi_ShowPopoverOptions" "new"

///|
pub fn ShowPopoverOptions::new(source? : HTMLElement) -> ShowPopoverOptions {
  let source_js = opt_to_js(source)
  show_popover_options_ffi(source_js)
}

///|
pub fn ShowPopoverOptions::empty() -> ShowPopoverOptions = "webapi_Dictionary" "empty"
