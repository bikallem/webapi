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
pub trait TCustomElementRegistry: TJsValue {
  define(
    self : Self,
    name : String,
    constructor : CustomElementConstructor,
    options? : ElementDefinitionOptions,
  ) -> Unit = _
  get(self : Self, name : String) -> JsValue = _
  get_name(self : Self, constructor : CustomElementConstructor) -> String = _
  when_defined(self : Self, name : String) -> JsValue = _
  upgrade(self : Self, root : &TNode) -> Unit = _
  initialize(self : Self, root : &TNode) -> Unit = _
}

///|
extern "js" fn custom_element_registry_define_ffi(
  obj : JsValue,
  name : JsValue,
  constructor : JsValue,
  options : JsValue,
) -> Unit = "(obj, name, constructor, options) => obj.define(obj, name, constructor, options)"

///|
impl TCustomElementRegistry with define(
  self : Self,
  name : String,
  constructor : CustomElementConstructor,
  options? : ElementDefinitionOptions = ElementDefinitionOptions::empty(),
) -> Unit {
  custom_element_registry_define_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    TJsValue::to_js(constructor),
    TJsValue::to_js(options),
  )
}

///|
extern "js" fn custom_element_registry_get_ffi(
  obj : JsValue,
  name : JsValue,
) -> JsValue = "(obj, name) => obj.get(obj, name)"

///|
impl TCustomElementRegistry with get(self : Self, name : String) -> JsValue {
  custom_element_registry_get_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
extern "js" fn custom_element_registry_get_name_ffi(
  obj : JsValue,
  constructor : JsValue,
) -> String = "(obj, constructor) => obj.getName(obj, constructor)"

///|
impl TCustomElementRegistry with get_name(
  self : Self,
  constructor : CustomElementConstructor,
) -> String {
  custom_element_registry_get_name_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(constructor),
  )
}

///|
extern "js" fn custom_element_registry_when_defined_ffi(
  obj : JsValue,
  name : JsValue,
) -> JsValue = "(obj, name) => obj.whenDefined(obj, name)"

///|
impl TCustomElementRegistry with when_defined(self : Self, name : String) -> JsValue {
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
