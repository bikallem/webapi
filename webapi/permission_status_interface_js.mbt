///|
extern "js" fn permission_status_state_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.state"

///|
fn permission_status_state_ffi(obj : JsValue) -> PermissionState {
  PermissionState::from_unchecked(
    permission_status_state_ffi_js(obj).unsafe_cast(),
  )
}

///|
extern "js" fn permission_status_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
fn permission_status_name_ffi(obj : JsValue) -> String {
  permission_status_name_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn permission_status_onchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onchange"

///|
fn permission_status_onchange_ffi(obj : JsValue) -> EventHandler {
  permission_status_onchange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn permission_status_set_onchange_ffi(
  obj : JsValue,
  onchange : JsValue,
) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"
