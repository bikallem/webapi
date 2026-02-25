///|
fn readable_stream_new_ffi(
  underlying_source : JsValue,
  strategy : JsValue,
) -> ReadableStream = "webapi_ReadableStream" "new"

///|
fn readable_stream_from_ffi(async_iterable : JsValue) -> ReadableStream = "webapi_ReadableStream" "from"

///|
fn readable_stream_locked_ffi(obj : JsValue) -> Bool = "webapi_ReadableStream" "get_locked"

///|
fn readable_stream_cancel_ffi_wasm(obj : JsValue, reason : JsValue) -> JsValue = "webapi_ReadableStream" "cancel"

///|
fn readable_stream_cancel_ffi(
  obj : JsValue,
  reason : JsValue,
) -> JsPromise[JsValue] {
  readable_stream_cancel_ffi_wasm(obj, reason).unsafe_cast()
}

///|
fn readable_stream_get_reader_ffi_wasm(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "webapi_ReadableStream" "getReader"

///|
fn readable_stream_get_reader_ffi(
  obj : JsValue,
  options : JsValue,
) -> ReadableStreamReader {
  readable_stream_get_reader_ffi_wasm(obj, options).unsafe_cast()
}

///|
fn readable_stream_pipe_through_ffi(
  obj : JsValue,
  transform : JsValue,
  options : JsValue,
) -> ReadableStream = "webapi_ReadableStream" "pipeThrough"

///|
fn readable_stream_pipe_to_ffi_wasm(
  obj : JsValue,
  destination : JsValue,
  options : JsValue,
) -> JsValue = "webapi_ReadableStream" "pipeTo"

///|
fn readable_stream_pipe_to_ffi(
  obj : JsValue,
  destination : JsValue,
  options : JsValue,
) -> JsPromise[JsValue] {
  readable_stream_pipe_to_ffi_wasm(obj, destination, options).unsafe_cast()
}

///|
fn readable_stream_tee_ffi_wasm(obj : JsValue) -> JsArray = "webapi_ReadableStream" "tee"

///|
fn readable_stream_tee_ffi(obj : JsValue) -> Array[ReadableStream] {
  readable_stream_tee_ffi_wasm(obj).to_array()
}
