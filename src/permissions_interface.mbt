// Do not edit. This file is generated.
// MoonBit type: Permissions
// Specifications: permissions.idl

/// [Permissions](https://developer.mozilla.org/en-US/docs/Web/API/Permissions)
#external
pub type Permissions

pub impl TJsValue for Permissions with to_js(self: Permissions) -> JsValue = "%identity"

pub impl FromJsAny for Permissions with from_js_any(value : JsAny) -> Permissions = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TPermissions] Permissions::into(self : Permissions) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TPermissions] Permissions::unsafe_into(self : Permissions) -> T = "%identity"

pub impl HasConstructor for Permissions with constructor_name() { "Permissions" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TPermissions + HasConstructor] Permissions::try_into(self : Permissions) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TPermissions for Permissions

/// [Permissions](https://developer.mozilla.org/en-US/docs/Web/API/Permissions) interface.
pub trait TPermissions: TJsValue {
  query(self : Self, permission_desc : JsValue) -> JsPromise[PermissionStatus] = _
}

/// [Permissions.query](https://developer.mozilla.org/en-US/docs/Web/API/Permissions/query)
impl TPermissions with query(self : Self, 
permission_desc : JsValue) -> JsPromise[PermissionStatus] {
  permissions_query_ffi(TJsValue::to_js(self), TJsValue::to_js(permission_desc))
}

#cfg(target="js")
extern "js" fn permissions_query_ffi_js(obj: JsValue, permission_desc: JsValue) -> JsValue = "(obj, permission_desc) => obj.query(permission_desc)"

///|
#cfg(target="js")
fn permissions_query_ffi(obj: JsValue, permission_desc: JsValue) -> JsPromise[PermissionStatus] {
  permissions_query_ffi_js(obj, permission_desc).unsafe_cast()
}

#cfg(target="wasm-gc")
fn permissions_query_ffi_wasm(obj: JsValue, permission_desc: JsValue) -> JsValue = "webapi_Permissions" "query"

///|
#cfg(target="wasm-gc")
fn permissions_query_ffi(obj: JsValue, permission_desc: JsValue) -> JsPromise[PermissionStatus] {
  permissions_query_ffi_wasm(obj, permission_desc).unsafe_cast()
}