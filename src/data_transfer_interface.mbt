///|
#external
pub type DataTransfer

///|
pub impl TJsValue for DataTransfer with to_js(self : DataTransfer) -> JsValue = "%identity"

///|
pub fn[T : TDataTransfer] DataTransfer::into(self : DataTransfer) -> T = "%identity"

///|
pub impl TDataTransfer for DataTransfer

///|
extern "js" fn data_transfer_new_ffi() -> DataTransfer = "() => new DataTransfer()"

///|
pub fn DataTransfer::new() -> DataTransfer {
  data_transfer_new_ffi()
}

///|
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
extern "js" fn data_transfer_drop_effect_ffi(obj : JsValue) -> String = "(obj) => obj.dropEffect"

///|
impl TDataTransfer with drop_effect(self : Self) -> String {
  data_transfer_drop_effect_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn data_transfer_set_drop_effect_ffi(
  obj : JsValue,
  drop_effect : JsValue,
) -> Unit = "(obj, dropEffect) => { obj.dropEffect = dropEffect; }"

///|
impl TDataTransfer with set_drop_effect(self : Self, drop_effect : String) -> Unit {
  data_transfer_set_drop_effect_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(drop_effect),
  )
}

///|
extern "js" fn data_transfer_effect_allowed_ffi(obj : JsValue) -> String = "(obj) => obj.effectAllowed"

///|
impl TDataTransfer with effect_allowed(self : Self) -> String {
  data_transfer_effect_allowed_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn data_transfer_set_effect_allowed_ffi(
  obj : JsValue,
  effect_allowed : JsValue,
) -> Unit = "(obj, effectAllowed) => { obj.effectAllowed = effectAllowed; }"

///|
impl TDataTransfer with set_effect_allowed(self : Self, effect_allowed : String) -> Unit {
  data_transfer_set_effect_allowed_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(effect_allowed),
  )
}

///|
extern "js" fn data_transfer_items_ffi(obj : JsValue) -> DataTransferItemList = "(obj) => obj.items"

///|
impl TDataTransfer with items(self : Self) -> DataTransferItemList {
  data_transfer_items_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn data_transfer_set_drag_image_ffi(
  obj : JsValue,
  image : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "(obj, image, x, y) => obj.setDragImage(obj, image, x, y)"

///|
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
extern "js" fn data_transfer_types_ffi(obj : JsValue) -> JsValue = "(obj) => obj.types"

///|
impl TDataTransfer with types(self : Self) -> JsValue {
  data_transfer_types_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn data_transfer_get_data_ffi(
  obj : JsValue,
  format : JsValue,
) -> String = "(obj, format) => obj.getData(obj, format)"

///|
impl TDataTransfer with get_data(self : Self, format : String) -> String {
  data_transfer_get_data_ffi(TJsValue::to_js(self), TJsValue::to_js(format))
}

///|
extern "js" fn data_transfer_set_data_ffi(
  obj : JsValue,
  format : JsValue,
  data : JsValue,
) -> Unit = "(obj, format, data) => obj.setData(obj, format, data)"

///|
impl TDataTransfer with set_data(self : Self, format : String, data : String) -> Unit {
  data_transfer_set_data_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(format),
    TJsValue::to_js(data),
  )
}

///|
extern "js" fn data_transfer_clear_data_ffi(
  obj : JsValue,
  format : JsValue,
) -> Unit = "(obj, format) => obj.clearData(obj, format)"

///|
impl TDataTransfer with clear_data(self : Self, format? : String) -> Unit {
  data_transfer_clear_data_ffi(TJsValue::to_js(self), opt_to_js(format))
}

///|
extern "js" fn data_transfer_files_ffi(obj : JsValue) -> FileList = "(obj) => obj.files"

///|
impl TDataTransfer with files(self : Self) -> FileList {
  data_transfer_files_ffi(TJsValue::to_js(self))
}
