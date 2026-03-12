extern "js" fn readable_writable_pair_ffi(readable: JsValue, writable: JsValue) -> ReadableWritablePair = 
#|(readable, writable) => {
#|  const obj = {};
#|  if (readable !== undefined) obj.readable = readable;
#|  if (writable !== undefined) obj.writable = writable;
#|  return obj;
#|}

extern "js" fn readable_writable_pair_empty_ffi() -> ReadableWritablePair = "() => {}"

extern "js" fn readable_writable_pair_get_readable_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.readable"

///|
fn readable_writable_pair_get_readable_ffi(obj: JsValue) -> ReadableStream {
  readable_writable_pair_get_readable_ffi_js(obj).unsafe_cast()
}

extern "js" fn readable_writable_pair_get_writable_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.writable"

///|
fn readable_writable_pair_get_writable_ffi(obj: JsValue) -> WritableStream {
  readable_writable_pair_get_writable_ffi_js(obj).unsafe_cast()
}