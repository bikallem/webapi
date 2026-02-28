///|
fn install_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> InstallEvent = "webapi_InstallEvent" "new"

///|
fn install_event_add_routes_ffi_wasm(obj : JsValue, rules : JsValue) -> JsValue = "webapi_InstallEvent" "addRoutes"

///|
fn install_event_add_routes_ffi(
  obj : JsValue,
  rules : JsValue,
) -> JsPromise[JsValue] {
  install_event_add_routes_ffi_wasm(obj, rules).unsafe_cast()
}
