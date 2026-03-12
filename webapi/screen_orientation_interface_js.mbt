///|
extern "js" fn screen_orientation_lock_ffi_js(
  obj : JsValue,
  orientation : JsValue,
) -> JsValue = "(obj, orientation) => obj.lock(orientation)"

///|
fn screen_orientation_lock_ffi(
  obj : JsValue,
  orientation : JsValue,
) -> JsPromise[JsValue] {
  screen_orientation_lock_ffi_js(obj, orientation).unsafe_cast()
}

///|
extern "js" fn screen_orientation_unlock_ffi(obj : JsValue) -> Unit = "(obj) => obj.unlock()"

///|
extern "js" fn screen_orientation_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
fn screen_orientation_type_ffi(obj : JsValue) -> OrientationType {
  OrientationType::from_unchecked(
    screen_orientation_type_ffi_js(obj).unsafe_cast(),
  )
}

///|
extern "js" fn screen_orientation_angle_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.angle"

///|
fn screen_orientation_angle_ffi(obj : JsValue) -> UInt {
  screen_orientation_angle_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn screen_orientation_onchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onchange"

///|
fn screen_orientation_onchange_ffi(obj : JsValue) -> EventHandler {
  screen_orientation_onchange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn screen_orientation_set_onchange_ffi(
  obj : JsValue,
  onchange : JsValue,
) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"
