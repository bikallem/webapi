// Do not edit. This file is generated.
// MoonBit type: FormData
// Specifications: xhr.idl

/// [FormData](https://developer.mozilla.org/en-US/docs/Web/API/FormData)
#external
pub type FormData

pub impl TJsValue for FormData with to_js(self: FormData) -> JsValue = "%identity"

pub fn[T: TFormData] FormData::into(self : FormData) -> T = "%identity"

pub impl TFormData for FormData

pub fn FormData::new(form? : &THTMLFormElement, 
submitter? : &THTMLElement = JsValue::null()) -> FormData {
  form_data_new_ffi(opt_to_js(form), TJsValue::to_js(submitter))
}

/// [FormData](https://developer.mozilla.org/en-US/docs/Web/API/FormData) interface.
pub trait TFormData: TJsValue {
  append(self : Self, name : String, value : String) -> Unit = _
  append_2(self : Self, name : String, blob_value : &TBlob, filename? : String) -> Unit = _
  delete(self : Self, name : String) -> Unit = _
  get(self : Self, name : String) -> FormDataEntryValue? = _
  get_all(self : Self, name : String) -> Array[FormDataEntryValue] = _
  has(self : Self, name : String) -> Bool = _
  set(self : Self, name : String, value : String) -> Unit = _
  set_2(self : Self, name : String, blob_value : &TBlob, filename? : String) -> Unit = _
}

/// [FormData.append](https://developer.mozilla.org/en-US/docs/Web/API/FormData/append)
impl TFormData with append(self : Self, 
name : String, 
value : String) -> Unit {
  form_data_append_ffi(TJsValue::to_js(self), TJsValue::to_js(name), TJsValue::to_js(value))
}

/// [FormData.append_2](https://developer.mozilla.org/en-US/docs/Web/API/FormData/append_2)
impl TFormData with append_2(self : Self, 
name : String, 
blob_value : &TBlob, 
filename? : String) -> Unit {
  form_data_append_2_ffi(TJsValue::to_js(self), TJsValue::to_js(name), TJsValue::to_js(blob_value), opt_to_js(filename))
}

/// [FormData.delete](https://developer.mozilla.org/en-US/docs/Web/API/FormData/delete)
impl TFormData with delete(self : Self, 
name : String) -> Unit {
  form_data_delete_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

/// [FormData.get](https://developer.mozilla.org/en-US/docs/Web/API/FormData/get)
impl TFormData with get(self : Self, 
name : String) -> FormDataEntryValue? {
  let result = form_data_get_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

/// [FormData.getAll](https://developer.mozilla.org/en-US/docs/Web/API/FormData/getAll)
impl TFormData with get_all(self : Self, 
name : String) -> Array[FormDataEntryValue] {
  form_data_get_all_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

/// [FormData.has](https://developer.mozilla.org/en-US/docs/Web/API/FormData/has)
impl TFormData with has(self : Self, 
name : String) -> Bool {
  form_data_has_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

/// [FormData.set](https://developer.mozilla.org/en-US/docs/Web/API/FormData/set)
impl TFormData with set(self : Self, 
name : String, 
value : String) -> Unit {
  form_data_set_ffi(TJsValue::to_js(self), TJsValue::to_js(name), TJsValue::to_js(value))
}

/// [FormData.set_2](https://developer.mozilla.org/en-US/docs/Web/API/FormData/set_2)
impl TFormData with set_2(self : Self, 
name : String, 
blob_value : &TBlob, 
filename? : String) -> Unit {
  form_data_set_2_ffi(TJsValue::to_js(self), TJsValue::to_js(name), TJsValue::to_js(blob_value), opt_to_js(filename))
}