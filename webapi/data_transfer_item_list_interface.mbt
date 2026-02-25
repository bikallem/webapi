// Do not edit. This file is generated.
// MoonBit type: DataTransferItemList
// Specifications: html.idl

///|
/// [DataTransferItemList](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList)
#external
pub type DataTransferItemList

///|
pub impl TJsValue for DataTransferItemList with to_js(
  self : DataTransferItemList,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for DataTransferItemList with from_js_any(value : JsAny) -> DataTransferItemList = "%identity"

///|
pub fn[T : TDataTransferItemList] DataTransferItemList::into(
  self : DataTransferItemList,
) -> T = "%identity"

///|
pub impl TDataTransferItemList for DataTransferItemList

///|
/// [DataTransferItemList](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList) interface.
pub trait TDataTransferItemList: TJsValue {
  length(self : Self) -> UInt = _
  get(self : Self, index : UInt) -> DataTransferItem? = _
  add(self : Self, data : String, type_ : String) -> DataTransferItem? = _
  add_file(self : Self, data : &TFile) -> DataTransferItem? = _
  remove(self : Self, index : UInt) -> Unit = _
  clear(self : Self) -> Unit = _
}

///|
/// [DataTransferItemList.length](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList/length)
impl TDataTransferItemList with length(self : Self) -> UInt {
  data_transfer_item_list_length_ffi(TJsValue::to_js(self))
}

///|
/// [DataTransferItemList.get](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList/get)
impl TDataTransferItemList with get(self : Self, index : UInt) -> DataTransferItem? {
  data_transfer_item_list_get_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option()
}

///|
/// [DataTransferItemList.add](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList/add)
impl TDataTransferItemList with add(self : Self, data : String, type_ : String) -> DataTransferItem? {
  data_transfer_item_list_add_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(data),
    TJsValue::to_js(type_),
  ).to_option()
}

///|
/// [DataTransferItemList.add](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList/add)
impl TDataTransferItemList with add_file(self : Self, data : &TFile) -> DataTransferItem? {
  data_transfer_item_list_add_file_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(data),
  ).to_option()
}

///|
/// [DataTransferItemList.remove](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList/remove)
impl TDataTransferItemList with remove(self : Self, index : UInt) -> Unit {
  data_transfer_item_list_remove_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
}

///|
/// [DataTransferItemList.clear](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList/clear)
impl TDataTransferItemList with clear(self : Self) -> Unit {
  data_transfer_item_list_clear_ffi(TJsValue::to_js(self))
}
