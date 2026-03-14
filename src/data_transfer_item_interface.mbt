// Do not edit. This file is generated.
// MoonBit type: DataTransferItem
// Specifications: file-system-access.idl, html.idl

///|
/// [DataTransferItem](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem)
#external
pub type DataTransferItem

///|
pub impl TJsValue for DataTransferItem with to_js(self : DataTransferItem) -> JsValue = "%identity"

///|
pub impl FromJsAny for DataTransferItem with from_js_any(value : JsAny) -> DataTransferItem = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TDataTransferItem] DataTransferItem::into(
  self : DataTransferItem,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TDataTransferItem] DataTransferItem::unsafe_into(
  self : DataTransferItem,
) -> T = "%identity"

///|
pub impl HasConstructor for DataTransferItem with constructor_name() {
  "DataTransferItem"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TDataTransferItem + HasConstructor] DataTransferItem::try_into(
  self : DataTransferItem,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TDataTransferItem for DataTransferItem

///|
/// [DataTransferItem](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem) interface.
pub trait TDataTransferItem: TJsValue {
  kind(self : Self) -> String = _
  type_(self : Self) -> String = _
  get_as_string(self : Self, _callback : (String) -> Unit) -> Unit = _
  get_as_file_opt(self : Self) -> File? = _
  get_as_file_system_handle(self : Self) -> JsPromise[FileSystemHandle] = _
  get_as_file(self : Self) -> File = _
}

///|
/// [DataTransferItem.kind](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem/kind)
impl TDataTransferItem with kind(self : Self) -> String {
  data_transfer_item_kind_ffi(TJsValue::to_js(self))
}

///|
/// [DataTransferItem.type](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem/type)
impl TDataTransferItem with type_(self : Self) -> String {
  data_transfer_item_type_ffi(TJsValue::to_js(self))
}

///|
/// [DataTransferItem.getAsString](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem/getAsString)
impl TDataTransferItem with get_as_string(
  self : Self,
  _callback : (String) -> Unit,
) -> Unit {
  data_transfer_item_get_as_string_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(function_string_callback_ffi(_callback)),
  )
}

///|
/// [DataTransferItem.getAsFile](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem/getAsFile)
impl TDataTransferItem with get_as_file_opt(self : Self) -> File? {
  data_transfer_item_get_as_file_ffi(TJsValue::to_js(self)).to_option()
}

///|
/// [DataTransferItem.getAsFileSystemHandle](https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem/getAsFileSystemHandle)
impl TDataTransferItem with get_as_file_system_handle(self : Self) -> JsPromise[
  FileSystemHandle,
] {
  data_transfer_item_get_as_file_system_handle_ffi(TJsValue::to_js(self))
}

///|
impl TDataTransferItem with get_as_file(self : Self) -> File {
  self.get_as_file_opt().unwrap()
}

///|
#cfg(target="js")
extern "js" fn data_transfer_item_kind_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.kind"

///|
#cfg(target="js")
fn data_transfer_item_kind_ffi(obj : JsValue) -> String {
  data_transfer_item_kind_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn data_transfer_item_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn data_transfer_item_type_ffi(obj : JsValue) -> String {
  data_transfer_item_type_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn data_transfer_item_get_as_string_ffi(
  obj : JsValue,
  _callback : JsValue,
) -> Unit = "(obj, _callback) => obj.getAsString(_callback)"

///|
#cfg(target="js")
extern "js" fn data_transfer_item_get_as_file_ffi(obj : JsValue) -> JsValue = "(obj) => obj.getAsFile()"

///|
#cfg(target="js")
extern "js" fn data_transfer_item_get_as_file_system_handle_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getAsFileSystemHandle()"

///|
#cfg(target="js")
fn data_transfer_item_get_as_file_system_handle_ffi(
  obj : JsValue,
) -> JsPromise[FileSystemHandle] {
  data_transfer_item_get_as_file_system_handle_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn data_transfer_item_kind_ffi_wasm(obj : JsValue) -> JsValue = "webapi_DataTransferItem" "get_kind"

///|
#cfg(target="wasm-gc")
fn data_transfer_item_kind_ffi(obj : JsValue) -> String {
  jsvalue_to_string(data_transfer_item_kind_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn data_transfer_item_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_DataTransferItem" "get_type"

///|
#cfg(target="wasm-gc")
fn data_transfer_item_type_ffi(obj : JsValue) -> String {
  jsvalue_to_string(data_transfer_item_type_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn data_transfer_item_get_as_string_ffi(
  obj : JsValue,
  _callback : JsValue,
) -> Unit = "webapi_DataTransferItem" "getAsString"

///|
#cfg(target="wasm-gc")
fn data_transfer_item_get_as_file_ffi(obj : JsValue) -> JsValue = "webapi_DataTransferItem" "getAsFile"

///|
#cfg(target="wasm-gc")
fn data_transfer_item_get_as_file_system_handle_ffi_wasm(
  obj : JsValue,
) -> JsValue = "webapi_DataTransferItem" "getAsFileSystemHandle"

///|
#cfg(target="wasm-gc")
fn data_transfer_item_get_as_file_system_handle_ffi(
  obj : JsValue,
) -> JsPromise[FileSystemHandle] {
  data_transfer_item_get_as_file_system_handle_ffi_wasm(obj).unsafe_cast()
}
