///|
test "arg_default_value" {
  let registry = @type_registry.TypeRegistry::new([])

  // Test basic default values
  inspect(
    arg_default_value(@parser.Null, @parser.Identifier("MyType"), registry),
    content="MyType::null()",
  )
  inspect(
    arg_default_value(@parser.EmptyObject, @parser.Identifier("Dict"), registry),
    content="Dict::empty()",
  )
  inspect(
    arg_default_value(@parser.EmptySequence, @parser.Boolean, registry),
    content="[]",
  )
  inspect(
    arg_default_value(
      @parser.Undefined,
      @parser.Identifier("SomeType"),
      registry,
    ),
    content="SomeType::undefined()",
  )
}

///|
test "arg_default_value/string_values" {
  let registry = @type_registry.TypeRegistry::new([])

  // Test string default values for regular types
  inspect(
    arg_default_value(@parser.String("hello"), @parser.DOMString, registry),
    content="\"hello\"",
  )

  // Test string default values for enum types (when registry indicates it's an enum)
  let state_enum = @parser.DefinitionExtendedAttributes::{
    extended_attributes: [],
    definition: @parser.Enum({
      name: "State",
      values: ["active", "inactive", "pending"],
    }),
  }
  let enum_registry = @type_registry.TypeRegistry::new([state_enum])
  // Note: This test assumes the registry will properly identify enums
  inspect(
    arg_default_value(
      @parser.String("active"),
      @parser.Identifier("State"),
      enum_registry,
    ),
    content="State::Active", // Now properly recognized as enum
  )
}

///|
test "arg_default_value/const_values" {
  let registry = @type_registry.TypeRegistry::new([])

  // Test constant boolean values
  inspect(
    arg_default_value(
      @parser.ConstValue(@parser.Boolean("true")),
      @parser.Boolean,
      registry,
    ),
    content="true",
  )
  inspect(
    arg_default_value(
      @parser.ConstValue(@parser.Boolean("false")),
      @parser.Boolean,
      registry,
    ),
    content="false",
  )

  // Test constant numeric values
  inspect(
    arg_default_value(
      @parser.ConstValue(@parser.Integer("42")),
      @parser.Long,
      registry,
    ),
    content="42",
  )
  inspect(
    arg_default_value(
      @parser.ConstValue(@parser.Float(@parser.Float("3.14"))),
      @parser.Double,
      registry,
    ),
    content="3.14",
  )

  // Test special float values
  inspect(
    arg_default_value(
      @parser.ConstValue(@parser.Float(@parser.Infinity)),
      @parser.Double,
      registry,
    ),
    content="@float.infinity",
  )
  inspect(
    arg_default_value(
      @parser.ConstValue(@parser.Float(@parser.NegInfinity)),
      @parser.Double,
      registry,
    ),
    content="@float.neg_infinity",
  )
  inspect(
    arg_default_value(
      @parser.ConstValue(@parser.Float(@parser.NaN)),
      @parser.Double,
      registry,
    ),
    content="@float.not_a_number",
  )
}

///|
test "emit_js() generates MoonBit code for interface" {
  let idl =
    #|[Exposed=*]
    #|interface EventTarget {
    #|  constructor();
    #|  undefined addEventListener(DOMString type, EventListener? callback, optional (AddEventListenerOptions or boolean) options = {});
    #|  undefined removeEventListener(DOMString type, EventListener? callback, optional (EventListenerOptions or boolean) options = {});
    #|  boolean dispatchEvent(Event event);
    #|  [CEReactions, NewObject] Element createElement(DOMString localName, optional (DOMString or ElementCreationOptions) options = {});
    #|};
  let definitions = @parser.parse(idl)
  let type_registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let interface_emitter = InterfaceEmitter::{ idl: flattened, type_registry }
  let (_, emits) = interface_emitter.emit("EventTarget")
  let code = mbt_code_gen(emits)
  inspect(
    code,
    content=(
      #|#external
      #|pub type EventTarget
      #|
      #|pub impl TJsValue for EventTarget with to_js(self: EventTarget) -> JsValue = "%identity"
      #|
      #|pub fn[T: TEventTarget] EventTarget::into(self : EventTarget) -> T = "%identity"
      #|
      #|pub impl TEventTarget for EventTarget
      #|
      #|extern "js" fn event_target_ffi() -> EventTarget = "() => new EventTarget()"
      #|
      #|pub fn EventTarget::new() -> EventTarget {
      #|  event_target_ffi()
      #|}
      #|
      #|pub(open) trait TAddEventListenerOptionsArg {
      #|  to_js(self : Self) -> JsValue
      #|}
      #|
      #|pub impl TAddEventListenerOptionsArg for AddEventListenerOptions with to_js(self : AddEventListenerOptions) -> JsValue = "%identity"
      #|
      #|pub impl TAddEventListenerOptionsArg for Bool with to_js(self : Bool) -> JsValue = "%identity"
      #|
      #|pub(open) trait TRemoveEventListenerOptionsArg {
      #|  to_js(self : Self) -> JsValue
      #|}
      #|
      #|pub impl TRemoveEventListenerOptionsArg for EventListenerOptions with to_js(self : EventListenerOptions) -> JsValue = "%identity"
      #|
      #|pub impl TRemoveEventListenerOptionsArg for Bool with to_js(self : Bool) -> JsValue = "%identity"
      #|
      #|pub(open) trait TCreateElementOptionsArg {
      #|  to_js(self : Self) -> JsValue
      #|}
      #|
      #|pub impl TCreateElementOptionsArg for String with to_js(self : String) -> JsValue = "%identity"
      #|
      #|pub impl TCreateElementOptionsArg for ElementCreationOptions with to_js(self : ElementCreationOptions) -> JsValue = "%identity"
      #|
      #|pub trait TEventTarget: TJsValue {
      #|  add_event_listener(self : Self, type_ : String, callback : EventListener, options? : &TAddEventListenerOptionsArg) -> Unit = _
      #|  remove_event_listener(self : Self, type_ : String, callback : EventListener, options? : &TRemoveEventListenerOptionsArg) -> Unit = _
      #|  dispatch_event(self : Self, event : Event) -> Bool = _
      #|  create_element(self : Self, local_name : String, options? : &TCreateElementOptionsArg) -> Element = _
      #|}
      #|
      #|extern "js" fn event_target_add_event_listener_ffi(obj: JsValue, type_: JsValue, callback: JsValue, options: JsValue) -> Unit = "(obj, type_, callback, options) => obj.addEventListener(obj, type_, callback, options)"
      #|
      #|impl TEventTarget with add_event_listener(self : Self, 
      #|type_ : String, 
      #|callback : EventListener, 
      #|options? : &TAddEventListenerOptionsArg = AddEventListenerOptions::empty()) -> Unit {
      #|  event_target_add_event_listener_ffi(TJsValue::to_js(self), TJsValue::to_js(type_), TJsValue::to_js(callback), TJsValue::to_js(options))
      #|}
      #|
      #|extern "js" fn event_target_remove_event_listener_ffi(obj: JsValue, type_: JsValue, callback: JsValue, options: JsValue) -> Unit = "(obj, type_, callback, options) => obj.removeEventListener(obj, type_, callback, options)"
      #|
      #|impl TEventTarget with remove_event_listener(self : Self, 
      #|type_ : String, 
      #|callback : EventListener, 
      #|options? : &TRemoveEventListenerOptionsArg = EventListenerOptions::empty()) -> Unit {
      #|  event_target_remove_event_listener_ffi(TJsValue::to_js(self), TJsValue::to_js(type_), TJsValue::to_js(callback), TJsValue::to_js(options))
      #|}
      #|
      #|extern "js" fn event_target_dispatch_event_ffi(obj: JsValue, event: JsValue) -> Bool = "(obj, event) => obj.dispatchEvent(obj, event)"
      #|
      #|impl TEventTarget with dispatch_event(self : Self, 
      #|event : Event) -> Bool {
      #|  event_target_dispatch_event_ffi(TJsValue::to_js(self), TJsValue::to_js(event))
      #|}
      #|
      #|extern "js" fn event_target_create_element_ffi(obj: JsValue, local_name: JsValue, options: JsValue) -> Element = "(obj, local_name, options) => obj.createElement(obj, local_name, options)"
      #|
      #|impl TEventTarget with create_element(self : Self, 
      #|local_name : String, 
      #|options? : &TCreateElementOptionsArg = ElementCreationOptions::empty()) -> Element {
      #|  event_target_create_element_ffi(TJsValue::to_js(self), TJsValue::to_js(local_name), TJsValue::to_js(options))
      #|}
    ),
  )
}

///|
test "emit_js() generates MoonBit code for dictionary" {
  let idl =
    #|dictionary CanvasRenderingContext2DSettings {
    #|  boolean alpha = true;
    #|  boolean desynchronized = false;
    #|  PredefinedColorSpace colorSpace = "srgb";
    #|  CanvasColorType colorType = "unorm8";
    #|  boolean willReadFrequently = false;
    #|};
  let definitions = @parser.parse(idl)
  let predefined_color_space_enum = @parser.DefinitionExtendedAttributes::{
    extended_attributes: [],
    definition: @parser.Enum({ name: "PredefinedColorSpace", values: ["srgb"] }),
  }
  let canvas_color_type_enum = @parser.DefinitionExtendedAttributes::{
    extended_attributes: [],
    definition: @parser.Enum({ name: "CanvasColorType", values: ["unorm8"] }),
  }
  definitions.push(predefined_color_space_enum)
  definitions.push(canvas_color_type_enum)
  let type_registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let dictionary_emitter = DictionaryEmitter::{ idl: flattened, type_registry }
  let (_, emits) = dictionary_emitter.emit("CanvasRenderingContext2DSettings")
  let code = mbt_code_gen(emits)
  inspect(
    code,
    content=(
      #|#external
      #|pub type CanvasRenderingContext2DSettings
      #|
      #|pub impl TJsValue for CanvasRenderingContext2DSettings with to_js(self: CanvasRenderingContext2DSettings) -> JsValue = "%identity"
      #|
      #|extern "js" fn canvas_rendering_context2d_settings_ffi(alpha: JsValue, desynchronized: JsValue, color_space: JsValue, color_type: JsValue, will_read_frequently: JsValue) -> CanvasRenderingContext2DSettings = 
      #|#|(alpha, desynchronized, colorSpace, colorType, willReadFrequently) => {
      #|#|  const obj = {};
      #|#|  if (alpha !== undefined) obj.alpha = alpha;
      #|#|  if (desynchronized !== undefined) obj.desynchronized = desynchronized;
      #|#|  if (colorSpace !== undefined) obj.colorSpace = colorSpace;
      #|#|  if (colorType !== undefined) obj.colorType = colorType;
      #|#|  if (willReadFrequently !== undefined) obj.willReadFrequently = willReadFrequently;
      #|#|  return obj;
      #|#|}
      #|
      #|pub fn CanvasRenderingContext2DSettings::new(alpha? : Bool = true, 
      #|desynchronized? : Bool = false, 
      #|color_space? : PredefinedColorSpace = PredefinedColorSpace::Srgb, 
      #|color_type? : CanvasColorType = CanvasColorType::Unorm8, 
      #|will_read_frequently? : Bool = false) -> CanvasRenderingContext2DSettings {
      #|  canvas_rendering_context2d_settings_ffi(TJsValue::to_js(alpha), TJsValue::to_js(desynchronized), TJsValue::to_js(color_space), TJsValue::to_js(color_type), TJsValue::to_js(will_read_frequently))
      #|}
      #|
      #|extern "js" fn canvas_rendering_context2d_settings_empty_ffi() -> CanvasRenderingContext2DSettings = "() => {}"
      #|
      #|pub fn CanvasRenderingContext2DSettings::empty() -> CanvasRenderingContext2DSettings { canvas_rendering_context2d_settings_empty_ffi() }
    ),
  )
}
