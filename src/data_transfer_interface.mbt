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
extern "js" fn data_transfer_ffi() -> DataTransfer = "() => new DataTransfer()"

///|
pub fn DataTransfer::new() -> DataTransfer {
  data_transfer_ffi()
}

///|
pub trait TDataTransfer: TJsValue {
  set_drag_image(self : Self, image : &TElement, x : Int, y : Int) -> Unit = _
  get_data(self : Self, format : String) -> String = _
  set_data(self : Self, format : String, data : String) -> Unit = _
  clear_data(self : Self, format? : String) -> Unit = _
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
