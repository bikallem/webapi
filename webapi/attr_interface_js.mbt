extern "js" fn attr_namespace_uri_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.namespaceURI"

///|
fn attr_namespace_uri_ffi(obj: JsValue) -> String {
  attr_namespace_uri_ffi_js(obj).unsafe_cast()
}

extern "js" fn attr_prefix_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.prefix"

///|
fn attr_prefix_ffi(obj: JsValue) -> String {
  attr_prefix_ffi_js(obj).unsafe_cast()
}

extern "js" fn attr_local_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.localName"

///|
fn attr_local_name_ffi(obj: JsValue) -> String {
  attr_local_name_ffi_js(obj).unsafe_cast()
}

extern "js" fn attr_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
fn attr_name_ffi(obj: JsValue) -> String {
  attr_name_ffi_js(obj).unsafe_cast()
}

extern "js" fn attr_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.value"

///|
fn attr_value_ffi(obj: JsValue) -> String {
  attr_value_ffi_js(obj).unsafe_cast()
}

extern "js" fn attr_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "(obj, value) => { obj.value = value; }"

extern "js" fn attr_owner_element_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.ownerElement"

///|
fn attr_owner_element_ffi(obj: JsValue) -> Element {
  attr_owner_element_ffi_js(obj).unsafe_cast()
}

extern "js" fn attr_specified_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.specified"

///|
fn attr_specified_ffi(obj: JsValue) -> Bool {
  attr_specified_ffi_js(obj).unsafe_cast()
}