///|
#external
pub type FormData

///|
pub impl TJsValue for FormData with to_js(self : FormData) -> JsValue = "%identity"

///|
pub fn[T : TFormData] FormData::into(self : FormData) -> T = "%identity"

///|
pub impl TFormData for FormData

///|
extern "js" fn form_data_ffi(form : JsValue, submitter : JsValue) -> FormData = "(form, submitter) => new FormData(form, submitter)"

///|
pub fn FormData::new(
  form? : &THTMLFormElement,
  submitter? : &THTMLElement = JsValue::null(),
) -> FormData {
  form_data_ffi(opt_to_js(form), TJsValue::to_js(submitter))
}

///|
pub trait TFormData: TJsValue {
  append(self : Self, name : String, value : String) -> Unit = _
  append_2(self : Self, name : String, blob_value : &TBlob, filename? : String) -> Unit = _
  delete(self : Self, name : String) -> Unit = _
  get(self : Self, name : String) -> FormDataEntryValue = _
  get_all(self : Self, name : String) -> Array[FormDataEntryValue] = _
  has(self : Self, name : String) -> Bool = _
  set(self : Self, name : String, value : String) -> Unit = _
  set_2(self : Self, name : String, blob_value : &TBlob, filename? : String) -> Unit = _
}

///|
extern "js" fn form_data_append_ffi(
  obj : JsValue,
  name : JsValue,
  value : JsValue,
) -> Unit = "(obj, name, value) => obj.append(obj, name, value)"

///|
impl TFormData with append(self : Self, name : String, value : String) -> Unit {
  form_data_append_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    TJsValue::to_js(value),
  )
}

///|
extern "js" fn form_data_append_2_ffi(
  obj : JsValue,
  name : JsValue,
  blob_value : JsValue,
  filename : JsValue,
) -> Unit = "(obj, name, blob_value, filename) => obj.append_2(obj, name, blob_value, filename)"

///|
impl TFormData with append_2(
  self : Self,
  name : String,
  blob_value : &TBlob,
  filename? : String,
) -> Unit {
  form_data_append_2_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    TJsValue::to_js(blob_value),
    opt_to_js(filename),
  )
}

///|
extern "js" fn form_data_delete_ffi(obj : JsValue, name : JsValue) -> Unit = "(obj, name) => obj.delete(obj, name)"

///|
impl TFormData with delete(self : Self, name : String) -> Unit {
  form_data_delete_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
extern "js" fn form_data_get_ffi(
  obj : JsValue,
  name : JsValue,
) -> FormDataEntryValue = "(obj, name) => obj.get(obj, name)"

///|
impl TFormData with get(self : Self, name : String) -> FormDataEntryValue {
  form_data_get_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
extern "js" fn form_data_get_all_ffi(
  obj : JsValue,
  name : JsValue,
) -> Array[FormDataEntryValue] = "(obj, name) => obj.getAll(obj, name)"

///|
impl TFormData with get_all(self : Self, name : String) -> Array[
  FormDataEntryValue,
] {
  form_data_get_all_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
extern "js" fn form_data_has_ffi(obj : JsValue, name : JsValue) -> Bool = "(obj, name) => obj.has(obj, name)"

///|
impl TFormData with has(self : Self, name : String) -> Bool {
  form_data_has_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
extern "js" fn form_data_set_ffi(
  obj : JsValue,
  name : JsValue,
  value : JsValue,
) -> Unit = "(obj, name, value) => obj.set(obj, name, value)"

///|
impl TFormData with set(self : Self, name : String, value : String) -> Unit {
  form_data_set_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    TJsValue::to_js(value),
  )
}

///|
extern "js" fn form_data_set_2_ffi(
  obj : JsValue,
  name : JsValue,
  blob_value : JsValue,
  filename : JsValue,
) -> Unit = "(obj, name, blob_value, filename) => obj.set_2(obj, name, blob_value, filename)"

///|
impl TFormData with set_2(
  self : Self,
  name : String,
  blob_value : &TBlob,
  filename? : String,
) -> Unit {
  form_data_set_2_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    TJsValue::to_js(blob_value),
    opt_to_js(filename),
  )
}
