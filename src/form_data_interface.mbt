// Do not edit. This file is generated.
// MoonBit type: FormData
// Specifications: xhr.idl

/// [FormData](https://developer.mozilla.org/en-US/docs/Web/API/FormData)
#external
pub type FormData

pub impl TJsValue for FormData with to_js(self: FormData) -> JsValue = "%identity"

pub impl FromJsAny for FormData with from_js_any(value : JsAny) -> FormData = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TFormData] FormData::into(self : FormData) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TFormData] FormData::unsafe_into(self : FormData) -> T = "%identity"

pub impl HasConstructor for FormData with constructor_name() { "FormData" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TFormData + HasConstructor] FormData::try_into(self : FormData) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TFormData for FormData

pub fn FormData::new(form? : &THTMLFormElement, 
submitter? : &THTMLElement) -> FormData {
  form_data_new_ffi(opt_to_js(form), opt_to_js(submitter))
}

/// [FormData](https://developer.mozilla.org/en-US/docs/Web/API/FormData) interface.
pub trait TFormData: TJsValue {
  append(self : Self, name : String, value : String) -> Unit = _
  append_blob(self : Self, name : String, blob_value : &TBlob, filename? : String) -> Unit = _
  delete(self : Self, name : String) -> Unit = _
  get(self : Self, name : String) -> FormDataEntryValue? = _
  get_all(self : Self, name : String) -> Array[FormDataEntryValue] = _
  has(self : Self, name : String) -> Bool = _
  set(self : Self, name : String, value : String) -> Unit = _
  set_blob(self : Self, name : String, blob_value : &TBlob, filename? : String) -> Unit = _
}

/// [FormData.append](https://developer.mozilla.org/en-US/docs/Web/API/FormData/append)
impl TFormData with append(self : Self, 
name : String, 
value : String) -> Unit {
  form_data_append_ffi(TJsValue::to_js(self), TJsValue::to_js(name), TJsValue::to_js(value))
}

/// [FormData.append](https://developer.mozilla.org/en-US/docs/Web/API/FormData/append)
impl TFormData with append_blob(self : Self, 
name : String, 
blob_value : &TBlob, 
filename? : String) -> Unit {
  form_data_append_blob_ffi(TJsValue::to_js(self), TJsValue::to_js(name), TJsValue::to_js(blob_value), opt_to_js(filename))
}

/// [FormData.delete](https://developer.mozilla.org/en-US/docs/Web/API/FormData/delete)
impl TFormData with delete(self : Self, 
name : String) -> Unit {
  form_data_delete_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

/// [FormData.get](https://developer.mozilla.org/en-US/docs/Web/API/FormData/get)
impl TFormData with get(self : Self, 
name : String) -> FormDataEntryValue? {
  form_data_get_ffi(TJsValue::to_js(self), TJsValue::to_js(name)).to_option()
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

/// [FormData.set](https://developer.mozilla.org/en-US/docs/Web/API/FormData/set)
impl TFormData with set_blob(self : Self, 
name : String, 
blob_value : &TBlob, 
filename? : String) -> Unit {
  form_data_set_blob_ffi(TJsValue::to_js(self), TJsValue::to_js(name), TJsValue::to_js(blob_value), opt_to_js(filename))
}

#cfg(target="js")
extern "js" fn form_data_new_ffi(form: JsValue, submitter: JsValue) -> FormData = "(form, submitter) => new FormData(form, submitter)"

#cfg(target="js")
extern "js" fn form_data_append_ffi(obj: JsValue, name: JsValue, value: JsValue) -> Unit = "(obj, name, value) => obj.append(name, value)"

#cfg(target="js")
extern "js" fn form_data_append_blob_ffi(obj: JsValue, name: JsValue, blob_value: JsValue, filename: JsValue) -> Unit = "(obj, name, blob_value, filename) => obj.append(name, blob_value, filename)"

#cfg(target="js")
extern "js" fn form_data_delete_ffi(obj: JsValue, name: JsValue) -> Unit = "(obj, name) => obj.delete(name)"

#cfg(target="js")
extern "js" fn form_data_get_ffi(obj: JsValue, name: JsValue) -> JsValue = "(obj, name) => obj.get(name)"

#cfg(target="js")
extern "js" fn form_data_get_all_ffi_js(obj: JsValue, name: JsValue) -> JsValue = "(obj, name) => obj.getAll(name)"

///|
#cfg(target="js")
fn form_data_get_all_ffi(obj: JsValue, name: JsValue) -> Array[FormDataEntryValue] {
  form_data_get_all_ffi_js(obj, name).unsafe_cast()
}

#cfg(target="js")
extern "js" fn form_data_has_ffi_js(obj: JsValue, name: JsValue) -> JsValue = "(obj, name) => obj.has(name)"

///|
#cfg(target="js")
fn form_data_has_ffi(obj: JsValue, name: JsValue) -> Bool {
  form_data_has_ffi_js(obj, name).unsafe_cast()
}

#cfg(target="js")
extern "js" fn form_data_set_ffi(obj: JsValue, name: JsValue, value: JsValue) -> Unit = "(obj, name, value) => obj.set(name, value)"

#cfg(target="js")
extern "js" fn form_data_set_blob_ffi(obj: JsValue, name: JsValue, blob_value: JsValue, filename: JsValue) -> Unit = "(obj, name, blob_value, filename) => obj.set(name, blob_value, filename)"

#cfg(target="wasm-gc")
fn form_data_new_ffi(form: JsValue, submitter: JsValue) -> FormData = "webapi_FormData" "new"

#cfg(target="wasm-gc")
fn form_data_append_ffi(obj: JsValue, name: JsValue, value: JsValue) -> Unit = "webapi_FormData" "append"

#cfg(target="wasm-gc")
fn form_data_append_blob_ffi(obj: JsValue, name: JsValue, blob_value: JsValue, filename: JsValue) -> Unit = "webapi_FormData" "append_blob"

#cfg(target="wasm-gc")
fn form_data_delete_ffi(obj: JsValue, name: JsValue) -> Unit = "webapi_FormData" "delete"

#cfg(target="wasm-gc")
fn form_data_get_ffi(obj: JsValue, name: JsValue) -> JsValue = "webapi_FormData" "get"

#cfg(target="wasm-gc")
fn form_data_get_all_ffi_wasm(obj: JsValue, name: JsValue) -> JsArray = "webapi_FormData" "getAll"

///|
#cfg(target="wasm-gc")
fn form_data_get_all_ffi(obj: JsValue, name: JsValue) -> Array[FormDataEntryValue] {
  form_data_get_all_ffi_wasm(obj, name).to_array()
}

#cfg(target="wasm-gc")
fn form_data_has_ffi(obj: JsValue, name: JsValue) -> Bool = "webapi_FormData" "has"

#cfg(target="wasm-gc")
fn form_data_set_ffi(obj: JsValue, name: JsValue, value: JsValue) -> Unit = "webapi_FormData" "set"

#cfg(target="wasm-gc")
fn form_data_set_blob_ffi(obj: JsValue, name: JsValue, blob_value: JsValue, filename: JsValue) -> Unit = "webapi_FormData" "set_blob"