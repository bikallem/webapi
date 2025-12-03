// Auto-generated MoonBit bindings for TogglePopoverOptions dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary TogglePopoverOptions : ShowPopoverOptions {
//   boolean force;
// };

///|
#external
pub type TogglePopoverOptions

///|
pub impl TJsValue for TogglePopoverOptions with to_js(self : TogglePopoverOptions) -> JsValue = "%identity"

///|
fn toggle_popover_options_ffi(force : JsValue) -> TogglePopoverOptions = "webapi_TogglePopoverOptions" "new"

///|
pub fn TogglePopoverOptions::new(
  force? : Bool
) -> TogglePopoverOptions {
  let force_js = opt_to_js(force)
  toggle_popover_options_ffi(force_js)
}

///|
pub fn TogglePopoverOptions::empty() -> TogglePopoverOptions = "webapi_Dictionary" "empty"