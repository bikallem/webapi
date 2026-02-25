///|
extern "js" fn toggle_popover_options_ffi(
  source : JsValue,
  force : JsValue,
) -> TogglePopoverOptions =
  #|(source, force) => {
  #|  const obj = {};
  #|  if (source !== undefined) obj.source = source;
  #|  if (force !== undefined) obj.force = force;
  #|  return obj;
  #|}

///|
extern "js" fn toggle_popover_options_empty_ffi() -> TogglePopoverOptions = "() => {}"

///|
extern "js" fn toggle_popover_options_get_source_ffi(obj : JsValue) -> JsValue = "(obj) => obj.source"

///|
extern "js" fn toggle_popover_options_get_force_ffi(obj : JsValue) -> JsValue = "(obj) => obj.force"
