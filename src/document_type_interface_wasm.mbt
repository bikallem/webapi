///|
fn document_type_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_DocumentType" "get_name"

///|
fn document_type_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_type_name_ffi_wasm(obj))
}

///|
fn document_type_public_id_ffi_wasm(obj : JsValue) -> JsValue = "webapi_DocumentType" "get_publicId"

///|
fn document_type_public_id_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_type_public_id_ffi_wasm(obj))
}

///|
fn document_type_system_id_ffi_wasm(obj : JsValue) -> JsValue = "webapi_DocumentType" "get_systemId"

///|
fn document_type_system_id_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_type_system_id_ffi_wasm(obj))
}

///|
fn document_type_before_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_DocumentType" "before"

///|
fn document_type_after_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_DocumentType" "after"

///|
fn document_type_replace_with_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_DocumentType" "replaceWith"

///|
fn document_type_remove_ffi(obj : JsValue) -> Unit = "webapi_DocumentType" "remove"
