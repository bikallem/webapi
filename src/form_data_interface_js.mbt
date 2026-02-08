extern "js" fn form_data_new_ffi(form: JsValue, submitter: JsValue) -> FormData = "(form, submitter) => new FormData(form, submitter)"

extern "js" fn form_data_append_ffi(obj: JsValue, name: JsValue, value: JsValue) -> Unit = "(obj, name, value) => obj.append(name, value)"

extern "js" fn form_data_append_2_ffi(obj: JsValue, name: JsValue, blob_value: JsValue, filename: JsValue) -> Unit = "(obj, name, blob_value, filename) => obj.append_2(name, blob_value, filename)"

extern "js" fn form_data_delete_ffi(obj: JsValue, name: JsValue) -> Unit = "(obj, name) => obj.delete(name)"

extern "js" fn form_data_get_ffi(obj: JsValue, name: JsValue) -> JsValue = "(obj, name) => obj.get(name)"

extern "js" fn form_data_get_all_ffi(obj: JsValue, name: JsValue) -> JsValue = "(obj, name) => obj.getAll(name)"

extern "js" fn form_data_has_ffi(obj: JsValue, name: JsValue) -> JsValue = "(obj, name) => obj.has(name)"

extern "js" fn form_data_set_ffi(obj: JsValue, name: JsValue, value: JsValue) -> Unit = "(obj, name, value) => obj.set(name, value)"

extern "js" fn form_data_set_2_ffi(obj: JsValue, name: JsValue, blob_value: JsValue, filename: JsValue) -> Unit = "(obj, name, blob_value, filename) => obj.set_2(name, blob_value, filename)"