// Do not edit. This file is generated.
// MoonBit type: DataTransfer
// Specifications: html.idl

///|
/// [DataTransfer](https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer)
#external
pub type DataTransfer

///|
pub impl TJsValue for DataTransfer with to_js(self : DataTransfer) -> JsValue = "%identity"

///|
pub fn[T : TDataTransfer] DataTransfer::into(self : DataTransfer) -> T = "%identity"

///|
pub impl TDataTransfer for DataTransfer

///|
pub fn DataTransfer::new() -> DataTransfer {
  data_transfer_new_ffi()
}

///|
/// [DataTransfer](https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer) interface.
pub trait TDataTransfer: TJsValue {
  drop_effect(self : Self) -> String = _
  set_drop_effect(self : Self, drop_effect : String) -> Unit = _
  effect_allowed(self : Self) -> String = _
  set_effect_allowed(self : Self, effect_allowed : String) -> Unit = _
  items(self : Self) -> DataTransferItemList = _
  set_drag_image(self : Self, image : &TElement, x : Int, y : Int) -> Unit = _
  types(self : Self) -> JsValue = _
  get_data(self : Self, format : String) -> String = _
  set_data(self : Self, format : String, data : String) -> Unit = _
  clear_data(self : Self, format? : String) -> Unit = _
  files(self : Self) -> FileList = _
}

///|
/// [DataTransfer.dropEffect](https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer/dropEffect)
impl TDataTransfer with drop_effect(self : Self) -> String {
  data_transfer_drop_effect_ffi(TJsValue::to_js(self))
}

///|
/// [DataTransfer.dropEffect](https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer/dropEffect)
impl TDataTransfer with set_drop_effect(self : Self, drop_effect : String) -> Unit {
  data_transfer_set_drop_effect_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(drop_effect),
  )
}

///|
/// [DataTransfer.effectAllowed](https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer/effectAllowed)
impl TDataTransfer with effect_allowed(self : Self) -> String {
  data_transfer_effect_allowed_ffi(TJsValue::to_js(self))
}

///|
/// [DataTransfer.effectAllowed](https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer/effectAllowed)
impl TDataTransfer with set_effect_allowed(self : Self, effect_allowed : String) -> Unit {
  data_transfer_set_effect_allowed_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(effect_allowed),
  )
}

///|
/// [DataTransfer.items](https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer/items)
impl TDataTransfer with items(self : Self) -> DataTransferItemList {
  data_transfer_items_ffi(TJsValue::to_js(self))
}

///|
/// [DataTransfer.setDragImage](https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer/setDragImage)
impl TDataTransfer with set_drag_image(
  self : Self,
  image : &TElement,
  x : Int,
  y : Int,
) -> Unit {
  data_transfer_set_drag_image_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(image),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
/// [DataTransfer.types](https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer/types)
impl TDataTransfer with types(self : Self) -> JsValue {
  data_transfer_types_ffi(TJsValue::to_js(self))
}

///|
/// [DataTransfer.getData](https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer/getData)
impl TDataTransfer with get_data(self : Self, format : String) -> String {
  data_transfer_get_data_ffi(TJsValue::to_js(self), TJsValue::to_js(format))
}

///|
/// [DataTransfer.setData](https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer/setData)
impl TDataTransfer with set_data(self : Self, format : String, data : String) -> Unit {
  data_transfer_set_data_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(format),
    TJsValue::to_js(data),
  )
}

///|
/// [DataTransfer.clearData](https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer/clearData)
impl TDataTransfer with clear_data(self : Self, format? : String) -> Unit {
  data_transfer_clear_data_ffi(TJsValue::to_js(self), opt_to_js(format))
}

///|
/// [DataTransfer.files](https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer/files)
impl TDataTransfer with files(self : Self) -> FileList {
  data_transfer_files_ffi(TJsValue::to_js(self))
}
