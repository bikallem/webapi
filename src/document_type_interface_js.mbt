///|
extern "js" fn document_type_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
fn document_type_name_ffi(obj : JsValue) -> String {
  document_type_name_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_type_public_id_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.publicId"

///|
fn document_type_public_id_ffi(obj : JsValue) -> String {
  document_type_public_id_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_type_system_id_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.systemId"

///|
fn document_type_system_id_ffi(obj : JsValue) -> String {
  document_type_system_id_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_type_before_ffi(obj : JsValue, nodes : JsValue) -> Unit = "(obj, nodes) => obj.before(...nodes)"

///|
extern "js" fn document_type_after_ffi(obj : JsValue, nodes : JsValue) -> Unit = "(obj, nodes) => obj.after(...nodes)"

///|
extern "js" fn document_type_replace_with_ffi(
  obj : JsValue,
  nodes : JsValue,
) -> Unit = "(obj, nodes) => obj.replaceWith(...nodes)"

///|
extern "js" fn document_type_remove_ffi(obj : JsValue) -> Unit = "(obj) => obj.remove()"
