extern "js" fn file_reader_sync_new_ffi() -> FileReaderSync = "() => new FileReaderSync()"

extern "js" fn file_reader_sync_read_as_array_buffer_ffi(obj: JsValue, blob: JsValue) -> JsValue = "(obj, blob) => obj.readAsArrayBuffer(blob)"

extern "js" fn file_reader_sync_read_as_binary_string_ffi(obj: JsValue, blob: JsValue) -> JsValue = "(obj, blob) => obj.readAsBinaryString(blob)"

extern "js" fn file_reader_sync_read_as_text_ffi(obj: JsValue, blob: JsValue, encoding: JsValue) -> JsValue = "(obj, blob, encoding) => obj.readAsText(blob, encoding)"

extern "js" fn file_reader_sync_read_as_data_url_ffi(obj: JsValue, blob: JsValue) -> JsValue = "(obj, blob) => obj.readAsDataURL(blob)"