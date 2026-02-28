///|
extern "js" fn data_transfer_item_kind_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.kind"

///|
fn data_transfer_item_kind_ffi(obj : JsValue) -> String {
  data_transfer_item_kind_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn data_transfer_item_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
fn data_transfer_item_type_ffi(obj : JsValue) -> String {
  data_transfer_item_type_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn data_transfer_item_get_as_string_ffi(
  obj : JsValue,
  _callback : JsValue,
) -> Unit = "(obj, _callback) => obj.getAsString(_callback)"

///|
extern "js" fn data_transfer_item_get_as_file_ffi(obj : JsValue) -> JsValue = "(obj) => obj.getAsFile()"

///|
extern "js" fn data_transfer_item_get_as_file_system_handle_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getAsFileSystemHandle()"

///|
fn data_transfer_item_get_as_file_system_handle_ffi(
  obj : JsValue,
) -> JsPromise[FileSystemHandle] {
  data_transfer_item_get_as_file_system_handle_ffi_js(obj).unsafe_cast()
}
