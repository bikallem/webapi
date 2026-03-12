extern "js" fn resize_observer_options_ffi(box: JsValue) -> ResizeObserverOptions = 
#|(box) => {
#|  const obj = {};
#|  if (box !== undefined) obj.box = box;
#|  return obj;
#|}

extern "js" fn resize_observer_options_empty_ffi() -> ResizeObserverOptions = "() => {}"

extern "js" fn resize_observer_options_get_box_ffi(obj: JsValue) -> JsValue = "(obj) => obj.box"