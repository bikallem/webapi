///|
fn main {
  let idl =
    #|// Single-line comment: DOM EventTarget interface
    #|/* Multi-line comment:
    #|   This is the core event handling interface
    #|   used throughout the DOM APIs.
    #|*/
    #|[Exposed=Window]
    #|interface EventTarget {
    #|  constructor();
    #|  undefined addEventListener(DOMString type, EventListener? listener, optional AddEventListenerOptions options = {});
    #|  undefined removeEventListener(DOMString type, EventListener? listener, optional EventListenerOptions options = {});
    #|  boolean dispatchEvent(Event event);
    #|};
    #|
    #|// Callback interface for event listeners
    #|callback interface EventListener {
    #|  undefined handleEvent(Event event);
    #|};
    #|
    #|dictionary AddEventListenerOptions : EventListenerOptions {
    #|  boolean passive = false;
    #|  boolean once = false;
    #|};
    #|
    #|dictionary EventListenerOptions {
    #|  boolean capture = false;
    #|};
    #|
    #|enum ScrollBehavior { "auto", "instant", "smooth" };
    #|
    #|/* Namespace example */
    #|namespace CSS {
    #|  readonly attribute DOMString cssText;
    #|  boolean supports(DOMString property, DOMString value);
    #|};
    #|
    #|callback EventHandler = undefined (Event ev);
    #|
    #|interface mixin WindowEventHandlers {
    #|  attribute EventHandler? onload;
    #|};
    #|
    #|[Exposed=Window]
    #|partial interface Document {
    #|  readonly attribute Element? documentElement;
    #|  Element? getElementById(DOMString elementId);
    #|};
    #|
    #|// Interface with special operations and iterable
    #|interface Element : Node {
    #|  getter DOMString getItem(unsigned long index);
    #|  setter undefined setItem(unsigned long index, DOMString value);
    #|  iterable<DOMString>;
    #|};
  try {
    let defs = @webidl_parser.parse(idl)
    println("Parsed \{defs.length()} definitions:")
    for def in defs {
      println("  - \{def}")
    }
  } catch {
    e => println("Parse error: \{e}")
  }
}
