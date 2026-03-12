// Do not edit. This file is generated.
// MoonBit type: Permissions
// Specifications: permissions.idl

///|
/// [Permissions](https://developer.mozilla.org/en-US/docs/Web/API/Permissions)
#external
pub type Permissions

///|
pub impl TJsValue for Permissions with to_js(self : Permissions) -> JsValue = "%identity"

///|
pub impl FromJsAny for Permissions with from_js_any(value : JsAny) -> Permissions = "%identity"

///|
pub fn[T : TPermissions] Permissions::into(self : Permissions) -> T = "%identity"

///|
pub impl TPermissions for Permissions

///|
/// [Permissions](https://developer.mozilla.org/en-US/docs/Web/API/Permissions) interface.
pub trait TPermissions: TJsValue {
  query(self : Self, permission_desc : JsValue) -> JsPromise[PermissionStatus] = _
}

///|
/// [Permissions.query](https://developer.mozilla.org/en-US/docs/Web/API/Permissions/query)
impl TPermissions with query(self : Self, permission_desc : JsValue) -> JsPromise[
  PermissionStatus,
] {
  permissions_query_ffi(TJsValue::to_js(self), TJsValue::to_js(permission_desc))
}

///|
#cfg(target="js")
extern "js" fn permissions_query_ffi_js(
  obj : JsValue,
  permission_desc : JsValue,
) -> JsValue = "(obj, permission_desc) => obj.query(permission_desc)"

///|
#cfg(target="js")
fn permissions_query_ffi(
  obj : JsValue,
  permission_desc : JsValue,
) -> JsPromise[PermissionStatus] {
  permissions_query_ffi_js(obj, permission_desc).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn permissions_query_ffi_wasm(
  obj : JsValue,
  permission_desc : JsValue,
) -> JsValue = "webapi_Permissions" "query"

///|
#cfg(target="wasm-gc")
fn permissions_query_ffi(
  obj : JsValue,
  permission_desc : JsValue,
) -> JsPromise[PermissionStatus] {
  permissions_query_ffi_wasm(obj, permission_desc).unsafe_cast()
}
