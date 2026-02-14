///|
fn create_text_blob(text : String, mime : String) -> @webapi.Blob {
  create_text_blob_ffi(
    @webapi.TJsValue::to_js(text),
    @webapi.TJsValue::to_js(mime),
  )
}

///|
fn create_text_blob_ffi(
  text : @webapi.JsValue,
  mime : @webapi.JsValue,
) -> @webapi.Blob = "webapi_FileApiExample" "createTextBlob"

///|
fn create_text_file(
  text : String,
  name : String,
  mime : String,
) -> @webapi.File {
  create_text_file_ffi(
    @webapi.TJsValue::to_js(text),
    @webapi.TJsValue::to_js(name),
    @webapi.TJsValue::to_js(mime),
  )
}

///|
fn create_text_file_ffi(
  text : @webapi.JsValue,
  name : @webapi.JsValue,
  mime : @webapi.JsValue,
) -> @webapi.File = "webapi_FileApiExample" "createTextFile"

///|
fn file_reader_result_to_string(result : @webapi.FileReaderResult) -> String {
  file_reader_result_to_string_ffi(result_to_jsvalue(result))
}

///|
fn result_to_jsvalue(result : @webapi.FileReaderResult) -> @webapi.JsValue = "%identity"

///|
fn file_reader_result_to_string_ffi(result : @webapi.JsValue) -> String = "webapi_FileApiExample" "resultToString"
