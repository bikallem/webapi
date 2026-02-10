///|
extern "js" fn show_popover_options_ffi(source : JsValue) -> ShowPopoverOptions =
  #|(source) => {
  #|  const obj = {};
  #|  if (source !== undefined) obj.source = source;
  #|  return obj;
  #|}

///|
extern "js" fn show_popover_options_empty_ffi() -> ShowPopoverOptions = "() => {}"
