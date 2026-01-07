// Do not edit. This file is generated.
// MoonBit type: DataTransferItem
// Specifications: html.idl

///|
/// [DataTransferItem](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem)
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
/// [DataTransferItem](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem) interface.
pub trait TDataTransferItem: TJsValue {
  kind(self : Self) -> String = _
  type_(self : Self) -> String = _
  get_as_string(self : Self, _callback : FunctionStringCallback) -> Unit = _
  get_as_file(self : Self) -> File? = _
}

///|
extern "js" fn data_transfer_item_kind_ffi(obj : JsValue) -> String = "(obj) => obj.kind"

///|
/// [DataTransferItem.kind](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem/kind)
impl TDataTransferItem with kind(self : Self) -> String {
  data_transfer_item_kind_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn data_transfer_item_type_ffi(obj : JsValue) -> String = "(obj) => obj.type"

///|
/// [DataTransferItem.type](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem/type)
impl TDataTransferItem with type_(self : Self) -> String {
  data_transfer_item_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn data_transfer_item_get_as_string_ffi(
  obj : JsValue,
  _callback : JsValue,
) -> Unit = "(obj, _callback) => obj.getAsString(_callback)"

///|
/// [DataTransferItem.getAsString](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem/getAsString)
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
extern "js" fn data_transfer_item_get_as_file_ffi(obj : JsValue) -> JsValue = "(obj) => obj.getAsFile()"

///|
/// [DataTransferItem.getAsFile](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem/getAsFile)
impl TDataTransferItem with get_as_file(self : Self) -> File? {
  let result = data_transfer_item_get_as_file_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
