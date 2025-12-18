// Auto-generated MoonBit bindings for TogglePopoverOptions dictionary
// Do not edit manually

#external
pub type TogglePopoverOptions

pub impl TJsValue for TogglePopoverOptions with to_js(self: TogglePopoverOptions) -> JsValue = "%identity"


fn toggle_popover_options_ffi(source : JsValue, force : JsValue) -> TogglePopoverOptions = "webapi_TogglePopoverOptions" "new"


pub fn TogglePopoverOptions::new(
  source? : &THTMLElement,
  force? : Bool) -> TogglePopoverOptions {
    toggle_popover_options_ffi(
      opt_to_js(source)
     ,opt_to_js(force)
    )
}


pub fn TogglePopoverOptions::empty() -> TogglePopoverOptions = "webapi_Dictionary" "empty"