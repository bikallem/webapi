///|
extern "js" fn readable_writable_pair_ffi(
  readable : JsValue,
  writable : JsValue,
) -> ReadableWritablePair =
  #|(readable, writable) => {
  #|  const obj = {};
  #|  if (readable !== undefined) obj.readable = readable;
  #|  if (writable !== undefined) obj.writable = writable;
  #|  return obj;
  #|}

///|
extern "js" fn readable_writable_pair_empty_ffi() -> ReadableWritablePair = "() => {}"
