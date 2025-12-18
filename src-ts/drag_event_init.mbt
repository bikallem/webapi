// Auto-generated MoonBit bindings for DragEventInit dictionary

// Do not edit manually

///|
#external
pub type DragEventInit

///|
pub impl TJsValue for DragEventInit with to_js(self : DragEventInit) -> JsValue = "%identity"

///|
fn drag_event_init_ffi(data_transfer : JsValue) -> DragEventInit = "webapi_DragEventInit" "new"

///|
pub fn DragEventInit::new(
  data_transfer? : JsValue
) -> DragEventInit {
  let data_transfer_js = opt_to_js(data_transfer)
  drag_event_init_ffi(data_transfer_js)
}

///|
pub fn DragEventInit::empty() -> DragEventInit = "webapi_Dictionary" "empty"