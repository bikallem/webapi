// Do not edit. This file is generated.
// MoonBit type: DragEvent
// Specifications: html.idl

///|
#external
pub type DragEvent

///|
pub impl TJsValue for DragEvent with to_js(self : DragEvent) -> JsValue = "%identity"

///|
pub fn[T : TDragEvent] DragEvent::into(self : DragEvent) -> T = "%identity"

///|
pub impl TDragEvent for DragEvent

///|
pub impl TMouseEvent for DragEvent

///|
pub impl TUIEvent for DragEvent

///|
pub impl TEvent for DragEvent

///|
extern "js" fn drag_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> DragEvent = "(type_, event_init_dict) => new DragEvent(type_, event_init_dict)"

///|
pub fn DragEvent::new(
  type_ : String,
  event_init_dict? : DragEventInit = DragEventInit::empty(),
) -> DragEvent {
  drag_event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

///|
pub trait TDragEvent: TMouseEvent {
  data_transfer(self : Self) -> DataTransfer = _
}

///|
extern "js" fn drag_event_data_transfer_ffi(obj : JsValue) -> DataTransfer = "(obj) => obj.dataTransfer"

///|
impl TDragEvent with data_transfer(self : Self) -> DataTransfer {
  drag_event_data_transfer_ffi(TJsValue::to_js(self))
}
