///|
#external
pub type CustomElementRegistry

///|
pub impl TJsValue for CustomElementRegistry with to_js(
  self : CustomElementRegistry,
) -> JsValue = "%identity"

///|
pub fn[T : TCustomElementRegistry] CustomElementRegistry::into(
  self : CustomElementRegistry,
) -> T = "%identity"

///|
pub impl TCustomElementRegistry for CustomElementRegistry

///|
extern "js" fn custom_element_registry_new_ffi() -> CustomElementRegistry = "() => new CustomElementRegistry()"

///|
pub fn CustomElementRegistry::new() -> CustomElementRegistry {
  custom_element_registry_new_ffi()
}

///|
#external
pub type CustomElementRegistryGet

///|
pub fn[T : TCustomElementRegistryGet] CustomElementRegistryGet::into(
  self : CustomElementRegistryGet,
) -> T = "%identity"

///|
pub impl TCustomElementRegistryGet for CustomElementRegistryGet with to_js(
  self : CustomElementRegistryGet,
) -> JsValue = "%identity"

///|
pub(open) trait TCustomElementRegistryGet {
  to_js(self : Self) -> JsValue
}

///|
pub impl TCustomElementRegistryGet for CustomElementConstructor with to_js(
  self : CustomElementConstructor,
) -> JsValue = "%identity"

///|
pub impl TCustomElementRegistryGet for Unit with to_js(self : Unit) -> JsValue = "%identity"

///|
pub trait TCustomElementRegistry: TJsValue {
  define_(
    self : Self,
    name : String,
    constructor_ : CustomElementConstructor,
    options? : ElementDefinitionOptions,
  ) -> Unit = _
  get(self : Self, name : String) -> CustomElementRegistryGet = _
  get_name(self : Self, constructor_ : CustomElementConstructor) -> String = _
  when_defined(self : Self, name : String) -> JsPromise[
    CustomElementConstructor,
  ] = _
  upgrade(self : Self, root : &TNode) -> Unit = _
  initialize(self : Self, root : &TNode) -> Unit = _
}

///|
extern "js" fn custom_element_registry_define_ffi(
  obj : JsValue,
  name : JsValue,
  constructor_ : JsValue,
  options : JsValue,
) -> Unit = "(obj, name, constructor_, options) => obj.define(obj, name, constructor_, options)"

///|
impl TCustomElementRegistry with define_(
  self : Self,
  name : String,
  constructor_ : CustomElementConstructor,
  options? : ElementDefinitionOptions = ElementDefinitionOptions::empty(),
) -> Unit {
  custom_element_registry_define_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    TJsValue::to_js(constructor_),
    TJsValue::to_js(options),
  )
}

///|
extern "js" fn custom_element_registry_get_ffi(
  obj : JsValue,
  name : JsValue,
) -> CustomElementRegistryGet = "(obj, name) => obj.get(obj, name)"

///|
impl TCustomElementRegistry with get(self : Self, name : String) -> CustomElementRegistryGet {
  custom_element_registry_get_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
extern "js" fn custom_element_registry_get_name_ffi(
  obj : JsValue,
  constructor_ : JsValue,
) -> String = "(obj, constructor_) => obj.getName(obj, constructor_)"

///|
impl TCustomElementRegistry with get_name(
  self : Self,
  constructor_ : CustomElementConstructor,
) -> String {
  custom_element_registry_get_name_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(constructor_),
  )
}

///|
extern "js" fn custom_element_registry_when_defined_ffi(
  obj : JsValue,
  name : JsValue,
) -> JsPromise[CustomElementConstructor] = "(obj, name) => obj.whenDefined(obj, name)"

///|
impl TCustomElementRegistry with when_defined(self : Self, name : String) -> JsPromise[
  CustomElementConstructor,
] {
  custom_element_registry_when_defined_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
  )
}

///|
extern "js" fn custom_element_registry_upgrade_ffi(
  obj : JsValue,
  root : JsValue,
) -> Unit = "(obj, root) => obj.upgrade(obj, root)"

///|
impl TCustomElementRegistry with upgrade(self : Self, root : &TNode) -> Unit {
  custom_element_registry_upgrade_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(root),
  )
}

///|
extern "js" fn custom_element_registry_initialize_ffi(
  obj : JsValue,
  root : JsValue,
) -> Unit = "(obj, root) => obj.initialize(obj, root)"

///|
impl TCustomElementRegistry with initialize(self : Self, root : &TNode) -> Unit {
  custom_element_registry_initialize_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(root),
  )
}
