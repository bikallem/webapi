///|
extern "js" fn install_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> InstallEvent = "(type_, event_init_dict) => new InstallEvent(type_, event_init_dict)"

///|
extern "js" fn install_event_add_routes_ffi_js(
  obj : JsValue,
  rules : JsValue,
) -> JsValue = "(obj, rules) => obj.addRoutes(rules)"

///|
fn install_event_add_routes_ffi(
  obj : JsValue,
  rules : JsValue,
) -> JsPromise[JsValue] {
  install_event_add_routes_ffi_js(obj, rules).unsafe_cast()
}
