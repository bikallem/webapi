///|
test "emit_interface generates moonbit code for simple interface" {
  let idl =
    #|[Exposed=*]
    #|interface EventTarget {
    #|  constructor();
    #|
    #|  undefined addEventListener(DOMString type, EventListener? callback, optional (AddEventListenerOptions or boolean) options = {});
    #|  undefined removeEventListener(DOMString type, EventListener? callback, optional (EventListenerOptions or boolean) options = {});
    #|  boolean dispatchEvent(Event event);
    #|};
    #|
    #|interface Event {};
  let definitions = @parser.parse(idl)
  let type_registry = TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten
  let code = emit_interface(flattened.interfaces["EventTarget"], type_registry)
  inspect(
    code,
    content=(
      #|// Auto-generated MoonBit bindings for EventTarget interface
      #|// Do not edit manually
      #|
      #|#external
      #|pub type EventTarget
      #|
      #|pub impl TJsValue for EventTarget with to_js(self: EventTarget) -> JsValue = "%identity"
      #|
      #|
      #|pub fn[T: TEventTarget] EventTarget::into(self : EventTarget) -> T = "%identity"
      #|pub impl TEventTarget for EventTarget
      #|
      #|pub fn EventTarget::new() -> EventTarget = "webapi_EventTarget" "new"
      #|
      #|/// Union arg trait
      #|pub(open) trait TAddEventListenerOptionsArg {
      #|  to_js(self : Self) -> JsValue
      #|}
      #|
      #|pub impl TAddEventListenerOptionsArg for AddEventListenerOptions with to_js(self : AddEventListenerOptions) -> JsValue = "%identity"
      #|
      #|pub impl TAddEventListenerOptionsArg for Bool with to_js(self : Bool) -> JsValue = "%identity"
      #|
      #|/// Union arg trait
      #|pub(open) trait TRemoveEventListenerOptionsArg {
      #|  to_js(self : Self) -> JsValue
      #|}
      #|
      #|pub impl TRemoveEventListenerOptionsArg for EventListenerOptions with to_js(self : EventListenerOptions) -> JsValue = "%identity"
      #|
      #|pub impl TRemoveEventListenerOptionsArg for Bool with to_js(self : Bool) -> JsValue = "%identity"
      #|
      #|pub trait TEventTarget: TJSValue {
      #|  add_event_listener(self: Self, type_ : String, callback : EventListener, options? : &TAddEventListenerOptionsArg) -> Unit = _
      #|  remove_event_listener(self: Self, type_ : String, callback : EventListener, options? : &TRemoveEventListenerOptionsArg) -> Unit = _
      #|  dispatch_event(self: Self, event : &TEvent) -> Bool = _
      #|}
    ),
  )
}
