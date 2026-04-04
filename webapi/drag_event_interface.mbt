// Do not edit. This file is generated.
// MoonBit type: DragEvent
// Specifications: html.idl

///|
/// [DragEvent](https://developer.mozilla.org/en-US/docs/Web/API/DragEvent)
#external
pub type DragEvent

///|
pub impl TJsValue for DragEvent with to_js(self : DragEvent) -> JsValue = "%identity"

///|
pub impl FromJsAny for DragEvent with from_js_any(value : JsAny) -> DragEvent = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TDragEvent] DragEvent::into(self : DragEvent) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TDragEvent] DragEvent::unsafe_into(self : DragEvent) -> T = "%identity"

///|
pub impl HasConstructor for DragEvent with constructor_name() {
  "DragEvent"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TDragEvent + HasConstructor] DragEvent::try_into(
  self : DragEvent,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TDragEvent for DragEvent

///|
pub impl TMouseEvent for DragEvent

///|
pub impl TUIEvent for DragEvent

///|
pub impl TEvent for DragEvent

///|
pub fn DragEvent::new(
  type_ : String,
  event_init_dict? : DragEventInit,
) -> DragEvent {
  drag_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

///|
/// [DragEvent](https://developer.mozilla.org/en-US/docs/Web/API/DragEvent) interface.
pub trait TDragEvent: TMouseEvent {
  data_transfer(self : Self) -> DataTransfer = _
}

///|
/// [DragEvent.dataTransfer](https://developer.mozilla.org/en-US/docs/Web/API/DragEvent/dataTransfer)
impl TDragEvent with data_transfer(self : Self) -> DataTransfer {
  drag_event_data_transfer_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn drag_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> DragEvent = "(type_, event_init_dict) => new DragEvent(type_, event_init_dict)"

///|
#cfg(target="js")
extern "js" fn drag_event_data_transfer_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.dataTransfer"

///|
#cfg(target="js")
fn drag_event_data_transfer_ffi(obj : JsValue) -> DataTransfer {
  drag_event_data_transfer_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn drag_event_new_ffi(type_ : JsValue, event_init_dict : JsValue) -> DragEvent = "webapi_DragEvent" "new"

///|
#cfg(target="wasm-gc")
fn drag_event_data_transfer_ffi(obj : JsValue) -> DataTransfer = "webapi_DragEvent" "get_dataTransfer"
