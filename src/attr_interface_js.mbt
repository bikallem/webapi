extern "js" fn attr_namespace_uri_ffi(obj: JsValue) -> JsValue = "(obj) => obj.namespaceURI"

extern "js" fn attr_prefix_ffi(obj: JsValue) -> JsValue = "(obj) => obj.prefix"

extern "js" fn attr_local_name_ffi(obj: JsValue) -> JsValue = "(obj) => obj.localName"

extern "js" fn attr_name_ffi(obj: JsValue) -> JsValue = "(obj) => obj.name"

extern "js" fn attr_value_ffi(obj: JsValue) -> JsValue = "(obj) => obj.value"

extern "js" fn attr_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "(obj, value) => { obj.value = value; }"

extern "js" fn attr_owner_element_ffi(obj: JsValue) -> JsValue = "(obj) => obj.ownerElement"

extern "js" fn attr_specified_ffi(obj: JsValue) -> JsValue = "(obj) => obj.specified"