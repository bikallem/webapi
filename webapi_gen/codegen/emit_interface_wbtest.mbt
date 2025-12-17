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

///|
/// Test emit for attributes (from @webref/idl Event interface)
/// Verifies both readonly and non-readonly attributes generate correct trait methods
test "emit_interface generates getter and setter for attributes" {
  // Based on Event interface from @webref/idl/dom.idl
  let idl =
    #|[Exposed=*]
    #|interface Event {
    #|  constructor(DOMString type);
    #|
    #|  readonly attribute DOMString type;
    #|  readonly attribute EventTarget? target;
    #|  readonly attribute unsigned short eventPhase;
    #|
    #|  attribute boolean cancelBubble;
    #|  attribute boolean returnValue;
    #|};
  let definitions = @parser.parse(idl)
  let type_registry = TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten
  let code = emit_interface(flattened.interfaces["Event"], type_registry)
  inspect(
    code,
    content=(
      #|// Auto-generated MoonBit bindings for Event interface
      #|// Do not edit manually
      #|
      #|#external
      #|pub type Event
      #|
      #|pub impl TJsValue for Event with to_js(self: Event) -> JsValue = "%identity"
      #|
      #|
      #|pub fn[T: TEvent] Event::into(self : Event) -> T = "%identity"
      #|pub impl TEvent for Event
      #|
      #|pub fn Event::new(type_ : String) -> Event = "webapi_Event" "new"
      #|
      #|pub trait TEvent: TJSValue {
      #|  type_(self: Self) -> String = _
      #|  target(self: Self) -> EventTarget = _
      #|  event_phase(self: Self) -> UInt = _
      #|  cancel_bubble(self: Self) -> Bool = _
      #|  set_cancel_bubble(self: Self, value : Bool) -> Unit = _
      #|  return_value(self: Self) -> Bool = _
      #|  set_return_value(self: Self, value : Bool) -> Unit = _
      #|}
    ),
  )
}
