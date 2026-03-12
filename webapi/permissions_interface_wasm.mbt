fn permissions_query_ffi_wasm(obj: JsValue, permission_desc: JsValue) -> JsValue = "webapi_Permissions" "query"

///|
fn permissions_query_ffi(obj: JsValue, permission_desc: JsValue) -> JsPromise[PermissionStatus] {
  permissions_query_ffi_wasm(obj, permission_desc).unsafe_cast()
}