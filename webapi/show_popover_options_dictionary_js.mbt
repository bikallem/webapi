extern "js" fn show_popover_options_ffi(source: JsValue) -> ShowPopoverOptions = 
#|(source) => {
#|  const obj = {};
#|  if (source !== undefined) obj.source = source;
#|  return obj;
#|}

extern "js" fn show_popover_options_empty_ffi() -> ShowPopoverOptions = "() => {}"

extern "js" fn show_popover_options_get_source_ffi(obj: JsValue) -> JsValue = "(obj) => obj.source"