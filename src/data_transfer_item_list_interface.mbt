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
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TDataTransferItemList] DataTransferItemList::into(
  self : DataTransferItemList,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TDataTransferItemList] DataTransferItemList::unsafe_into(
  self : DataTransferItemList,
) -> T = "%identity"

///|
pub impl HasConstructor for DataTransferItemList with constructor_name() {
  "DataTransferItemList"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TDataTransferItemList + HasConstructor] DataTransferItemList::try_into(
  self : DataTransferItemList,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TDataTransferItemList for DataTransferItemList

///|
/// [DataTransferItemList](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList) interface.
pub trait TDataTransferItemList: TJsValue {
  length(self : Self) -> UInt = _
  get_opt(self : Self, index : UInt) -> DataTransferItem? = _
  add_opt(self : Self, data : String, type_ : String) -> DataTransferItem? = _
  add_file_opt(self : Self, data : &TFile) -> DataTransferItem? = _
  remove(self : Self, index : UInt) -> Unit = _
  clear(self : Self) -> Unit = _
  get(self : Self, index : UInt) -> DataTransferItem = _
  add(self : Self, data : String, type_ : String) -> DataTransferItem = _
  add_file(self : Self, data : &TFile) -> DataTransferItem = _
}

///|
/// [DataTransferItemList.length](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList/length)
impl TDataTransferItemList with length(self : Self) -> UInt {
  data_transfer_item_list_length_ffi(TJsValue::to_js(self))
}

///|
/// [DataTransferItemList.get](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList/get)
impl TDataTransferItemList with get_opt(self : Self, index : UInt) -> DataTransferItem? {
  data_transfer_item_list_get_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option()
}

///|
/// [DataTransferItemList.add](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList/add)
impl TDataTransferItemList with add_opt(
  self : Self,
  data : String,
  type_ : String,
) -> DataTransferItem? {
  data_transfer_item_list_add_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(data),
    TJsValue::to_js(type_),
  ).to_option()
}

///|
/// [DataTransferItemList.add](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList/add)
impl TDataTransferItemList with add_file_opt(self : Self, data : &TFile) -> DataTransferItem? {
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

///|
impl TDataTransferItemList with get(self : Self, index : UInt) -> DataTransferItem {
  self.get_opt(index).unwrap()
}

///|
impl TDataTransferItemList with add(self : Self, data : String, type_ : String) -> DataTransferItem {
  self.add_opt(data, type_).unwrap()
}

///|
impl TDataTransferItemList with add_file(self : Self, data : &TFile) -> DataTransferItem {
  self.add_file_opt(data).unwrap()
}

///|
#cfg(target="js")
extern "js" fn data_transfer_item_list_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn data_transfer_item_list_length_ffi(obj : JsValue) -> UInt {
  data_transfer_item_list_length_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn data_transfer_item_list_get_ffi(
  obj : JsValue,
  index : JsValue,
) -> JsValue = "(obj, index) => obj[index]"

///|
#cfg(target="js")
extern "js" fn data_transfer_item_list_add_ffi(
  obj : JsValue,
  data : JsValue,
  type_ : JsValue,
) -> JsValue = "(obj, data, type_) => obj.add(data, type_)"

///|
#cfg(target="js")
extern "js" fn data_transfer_item_list_add_file_ffi(
  obj : JsValue,
  data : JsValue,
) -> JsValue = "(obj, data) => obj.add(data)"

///|
#cfg(target="js")
extern "js" fn data_transfer_item_list_remove_ffi(
  obj : JsValue,
  index : JsValue,
) -> Unit = "(obj, index) => obj.remove(index)"

///|
#cfg(target="js")
extern "js" fn data_transfer_item_list_clear_ffi(obj : JsValue) -> Unit = "(obj) => obj.clear()"

///|
#cfg(target="wasm-gc")
fn data_transfer_item_list_length_ffi(obj : JsValue) -> UInt = "webapi_DataTransferItemList" "get_length"

///|
#cfg(target="wasm-gc")
fn data_transfer_item_list_get_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_DataTransferItemList" "get"

///|
#cfg(target="wasm-gc")
fn data_transfer_item_list_add_ffi(
  obj : JsValue,
  data : JsValue,
  type_ : JsValue,
) -> JsValue = "webapi_DataTransferItemList" "add"

///|
#cfg(target="wasm-gc")
fn data_transfer_item_list_add_file_ffi(
  obj : JsValue,
  data : JsValue,
) -> JsValue = "webapi_DataTransferItemList" "add_file"

///|
#cfg(target="wasm-gc")
fn data_transfer_item_list_remove_ffi(obj : JsValue, index : JsValue) -> Unit = "webapi_DataTransferItemList" "remove"

///|
#cfg(target="wasm-gc")
fn data_transfer_item_list_clear_ffi(obj : JsValue) -> Unit = "webapi_DataTransferItemList" "clear"
