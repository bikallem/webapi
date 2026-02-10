fn attr_namespace_uri_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Attr" "get_namespaceURI"

///|
fn attr_namespace_uri_ffi(obj: JsValue) -> String {
  jsvalue_to_string(attr_namespace_uri_ffi_wasm(obj))
}

fn attr_prefix_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Attr" "get_prefix"

///|
fn attr_prefix_ffi(obj: JsValue) -> String {
  jsvalue_to_string(attr_prefix_ffi_wasm(obj))
}

fn attr_local_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Attr" "get_localName"

///|
fn attr_local_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(attr_local_name_ffi_wasm(obj))
}

fn attr_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Attr" "get_name"

///|
fn attr_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(attr_name_ffi_wasm(obj))
}

fn attr_value_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Attr" "get_value"

///|
fn attr_value_ffi(obj: JsValue) -> String {
  jsvalue_to_string(attr_value_ffi_wasm(obj))
}

fn attr_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "webapi_Attr" "set_value"

fn attr_owner_element_ffi(obj: JsValue) -> Element = "webapi_Attr" "get_ownerElement"

fn attr_specified_ffi(obj: JsValue) -> Bool = "webapi_Attr" "get_specified"