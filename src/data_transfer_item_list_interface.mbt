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
pub fn[T : TDataTransferItemList] DataTransferItemList::into(
  self : DataTransferItemList,
) -> T = "%identity"

///|
pub impl TDataTransferItemList for DataTransferItemList

///|
/// [DataTransferItemList](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList) interface.
pub trait TDataTransferItemList: TJsValue {
  length(self : Self) -> UInt = _
  add(self : Self, data : String, type_ : String) -> DataTransferItem? = _
  add_2(self : Self, data : &TFile) -> DataTransferItem? = _
  remove(self : Self, index : UInt) -> Unit = _
  clear(self : Self) -> Unit = _
}

///|
extern "js" fn data_transfer_item_list_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
/// [DataTransferItemList.length](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList/length)
impl TDataTransferItemList with length(self : Self) -> UInt {
  data_transfer_item_list_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn data_transfer_item_list_add_ffi(
  obj : JsValue,
  data : JsValue,
  type_ : JsValue,
) -> JsValue = "(obj, data, type_) => obj.add(data, type_)"

///|
/// [DataTransferItemList.add](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList/add)
impl TDataTransferItemList with add(self : Self, data : String, type_ : String) -> DataTransferItem? {
  let result = data_transfer_item_list_add_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(data),
    TJsValue::to_js(type_),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn data_transfer_item_list_add_2_ffi(
  obj : JsValue,
  data : JsValue,
) -> JsValue = "(obj, data) => obj.add_2(data)"

///|
/// [DataTransferItemList.add_2](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList/add_2)
impl TDataTransferItemList with add_2(self : Self, data : &TFile) -> DataTransferItem? {
  let result = data_transfer_item_list_add_2_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(data),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn data_transfer_item_list_remove_ffi(
  obj : JsValue,
  index : JsValue,
) -> Unit = "(obj, index) => obj.remove(index)"

///|
/// [DataTransferItemList.remove](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList/remove)
impl TDataTransferItemList with remove(self : Self, index : UInt) -> Unit {
  data_transfer_item_list_remove_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
}

///|
extern "js" fn data_transfer_item_list_clear_ffi(obj : JsValue) -> Unit = "(obj) => obj.clear()"

///|
/// [DataTransferItemList.clear](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList/clear)
impl TDataTransferItemList with clear(self : Self) -> Unit {
  data_transfer_item_list_clear_ffi(TJsValue::to_js(self))
}
