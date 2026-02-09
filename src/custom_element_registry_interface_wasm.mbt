///|
fn custom_element_registry_new_ffi() -> CustomElementRegistry = "webapi_CustomElementRegistry" "new"

///|
fn custom_element_registry_get_is_undefined_ffi(
  obj : CustomElementRegistryGet,
) -> Bool = "JsValue" "isNull"

///|
fn custom_element_registry_define_ffi(
  obj : JsValue,
  name : JsValue,
  constructor_ : JsValue,
  options : JsValue,
) -> Unit = "webapi_CustomElementRegistry" "define"

///|
fn custom_element_registry_get_ffi_wasm(
  obj : JsValue,
  name : JsValue,
) -> JsValue = "webapi_CustomElementRegistry" "get"

///|
fn custom_element_registry_get_ffi(
  obj : JsValue,
  name : JsValue,
) -> CustomElementRegistryGet {
  custom_element_registry_get_ffi_wasm(obj, name).unsafe_cast()
}

///|
fn custom_element_registry_get_name_ffi(
  obj : JsValue,
  constructor_ : JsValue,
) -> JsValue = "webapi_CustomElementRegistry" "getName"

///|
fn custom_element_registry_when_defined_ffi_wasm(
  obj : JsValue,
  name : JsValue,
) -> JsValue = "webapi_CustomElementRegistry" "whenDefined"

///|
fn custom_element_registry_when_defined_ffi(
  obj : JsValue,
  name : JsValue,
) -> JsPromise[CustomElementConstructor] {
  custom_element_registry_when_defined_ffi_wasm(obj, name).unsafe_cast()
}

///|
fn custom_element_registry_upgrade_ffi(obj : JsValue, root : JsValue) -> Unit = "webapi_CustomElementRegistry" "upgrade"

///|
fn custom_element_registry_initialize_ffi(
  obj : JsValue,
  root : JsValue,
) -> Unit = "webapi_CustomElementRegistry" "initialize"
