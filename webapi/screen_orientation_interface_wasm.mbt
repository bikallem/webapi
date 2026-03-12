fn screen_orientation_lock_ffi_wasm(obj: JsValue, orientation: JsValue) -> JsValue = "webapi_ScreenOrientation" "lock"

///|
fn screen_orientation_lock_ffi(obj: JsValue, orientation: JsValue) -> JsPromise[JsValue] {
  screen_orientation_lock_ffi_wasm(obj, orientation).unsafe_cast()
}

fn screen_orientation_unlock_ffi(obj: JsValue) -> Unit = "webapi_ScreenOrientation" "unlock"

fn screen_orientation_type_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ScreenOrientation" "get_type"

///|
fn screen_orientation_type_ffi(obj: JsValue) -> OrientationType {
  OrientationType::from_unchecked(jsvalue_to_string(screen_orientation_type_ffi_wasm(obj)))
}

fn screen_orientation_angle_ffi(obj: JsValue) -> UInt = "webapi_ScreenOrientation" "get_angle"

fn screen_orientation_onchange_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ScreenOrientation" "get_onchange"

///|
fn screen_orientation_onchange_ffi(obj: JsValue) -> EventHandler {
  screen_orientation_onchange_ffi_wasm(obj).unsafe_cast()
}

fn screen_orientation_set_onchange_ffi(obj: JsValue, onchange: JsValue) -> Unit = "webapi_ScreenOrientation" "set_onchange"