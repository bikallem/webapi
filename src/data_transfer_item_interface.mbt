///|
#external
pub type DataTransferItem

///|
pub impl TJsValue for DataTransferItem with to_js(self : DataTransferItem) -> JsValue = "%identity"

///|
pub fn[T : TDataTransferItem] DataTransferItem::into(
  self : DataTransferItem,
) -> T = "%identity"

///|
pub impl TDataTransferItem for DataTransferItem

///|
pub trait TDataTransferItem: TJsValue {
  get_as_string(self : Self, _callback : FunctionStringCallback) -> Unit = _
  get_as_file(self : Self) -> File = _
}

///|
extern "js" fn data_transfer_item_get_as_string_ffi(
  obj : JsValue,
  _callback : JsValue,
) -> Unit = "(obj, _callback) => obj.getAsString(obj, _callback)"

///|
impl TDataTransferItem with get_as_string(
  self : Self,
  _callback : FunctionStringCallback,
) -> Unit {
  data_transfer_item_get_as_string_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(_callback),
  )
}

///|
extern "js" fn data_transfer_item_get_as_file_ffi(obj : JsValue) -> File = "(obj) => obj.getAsFile(obj)"

///|
impl TDataTransferItem with get_as_file(self : Self) -> File {
  data_transfer_item_get_as_file_ffi(TJsValue::to_js(self))
}
