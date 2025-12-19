///|
test "emit_js() generates MoonBit code for interface" {
  let idl =
    #|[Exposed=*]
    #|interface EventTarget {
    #|  constructor();
    #|  undefined addEventListener(DOMString type, EventListener? callback, optional (AddEventListenerOptions or boolean) options = {});
    #|  undefined removeEventListener(DOMString type, EventListener? callback, optional (EventListenerOptions or boolean) options = {});
    #|  boolean dispatchEvent(Event event);
    #|};
  let definitions = @parser.parse(idl)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let emits = emit_interface(flattened.interfaces["EventTarget"])
  let code = js_emitter(emits)
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
      #|pub fn EventTarget::new() -> EventTarget {
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
      #|pub trait TEventTarget: TJsValue {
      #|  add_event_listener(self : Self, type_ : String, callback : EventListener, options? : &TAddEventListenerOptionsArg) -> Unit = _
      #|  remove_event_listener(self : Self, type_ : String, callback : EventListener, options? : &TRemoveEventListenerOptionsArg) -> Unit = _
      #|  dispatch_event(self : Self, event : Event) -> Bool = _
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
  let type_registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let emits = emit_dictionary(
    flattened.dictionaries["CanvasRenderingContext2DSettings"],
    type_registry,
  )
  let code = js_emitter(emits)
  inspect(
    code,
    content=(
      #|#external
      #|pub type CanvasRenderingContext2DSettings
      #|
      #|pub impl TJsValue for CanvasRenderingContext2DSettings with to_js(self: CanvasRenderingContext2DSettings) -> JsValue = "%identity"
      #|
      #|pub fn CanvasRenderingContext2DSettings::new(alpha? : Bool = true, 
      #|desynchronized? : Bool = false, 
      #|color_space? : PredefinedColorSpace = "srgb", 
      #|color_type? : CanvasColorType = "unorm8", 
      #|will_read_frequently? : Bool = false) -> CanvasRenderingContext2DSettings {
      #|}
      #|
      #|extern "js" fn canvas_rendering_context2d_settings_empty_ffi() -> CanvasRenderingContext2DSettings = "() => {}"
      #|
      #|pub fn CanvasRenderingContext2DSettings::empty() -> CanvasRenderingContext2DSettings { canvas_rendering_context2d_settings_empty_ffi() }
    ),
  )
}
