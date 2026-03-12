// Do not edit. This file is generated.
// MoonBit type: PermissionStatus
// Specifications: permissions.idl

/// [PermissionStatus](https://developer.mozilla.org/en-US/docs/Web/API/PermissionStatus)
#external
pub type PermissionStatus

pub impl TJsValue for PermissionStatus with to_js(self: PermissionStatus) -> JsValue = "%identity"

pub impl FromJsAny for PermissionStatus with from_js_any(value : JsAny) -> PermissionStatus = "%identity"

pub fn[T: TPermissionStatus] PermissionStatus::into(self : PermissionStatus) -> T = "%identity"

pub impl TPermissionStatus for PermissionStatus

pub impl TEventTarget for PermissionStatus

/// [PermissionStatus](https://developer.mozilla.org/en-US/docs/Web/API/PermissionStatus) interface.
pub trait TPermissionStatus: TEventTarget {
  state(self : Self) -> PermissionState = _
  name(self : Self) -> String = _
  onchange(self : Self) -> EventHandler = _
  set_onchange(self : Self, onchange : (Event) -> JsValue) -> Unit = _
}

/// [PermissionStatus.state](https://developer.mozilla.org/en-US/docs/Web/API/PermissionStatus/state)
impl TPermissionStatus with state(self : Self) -> PermissionState {
  permission_status_state_ffi(TJsValue::to_js(self))
}

/// [PermissionStatus.name](https://developer.mozilla.org/en-US/docs/Web/API/PermissionStatus/name)
impl TPermissionStatus with name(self : Self) -> String {
  permission_status_name_ffi(TJsValue::to_js(self))
}

/// [PermissionStatus.onchange](https://developer.mozilla.org/en-US/docs/Web/API/PermissionStatus/onchange)
impl TPermissionStatus with onchange(self : Self) -> EventHandler {
  permission_status_onchange_ffi(TJsValue::to_js(self))
}

/// [PermissionStatus.onchange](https://developer.mozilla.org/en-US/docs/Web/API/PermissionStatus/onchange)
impl TPermissionStatus with set_onchange(self : Self, 
onchange : (Event) -> JsValue) -> Unit {
  permission_status_set_onchange_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onchange)))
}