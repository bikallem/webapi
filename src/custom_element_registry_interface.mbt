// Do not edit. This file is generated.
// MoonBit type: CustomElementRegistry
// Specifications: html.idl

///|
/// [CustomElementRegistry](https://developer.mozilla.org/en-US/docs/Web/API/CustomElementRegistry)
#external
pub type CustomElementRegistry

///|
pub impl TJsValue for CustomElementRegistry with to_js(
  self : CustomElementRegistry,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for CustomElementRegistry with from_js_any(value : JsAny) -> CustomElementRegistry = "%identity"

///|
pub fn[T : TCustomElementRegistry] CustomElementRegistry::into(
  self : CustomElementRegistry,
) -> T = "%identity"

///|
pub impl TCustomElementRegistry for CustomElementRegistry

///|
pub fn CustomElementRegistry::new() -> CustomElementRegistry {
  custom_element_registry_new_ffi()
}

///|
#external
pub type CustomElementRegistryGet

///|
pub impl TJsValue for CustomElementRegistryGet with to_js(
  self : CustomElementRegistryGet,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for CustomElementRegistryGet with from_js_any(value : JsAny) -> CustomElementRegistryGet = "%identity"

///|
pub fn[T : TCustomElementRegistryGet + FromJsAny] CustomElementRegistryGet::into(
  self : CustomElementRegistryGet,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TCustomElementRegistryGet] CustomElementRegistryGet::from(
  value : T,
) -> CustomElementRegistryGet = "%identity"

///|
pub fn CustomElementRegistryGet::is_undefined(
  self : CustomElementRegistryGet,
) -> Bool {
  custom_element_registry_get_is_undefined_ffi(self)
}

///|
pub impl TCustomElementRegistryGet for CustomElementRegistryGet

///|
pub(open) trait TCustomElementRegistryGet: TJsValue {}

///|
pub impl TCustomElementRegistryGet for CustomElementConstructor

///|
pub impl TCustomElementRegistryGet for JsUndefined

///|
/// [CustomElementRegistry](https://developer.mozilla.org/en-US/docs/Web/API/CustomElementRegistry) interface.
pub trait TCustomElementRegistry: TJsValue {
  define_(
    self : Self,
    name : String,
    constructor_ : () -> HTMLElement,
    options? : ElementDefinitionOptions,
  ) -> Unit = _
  get(self : Self, name : String) -> CustomElementRegistryGet = _
  get_name(self : Self, constructor_ : () -> HTMLElement) -> String? = _
  when_defined(self : Self, name : String) -> JsPromise[
    CustomElementConstructor,
  ] = _
  upgrade(self : Self, root : &TNode) -> Unit = _
  initialize(self : Self, root : &TNode) -> Unit = _
}

///|
/// [CustomElementRegistry.define](https://developer.mozilla.org/en-US/docs/Web/API/CustomElementRegistry/define)
impl TCustomElementRegistry with define_(
  self : Self,
  name : String,
  constructor_ : () -> HTMLElement,
  options? : ElementDefinitionOptions,
) -> Unit {
  custom_element_registry_define_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    TJsValue::to_js(custom_element_constructor_ffi(constructor_)),
    opt_to_js(options),
  )
}

///|
/// [CustomElementRegistry.get](https://developer.mozilla.org/en-US/docs/Web/API/CustomElementRegistry/get)
impl TCustomElementRegistry with get(self : Self, name : String) -> CustomElementRegistryGet {
  custom_element_registry_get_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
/// [CustomElementRegistry.getName](https://developer.mozilla.org/en-US/docs/Web/API/CustomElementRegistry/getName)
impl TCustomElementRegistry with get_name(
  self : Self,
  constructor_ : () -> HTMLElement,
) -> String? {
  custom_element_registry_get_name_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(custom_element_constructor_ffi(constructor_)),
  ).to_option_prim()
}

///|
/// [CustomElementRegistry.whenDefined](https://developer.mozilla.org/en-US/docs/Web/API/CustomElementRegistry/whenDefined)
impl TCustomElementRegistry with when_defined(self : Self, name : String) -> JsPromise[
  CustomElementConstructor,
] {
  custom_element_registry_when_defined_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
  )
}

///|
/// [CustomElementRegistry.upgrade](https://developer.mozilla.org/en-US/docs/Web/API/CustomElementRegistry/upgrade)
impl TCustomElementRegistry with upgrade(self : Self, root : &TNode) -> Unit {
  custom_element_registry_upgrade_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(root),
  )
}

///|
/// [CustomElementRegistry.initialize](https://developer.mozilla.org/en-US/docs/Web/API/CustomElementRegistry/initialize)
impl TCustomElementRegistry with initialize(self : Self, root : &TNode) -> Unit {
  custom_element_registry_initialize_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(root),
  )
}

///|
#cfg(target="js")
extern "js" fn custom_element_registry_new_ffi() -> CustomElementRegistry = "() => new CustomElementRegistry()"

///|
#cfg(target="js")
extern "js" fn custom_element_registry_get_is_undefined_ffi(
  obj : CustomElementRegistryGet,
) -> Bool = "(obj) => obj === undefined"

///|
#cfg(target="js")
extern "js" fn custom_element_registry_define_ffi(
  obj : JsValue,
  name : JsValue,
  constructor_ : JsValue,
  options : JsValue,
) -> Unit = "(obj, name, constructor_, options) => obj.define(name, constructor_, options)"

///|
#cfg(target="js")
extern "js" fn custom_element_registry_get_ffi_js(
  obj : JsValue,
  name : JsValue,
) -> JsValue = "(obj, name) => obj.get(name)"

///|
#cfg(target="js")
fn custom_element_registry_get_ffi(
  obj : JsValue,
  name : JsValue,
) -> CustomElementRegistryGet {
  custom_element_registry_get_ffi_js(obj, name).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn custom_element_registry_get_name_ffi(
  obj : JsValue,
  constructor_ : JsValue,
) -> JsValue = "(obj, constructor_) => obj.getName(constructor_)"

///|
#cfg(target="js")
extern "js" fn custom_element_registry_when_defined_ffi_js(
  obj : JsValue,
  name : JsValue,
) -> JsValue = "(obj, name) => obj.whenDefined(name)"

///|
#cfg(target="js")
fn custom_element_registry_when_defined_ffi(
  obj : JsValue,
  name : JsValue,
) -> JsPromise[CustomElementConstructor] {
  custom_element_registry_when_defined_ffi_js(obj, name).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn custom_element_registry_upgrade_ffi(
  obj : JsValue,
  root : JsValue,
) -> Unit = "(obj, root) => obj.upgrade(root)"

///|
#cfg(target="js")
extern "js" fn custom_element_registry_initialize_ffi(
  obj : JsValue,
  root : JsValue,
) -> Unit = "(obj, root) => obj.initialize(root)"

///|
#cfg(target="wasm-gc")
fn custom_element_registry_new_ffi() -> CustomElementRegistry = "webapi_CustomElementRegistry" "new"

///|
#cfg(target="wasm-gc")
fn custom_element_registry_get_is_undefined_ffi(
  obj : CustomElementRegistryGet,
) -> Bool = "JsValue" "isUndefined"

///|
#cfg(target="wasm-gc")
fn custom_element_registry_define_ffi(
  obj : JsValue,
  name : JsValue,
  constructor_ : JsValue,
  options : JsValue,
) -> Unit = "webapi_CustomElementRegistry" "define"

///|
#cfg(target="wasm-gc")
fn custom_element_registry_get_ffi_wasm(
  obj : JsValue,
  name : JsValue,
) -> JsValue = "webapi_CustomElementRegistry" "get"

///|
#cfg(target="wasm-gc")
fn custom_element_registry_get_ffi(
  obj : JsValue,
  name : JsValue,
) -> CustomElementRegistryGet {
  custom_element_registry_get_ffi_wasm(obj, name).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn custom_element_registry_get_name_ffi(
  obj : JsValue,
  constructor_ : JsValue,
) -> JsValue = "webapi_CustomElementRegistry" "getName"

///|
#cfg(target="wasm-gc")
fn custom_element_registry_when_defined_ffi_wasm(
  obj : JsValue,
  name : JsValue,
) -> JsValue = "webapi_CustomElementRegistry" "whenDefined"

///|
#cfg(target="wasm-gc")
fn custom_element_registry_when_defined_ffi(
  obj : JsValue,
  name : JsValue,
) -> JsPromise[CustomElementConstructor] {
  custom_element_registry_when_defined_ffi_wasm(obj, name).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn custom_element_registry_upgrade_ffi(obj : JsValue, root : JsValue) -> Unit = "webapi_CustomElementRegistry" "upgrade"

///|
#cfg(target="wasm-gc")
fn custom_element_registry_initialize_ffi(
  obj : JsValue,
  root : JsValue,
) -> Unit = "webapi_CustomElementRegistry" "initialize"
