///|
extern "js" fn permissions_query_ffi_js(
  obj : JsValue,
  permission_desc : JsValue,
) -> JsValue = "(obj, permission_desc) => obj.query(permission_desc)"

///|
fn permissions_query_ffi(
  obj : JsValue,
  permission_desc : JsValue,
) -> JsPromise[PermissionStatus] {
  permissions_query_ffi_js(obj, permission_desc).unsafe_cast()
}
