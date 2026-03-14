// Do not edit. This file is generated.
// MoonBit type: PermissionStatus
// Specifications: permissions.idl

///|
/// [PermissionStatus](https://developer.mozilla.org/en-US/docs/Web/API/PermissionStatus)
#external
pub type PermissionStatus

///|
pub impl TJsValue for PermissionStatus with to_js(self : PermissionStatus) -> JsValue = "%identity"

///|
pub impl FromJsAny for PermissionStatus with from_js_any(value : JsAny) -> PermissionStatus = "%identity"

///|
pub fn[T : TPermissionStatus] PermissionStatus::into(
  self : PermissionStatus,
) -> T = "%identity"

///|
pub impl TPermissionStatus for PermissionStatus

///|
pub impl TEventTarget for PermissionStatus

///|
/// [PermissionStatus](https://developer.mozilla.org/en-US/docs/Web/API/PermissionStatus) interface.
pub trait TPermissionStatus: TEventTarget {
  state(self : Self) -> PermissionState = _
  name(self : Self) -> String = _
  onchange(self : Self) -> EventHandler = _
  set_onchange(self : Self, onchange : (Event) -> JsValue) -> Unit = _
}

///|
/// [PermissionStatus.state](https://developer.mozilla.org/en-US/docs/Web/API/PermissionStatus/state)
impl TPermissionStatus with state(self : Self) -> PermissionState {
  permission_status_state_ffi(TJsValue::to_js(self))
}

///|
/// [PermissionStatus.name](https://developer.mozilla.org/en-US/docs/Web/API/PermissionStatus/name)
impl TPermissionStatus with name(self : Self) -> String {
  permission_status_name_ffi(TJsValue::to_js(self))
}

///|
/// [PermissionStatus.onchange](https://developer.mozilla.org/en-US/docs/Web/API/PermissionStatus/onchange)
impl TPermissionStatus with onchange(self : Self) -> EventHandler {
  permission_status_onchange_ffi(TJsValue::to_js(self))
}

///|
/// [PermissionStatus.onchange](https://developer.mozilla.org/en-US/docs/Web/API/PermissionStatus/onchange)
impl TPermissionStatus with set_onchange(
  self : Self,
  onchange : (Event) -> JsValue,
) -> Unit {
  permission_status_set_onchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onchange)),
  )
}

///|
#cfg(target="js")
extern "js" fn permission_status_state_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.state"

///|
#cfg(target="js")
fn permission_status_state_ffi(obj : JsValue) -> PermissionState {
  PermissionState::from_unchecked(
    permission_status_state_ffi_js(obj).unsafe_cast(),
  )
}

///|
#cfg(target="js")
extern "js" fn permission_status_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn permission_status_name_ffi(obj : JsValue) -> String {
  permission_status_name_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn permission_status_onchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onchange"

///|
#cfg(target="js")
fn permission_status_onchange_ffi(obj : JsValue) -> EventHandler {
  permission_status_onchange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn permission_status_set_onchange_ffi(
  obj : JsValue,
  onchange : JsValue,
) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"

///|
#cfg(target="wasm-gc")
fn permission_status_state_ffi_wasm(obj : JsValue) -> JsValue = "webapi_PermissionStatus" "get_state"

///|
#cfg(target="wasm-gc")
fn permission_status_state_ffi(obj : JsValue) -> PermissionState {
  PermissionState::from_unchecked(
    jsvalue_to_string(permission_status_state_ffi_wasm(obj)),
  )
}

///|
#cfg(target="wasm-gc")
fn permission_status_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_PermissionStatus" "get_name"

///|
#cfg(target="wasm-gc")
fn permission_status_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(permission_status_name_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn permission_status_onchange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_PermissionStatus" "get_onchange"

///|
#cfg(target="wasm-gc")
fn permission_status_onchange_ffi(obj : JsValue) -> EventHandler {
  permission_status_onchange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn permission_status_set_onchange_ffi(
  obj : JsValue,
  onchange : JsValue,
) -> Unit = "webapi_PermissionStatus" "set_onchange"
