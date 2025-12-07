///|
fn main {
  let idl =
    #|// Test WebIDL Parser - Comprehensive Test
    #|/* This tests all supported WebIDL constructs:
    #|   - Interface, partial interface, interface mixin
    #|   - Namespace, partial namespace
    #|   - Dictionary, partial dictionary
    #|   - Callback function, callback interface
    #|   - Enum, typedef, includes
    #|   - Special operations, iterable, maplike, setlike
    #|   - Extended attributes including NamedArgList
    #|*/
    #|
    #|// Interface with constructor and operations
    #|[Exposed=Window]
    #|interface EventTarget {
    #|  constructor();
    #|  undefined addEventListener(DOMString type, EventListener? listener);
    #|  boolean dispatchEvent(Event event);
    #|};
    #|
    #|// Callback interface
    #|callback interface EventListener {
    #|  undefined handleEvent(Event event);
    #|};
    #|
    #|// Partial interface
    #|[Exposed=Window]
    #|partial interface Document {
    #|  readonly attribute Element? documentElement;
    #|  Element? getElementById(DOMString elementId);
    #|};
    #|
    #|// Interface mixin
    #|interface mixin WindowEventHandlers {
    #|  attribute EventHandler? onload;
    #|  attribute EventHandler? onerror;
    #|};
    #|
    #|// Partial interface mixin
    #|partial interface mixin GlobalEventHandlers {
    #|  attribute EventHandler? onclick;
    #|};
    #|
    #|// Namespace
    #|namespace CSS {
    #|  readonly attribute DOMString cssText;
    #|  boolean supports(DOMString property, DOMString value);
    #|};
    #|
    #|// Partial namespace
    #|partial namespace CSS {
    #|  CSSStyleDeclaration parseStyleValue(DOMString property, DOMString value);
    #|};
    #|
    #|// Dictionary with inheritance
    #|dictionary AddEventListenerOptions : EventListenerOptions {
    #|  boolean passive = false;
    #|  boolean once = false;
    #|};
    #|
    #|dictionary EventListenerOptions {
    #|  boolean capture = false;
    #|};
    #|
    #|// Partial dictionary
    #|partial dictionary RequestInit {
    #|  DOMString method;
    #|  required HeadersInit headers;
    #|};
    #|
    #|// Enum
    #|enum ScrollBehavior { "auto", "instant", "smooth" };
    #|
    #|// Typedef
    #|typedef sequence<DOMString> DOMStringList;
    #|
    #|// Callback function
    #|callback EventHandler = undefined (Event ev);
    #|
    #|// Includes statement
    #|Window includes WindowEventHandlers;
    #|
    #|// Interface with special operations
    #|interface HTMLCollection : Node {
    #|  readonly attribute unsigned long length;
    #|  getter Element? item(unsigned long index);
    #|  getter Element? namedItem(DOMString name);
    #|  iterable<Element>;
    #|};
    #|
    #|// Interface with maplike
    #|interface Headers {
    #|  readonly maplike<DOMString, DOMString>;
    #|};
    #|
    #|// Interface with setlike
    #|interface DOMTokenList {
    #|  setlike<DOMString>;
    #|};
    #|
    #|// Interface with static member
    #|[Exposed=Window]
    #|interface URL {
    #|  constructor(DOMString url, optional DOMString base);
    #|  static boolean canParse(DOMString url, optional DOMString base);
    #|};
    #|
    #|// Extended attribute with NamedArgList: [Constructor=Image(DOMString src)]
    #|[Exposed=Window, LegacyFactoryFunction=Image(optional DOMString src)]
    #|interface HTMLImageElement : HTMLElement {
    #|  attribute DOMString src;
    #|  readonly attribute unsigned long width;
    #|};
  try {
    let defs = @webidl_parser.parse(idl)
    println("Parsed \{defs.length()} definitions:\n")
    for i, def in defs {
      println("\{i + 1}. \{def_summary(def)}")
    }
  } catch {
    e => println("Parse error: \{e}")
  }
}

///|
fn def_summary(def : @webidl_parser.Definition) -> String {
  match def {
    @webidl_parser.Definition::Interface(i) =>
      "Interface: \{i.name} (\{i.members.length()} members)"
    @webidl_parser.Definition::PartialInterface(p) =>
      "Partial Interface: \{p.name} (\{p.members.length()} members)"
    @webidl_parser.Definition::Mixin(m) =>
      "Mixin: \{m.name} (\{m.members.length()} members)"
    @webidl_parser.Definition::PartialMixin(p) =>
      "Partial Mixin: \{p.name} (\{p.members.length()} members)"
    @webidl_parser.Definition::Namespace(n) =>
      "Namespace: \{n.name} (\{n.members.length()} members)"
    @webidl_parser.Definition::PartialNamespace(p) =>
      "Partial Namespace: \{p.name} (\{p.members.length()} members)"
    @webidl_parser.Definition::Dictionary(d) =>
      "Dictionary: \{d.name} (\{d.members.length()} members)"
    @webidl_parser.Definition::PartialDictionary(p) =>
      "Partial Dictionary: \{p.name} (\{p.members.length()} members)"
    @webidl_parser.Definition::Enum_(e) =>
      "Enum: \{e.name} (\{e.values.length()} values)"
    @webidl_parser.Definition::Typedef(t) => "Typedef: \{t.name}"
    @webidl_parser.Definition::CallbackFunction(c) => "Callback: \{c.name}"
    @webidl_parser.Definition::CallbackInterface(c) =>
      "Callback Interface: \{c.name}"
    @webidl_parser.Definition::Includes(i) =>
      "Includes: \{i.interface_name} includes \{i.mixin_name}"
  }
}
