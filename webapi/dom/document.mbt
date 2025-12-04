// Auto-generated MoonBit bindings for Document

// Do not edit manually

//
// WebIDL Interface:
// partial interface Document {
//   Element? elementFromPoint(double x, double y);
//   sequence<Element> elementsFromPoint(double x, double y);
//   CaretPosition? caretPositionFromPoint(double x, double y, optional CaretPositionFromPointOptions options = {});
//   readonly attribute Element? scrollingElement;
// };
// 
// [Exposed=Window]
// interface Document : Node {
//   constructor();
// 
//   [SameObject] readonly attribute DOMImplementation implementation;
//   readonly attribute USVString URL;
//   readonly attribute USVString documentURI;
//   readonly attribute DOMString compatMode;
//   readonly attribute DOMString characterSet;
//   readonly attribute DOMString charset; // legacy alias of .characterSet
//   readonly attribute DOMString inputEncoding; // legacy alias of .characterSet
//   readonly attribute DOMString contentType;
// 
//   readonly attribute DocumentType? doctype;
//   readonly attribute Element? documentElement;
//   HTMLCollection getElementsByTagName(DOMString qualifiedName);
//   HTMLCollection getElementsByTagNameNS(DOMString? namespace, DOMString localName);
//   HTMLCollection getElementsByClassName(DOMString classNames);
// 
//   [CEReactions, NewObject] Element createElement(DOMString localName, optional (DOMString or ElementCreationOptions) options = {});
//   [CEReactions, NewObject] Element createElementNS(DOMString? namespace, DOMString qualifiedName, optional (DOMString or ElementCreationOptions) options = {});
//   [NewObject] DocumentFragment createDocumentFragment();
//   [NewObject] Text createTextNode(DOMString data);
//   [NewObject] CDATASection createCDATASection(DOMString data);
//   [NewObject] Comment createComment(DOMString data);
//   [NewObject] ProcessingInstruction createProcessingInstruction(DOMString target, DOMString data);
// 
//   [CEReactions, NewObject] Node importNode(Node node, optional (boolean or ImportNodeOptions) options = false);
//   [CEReactions] Node adoptNode(Node node);
// 
//   [NewObject] Attr createAttribute(DOMString localName);
//   [NewObject] Attr createAttributeNS(DOMString? namespace, DOMString qualifiedName);
// 
//   [NewObject] Event createEvent(DOMString interface); // legacy
// 
//   [NewObject] Range createRange();
// 
//   // NodeFilter.SHOW_ALL = 0xFFFFFFFF
//   [NewObject] NodeIterator createNodeIterator(Node root, optional unsigned long whatToShow = 0xFFFFFFFF, optional NodeFilter? filter = null);
//   [NewObject] TreeWalker createTreeWalker(Node root, optional unsigned long whatToShow = 0xFFFFFFFF, optional NodeFilter? filter = null);
// };
// 
// [LegacyOverrideBuiltIns]
// partial interface Document {
//   static Document parseHTMLUnsafe((TrustedHTML or DOMString) html);
// 
//   // resource metadata management
//   [PutForwards=href, LegacyUnforgeable] readonly attribute Location? location;
//   attribute USVString domain;
//   readonly attribute USVString referrer;
//   attribute USVString cookie;
//   readonly attribute DOMString lastModified;
//   readonly attribute DocumentReadyState readyState;
// 
//   // DOM tree accessors
//   getter object (DOMString name);
//   [CEReactions] attribute DOMString title;
//   [CEReactions] attribute DOMString dir;
//   [CEReactions] attribute HTMLElement? body;
//   readonly attribute HTMLHeadElement? head;
//   [SameObject] readonly attribute HTMLCollection images;
//   [SameObject] readonly attribute HTMLCollection embeds;
//   [SameObject] readonly attribute HTMLCollection plugins;
//   [SameObject] readonly attribute HTMLCollection links;
//   [SameObject] readonly attribute HTMLCollection forms;
//   [SameObject] readonly attribute HTMLCollection scripts;
//   NodeList getElementsByName(DOMString elementName);
//   readonly attribute HTMLOrSVGScriptElement? currentScript; // classic scripts in a document tree only
// 
//   // dynamic markup insertion
//   [CEReactions] Document open(optional DOMString unused1, optional DOMString unused2); // both arguments are ignored
//   WindowProxy? open(USVString url, DOMString name, DOMString features);
//   [CEReactions] undefined close();
//   [CEReactions] undefined write((TrustedHTML or DOMString)... text);
//   [CEReactions] undefined writeln((TrustedHTML or DOMString)... text);
// 
//   // user interaction
//   readonly attribute WindowProxy? defaultView;
//   boolean hasFocus();
//   [CEReactions] attribute DOMString designMode;
//   [CEReactions] boolean execCommand(DOMString commandId, optional boolean showUI = false, optional DOMString value = "");
//   boolean queryCommandEnabled(DOMString commandId);
//   boolean queryCommandIndeterm(DOMString commandId);
//   boolean queryCommandState(DOMString commandId);
//   boolean queryCommandSupported(DOMString commandId);
//   DOMString queryCommandValue(DOMString commandId);
//   readonly attribute boolean hidden;
//   readonly attribute DocumentVisibilityState visibilityState;
// 
//   // special event handler IDL attributes that only apply to Document objects
//   [LegacyLenientThis] attribute EventHandler onreadystatechange;
//   attribute EventHandler onvisibilitychange;
// 
//   // also has obsolete members
// };
// 
// partial interface Document {
//   [CEReactions] attribute [LegacyNullToEmptyString] DOMString fgColor;
//   [CEReactions] attribute [LegacyNullToEmptyString] DOMString linkColor;
//   [CEReactions] attribute [LegacyNullToEmptyString] DOMString vlinkColor;
//   [CEReactions] attribute [LegacyNullToEmptyString] DOMString alinkColor;
//   [CEReactions] attribute [LegacyNullToEmptyString] DOMString bgColor;
// 
//   [SameObject] readonly attribute HTMLCollection anchors;
//   [SameObject] readonly attribute HTMLCollection applets;
// 
//   undefined clear();
//   undefined captureEvents();
//   undefined releaseEvents();
// 
//   [SameObject] readonly attribute HTMLAllCollection all;
// };
// 
// interface mixin GeometryUtils {
//   sequence<DOMQuad> getBoxQuads(optional BoxQuadOptions options = {});
//   DOMQuad convertQuadFromNode(DOMQuadInit quad, GeometryNode from, optional ConvertCoordinateOptions options = {});
//   DOMQuad convertRectFromNode(DOMRectReadOnly rect, GeometryNode from, optional ConvertCoordinateOptions options = {});
//   DOMPoint convertPointFromNode(DOMPointInit point, GeometryNode from, optional ConvertCoordinateOptions options = {}); // XXX z,w turns into 0
// };
// 
// interface mixin NonElementParentNode {
//   Element? getElementById(DOMString elementId);
// };
// 
// partial interface mixin DocumentOrShadowRoot {
//   [SameObject] readonly attribute StyleSheetList styleSheets;
//   attribute ObservableArray<CSSStyleSheet> adoptedStyleSheets;
// };
// 
// interface mixin DocumentOrShadowRoot {
//   readonly attribute CustomElementRegistry? customElementRegistry;
// };
// 
// partial interface mixin DocumentOrShadowRoot {
//   readonly attribute Element? activeElement;
// };
// 
// interface mixin ParentNode {
//   [SameObject] readonly attribute HTMLCollection children;
//   readonly attribute Element? firstElementChild;
//   readonly attribute Element? lastElementChild;
//   readonly attribute unsigned long childElementCount;
// 
//   [CEReactions, Unscopable] undefined prepend((Node or DOMString)... nodes);
//   [CEReactions, Unscopable] undefined append((Node or DOMString)... nodes);
//   [CEReactions, Unscopable] undefined replaceChildren((Node or DOMString)... nodes);
// 
//   [CEReactions] undefined moveBefore(Node node, Node? child);
// 
//   Element? querySelector(DOMString selectors);
//   [NewObject] NodeList querySelectorAll(DOMString selectors);
// };
// 
// interface mixin XPathEvaluatorBase {
//   [NewObject] XPathExpression createExpression(DOMString expression, optional XPathNSResolver? resolver = null);
//   Node createNSResolver(Node nodeResolver); // legacy
//   // XPathResult.ANY_TYPE = 0
//   XPathResult evaluate(DOMString expression, Node contextNode, optional XPathNSResolver? resolver = null, optional unsigned short type = 0, optional XPathResult? result = null);
// };
// 
// interface mixin GlobalEventHandlers {
//   attribute EventHandler onabort;
//   attribute EventHandler onauxclick;
//   attribute EventHandler onbeforeinput;
//   attribute EventHandler onbeforematch;
//   attribute EventHandler onbeforetoggle;
//   attribute EventHandler onblur;
//   attribute EventHandler oncancel;
//   attribute EventHandler oncanplay;
//   attribute EventHandler oncanplaythrough;
//   attribute EventHandler onchange;
//   attribute EventHandler onclick;
//   attribute EventHandler onclose;
//   attribute EventHandler oncommand;
//   attribute EventHandler oncontextlost;
//   attribute EventHandler oncontextmenu;
//   attribute EventHandler oncontextrestored;
//   attribute EventHandler oncopy;
//   attribute EventHandler oncuechange;
//   attribute EventHandler oncut;
//   attribute EventHandler ondblclick;
//   attribute EventHandler ondrag;
//   attribute EventHandler ondragend;
//   attribute EventHandler ondragenter;
//   attribute EventHandler ondragleave;
//   attribute EventHandler ondragover;
//   attribute EventHandler ondragstart;
//   attribute EventHandler ondrop;
//   attribute EventHandler ondurationchange;
//   attribute EventHandler onemptied;
//   attribute EventHandler onended;
//   attribute OnErrorEventHandler onerror;
//   attribute EventHandler onfocus;
//   attribute EventHandler onformdata;
//   attribute EventHandler oninput;
//   attribute EventHandler oninvalid;
//   attribute EventHandler onkeydown;
//   attribute EventHandler onkeypress;
//   attribute EventHandler onkeyup;
//   attribute EventHandler onload;
//   attribute EventHandler onloadeddata;
//   attribute EventHandler onloadedmetadata;
//   attribute EventHandler onloadstart;
//   attribute EventHandler onmousedown;
//   [LegacyLenientThis] attribute EventHandler onmouseenter;
//   [LegacyLenientThis] attribute EventHandler onmouseleave;
//   attribute EventHandler onmousemove;
//   attribute EventHandler onmouseout;
//   attribute EventHandler onmouseover;
//   attribute EventHandler onmouseup;
//   attribute EventHandler onpaste;
//   attribute EventHandler onpause;
//   attribute EventHandler onplay;
//   attribute EventHandler onplaying;
//   attribute EventHandler onprogress;
//   attribute EventHandler onratechange;
//   attribute EventHandler onreset;
//   attribute EventHandler onresize;
//   attribute EventHandler onscroll;
//   attribute EventHandler onscrollend;
//   attribute EventHandler onsecuritypolicyviolation;
//   attribute EventHandler onseeked;
//   attribute EventHandler onseeking;
//   attribute EventHandler onselect;
//   attribute EventHandler onslotchange;
//   attribute EventHandler onstalled;
//   attribute EventHandler onsubmit;
//   attribute EventHandler onsuspend;
//   attribute EventHandler ontimeupdate;
//   attribute EventHandler ontoggle;
//   attribute EventHandler onvolumechange;
//   attribute EventHandler onwaiting;
//   attribute EventHandler onwebkitanimationend;
//   attribute EventHandler onwebkitanimationiteration;
//   attribute EventHandler onwebkitanimationstart;
//   attribute EventHandler onwebkittransitionend;
//   attribute EventHandler onwheel;
// };

///|
#external
pub type Document

///|
pub trait TDocument: TJsValue {
  scrolling_element(self : Self) -> Element? = _
  implementation(self : Self) -> JsValue = _
  url(self : Self) -> String = _
  document_uri(self : Self) -> String = _
  compat_mode(self : Self) -> String = _
  character_set(self : Self) -> String = _
  charset(self : Self) -> String = _
  input_encoding(self : Self) -> String = _
  content_type(self : Self) -> String = _
  doctype(self : Self) -> DocumentType? = _
  document_element(self : Self) -> Element? = _
  location(self : Self) -> Location? = _
  domain(self : Self) -> String = _
  set_domain(self : Self, value : String) -> Unit = _
  referrer(self : Self) -> String = _
  cookie(self : Self) -> String = _
  set_cookie(self : Self, value : String) -> Unit = _
  last_modified(self : Self) -> String = _
  ready_state(self : Self) -> JsValue = _
  title(self : Self) -> String = _
  set_title(self : Self, value : String) -> Unit = _
  dir(self : Self) -> String = _
  set_dir(self : Self, value : String) -> Unit = _
  body(self : Self) -> HTMLElement? = _
  set_body(self : Self, value : HTMLElement) -> Unit = _
  head(self : Self) -> HTMLHeadElement? = _
  images(self : Self) -> HTMLCollection = _
  embeds(self : Self) -> HTMLCollection = _
  plugins(self : Self) -> HTMLCollection = _
  links(self : Self) -> HTMLCollection = _
  forms(self : Self) -> HTMLCollection = _
  scripts(self : Self) -> HTMLCollection = _
  current_script(self : Self) -> JsValue? = _
  default_view(self : Self) -> Window? = _
  design_mode(self : Self) -> String = _
  set_design_mode(self : Self, value : String) -> Unit = _
  hidden(self : Self) -> Bool = _
  visibility_state(self : Self) -> JsValue = _
  onreadystatechange(self : Self) -> EventHandler = _
  set_onreadystatechange(self : Self, value : EventHandler) -> Unit = _
  onvisibilitychange(self : Self) -> EventHandler = _
  set_onvisibilitychange(self : Self, value : EventHandler) -> Unit = _
  fg_color(self : Self) -> String = _
  set_fg_color(self : Self, value : String) -> Unit = _
  link_color(self : Self) -> String = _
  set_link_color(self : Self, value : String) -> Unit = _
  vlink_color(self : Self) -> String = _
  set_vlink_color(self : Self, value : String) -> Unit = _
  alink_color(self : Self) -> String = _
  set_alink_color(self : Self, value : String) -> Unit = _
  bg_color(self : Self) -> String = _
  set_bg_color(self : Self, value : String) -> Unit = _
  anchors(self : Self) -> HTMLCollection = _
  applets(self : Self) -> HTMLCollection = _
  all(self : Self) -> JsValue = _
  style_sheets(self : Self) -> JsValue = _
  adopted_style_sheets(self : Self) -> Array[JsValue] = _
  set_adopted_style_sheets(self : Self, value : Array[JsValue]) -> Unit = _
  custom_element_registry(self : Self) -> JsValue? = _
  active_element(self : Self) -> Element? = _
  children(self : Self) -> HTMLCollection = _
  first_element_child(self : Self) -> Element? = _
  last_element_child(self : Self) -> Element? = _
  child_element_count(self : Self) -> Int = _
  onabort(self : Self) -> EventHandler = _
  set_onabort(self : Self, value : EventHandler) -> Unit = _
  onauxclick(self : Self) -> EventHandler = _
  set_onauxclick(self : Self, value : EventHandler) -> Unit = _
  onbeforeinput(self : Self) -> EventHandler = _
  set_onbeforeinput(self : Self, value : EventHandler) -> Unit = _
  onbeforematch(self : Self) -> EventHandler = _
  set_onbeforematch(self : Self, value : EventHandler) -> Unit = _
  onbeforetoggle(self : Self) -> EventHandler = _
  set_onbeforetoggle(self : Self, value : EventHandler) -> Unit = _
  onblur(self : Self) -> EventHandler = _
  set_onblur(self : Self, value : EventHandler) -> Unit = _
  oncancel(self : Self) -> EventHandler = _
  set_oncancel(self : Self, value : EventHandler) -> Unit = _
  oncanplay(self : Self) -> EventHandler = _
  set_oncanplay(self : Self, value : EventHandler) -> Unit = _
  oncanplaythrough(self : Self) -> EventHandler = _
  set_oncanplaythrough(self : Self, value : EventHandler) -> Unit = _
  onchange(self : Self) -> EventHandler = _
  set_onchange(self : Self, value : EventHandler) -> Unit = _
  onclick(self : Self) -> EventHandler = _
  set_onclick(self : Self, value : EventHandler) -> Unit = _
  onclose(self : Self) -> EventHandler = _
  set_onclose(self : Self, value : EventHandler) -> Unit = _
  oncommand(self : Self) -> EventHandler = _
  set_oncommand(self : Self, value : EventHandler) -> Unit = _
  oncontextlost(self : Self) -> EventHandler = _
  set_oncontextlost(self : Self, value : EventHandler) -> Unit = _
  oncontextmenu(self : Self) -> EventHandler = _
  set_oncontextmenu(self : Self, value : EventHandler) -> Unit = _
  oncontextrestored(self : Self) -> EventHandler = _
  set_oncontextrestored(self : Self, value : EventHandler) -> Unit = _
  oncopy(self : Self) -> EventHandler = _
  set_oncopy(self : Self, value : EventHandler) -> Unit = _
  oncuechange(self : Self) -> EventHandler = _
  set_oncuechange(self : Self, value : EventHandler) -> Unit = _
  oncut(self : Self) -> EventHandler = _
  set_oncut(self : Self, value : EventHandler) -> Unit = _
  ondblclick(self : Self) -> EventHandler = _
  set_ondblclick(self : Self, value : EventHandler) -> Unit = _
  ondrag(self : Self) -> EventHandler = _
  set_ondrag(self : Self, value : EventHandler) -> Unit = _
  ondragend(self : Self) -> EventHandler = _
  set_ondragend(self : Self, value : EventHandler) -> Unit = _
  ondragenter(self : Self) -> EventHandler = _
  set_ondragenter(self : Self, value : EventHandler) -> Unit = _
  ondragleave(self : Self) -> EventHandler = _
  set_ondragleave(self : Self, value : EventHandler) -> Unit = _
  ondragover(self : Self) -> EventHandler = _
  set_ondragover(self : Self, value : EventHandler) -> Unit = _
  ondragstart(self : Self) -> EventHandler = _
  set_ondragstart(self : Self, value : EventHandler) -> Unit = _
  ondrop(self : Self) -> EventHandler = _
  set_ondrop(self : Self, value : EventHandler) -> Unit = _
  ondurationchange(self : Self) -> EventHandler = _
  set_ondurationchange(self : Self, value : EventHandler) -> Unit = _
  onemptied(self : Self) -> EventHandler = _
  set_onemptied(self : Self, value : EventHandler) -> Unit = _
  onended(self : Self) -> EventHandler = _
  set_onended(self : Self, value : EventHandler) -> Unit = _
  onerror(self : Self) -> OnErrorEventHandler = _
  set_onerror(self : Self, value : OnErrorEventHandler) -> Unit = _
  onfocus(self : Self) -> EventHandler = _
  set_onfocus(self : Self, value : EventHandler) -> Unit = _
  onformdata(self : Self) -> EventHandler = _
  set_onformdata(self : Self, value : EventHandler) -> Unit = _
  oninput(self : Self) -> EventHandler = _
  set_oninput(self : Self, value : EventHandler) -> Unit = _
  oninvalid(self : Self) -> EventHandler = _
  set_oninvalid(self : Self, value : EventHandler) -> Unit = _
  onkeydown(self : Self) -> EventHandler = _
  set_onkeydown(self : Self, value : EventHandler) -> Unit = _
  onkeypress(self : Self) -> EventHandler = _
  set_onkeypress(self : Self, value : EventHandler) -> Unit = _
  onkeyup(self : Self) -> EventHandler = _
  set_onkeyup(self : Self, value : EventHandler) -> Unit = _
  onload(self : Self) -> EventHandler = _
  set_onload(self : Self, value : EventHandler) -> Unit = _
  onloadeddata(self : Self) -> EventHandler = _
  set_onloadeddata(self : Self, value : EventHandler) -> Unit = _
  onloadedmetadata(self : Self) -> EventHandler = _
  set_onloadedmetadata(self : Self, value : EventHandler) -> Unit = _
  onloadstart(self : Self) -> EventHandler = _
  set_onloadstart(self : Self, value : EventHandler) -> Unit = _
  onmousedown(self : Self) -> EventHandler = _
  set_onmousedown(self : Self, value : EventHandler) -> Unit = _
  onmouseenter(self : Self) -> EventHandler = _
  set_onmouseenter(self : Self, value : EventHandler) -> Unit = _
  onmouseleave(self : Self) -> EventHandler = _
  set_onmouseleave(self : Self, value : EventHandler) -> Unit = _
  onmousemove(self : Self) -> EventHandler = _
  set_onmousemove(self : Self, value : EventHandler) -> Unit = _
  onmouseout(self : Self) -> EventHandler = _
  set_onmouseout(self : Self, value : EventHandler) -> Unit = _
  onmouseover(self : Self) -> EventHandler = _
  set_onmouseover(self : Self, value : EventHandler) -> Unit = _
  onmouseup(self : Self) -> EventHandler = _
  set_onmouseup(self : Self, value : EventHandler) -> Unit = _
  onpaste(self : Self) -> EventHandler = _
  set_onpaste(self : Self, value : EventHandler) -> Unit = _
  onpause(self : Self) -> EventHandler = _
  set_onpause(self : Self, value : EventHandler) -> Unit = _
  onplay(self : Self) -> EventHandler = _
  set_onplay(self : Self, value : EventHandler) -> Unit = _
  onplaying(self : Self) -> EventHandler = _
  set_onplaying(self : Self, value : EventHandler) -> Unit = _
  onprogress(self : Self) -> EventHandler = _
  set_onprogress(self : Self, value : EventHandler) -> Unit = _
  onratechange(self : Self) -> EventHandler = _
  set_onratechange(self : Self, value : EventHandler) -> Unit = _
  onreset(self : Self) -> EventHandler = _
  set_onreset(self : Self, value : EventHandler) -> Unit = _
  onresize(self : Self) -> EventHandler = _
  set_onresize(self : Self, value : EventHandler) -> Unit = _
  onscroll(self : Self) -> EventHandler = _
  set_onscroll(self : Self, value : EventHandler) -> Unit = _
  onscrollend(self : Self) -> EventHandler = _
  set_onscrollend(self : Self, value : EventHandler) -> Unit = _
  onsecuritypolicyviolation(self : Self) -> EventHandler = _
  set_onsecuritypolicyviolation(self : Self, value : EventHandler) -> Unit = _
  onseeked(self : Self) -> EventHandler = _
  set_onseeked(self : Self, value : EventHandler) -> Unit = _
  onseeking(self : Self) -> EventHandler = _
  set_onseeking(self : Self, value : EventHandler) -> Unit = _
  onselect(self : Self) -> EventHandler = _
  set_onselect(self : Self, value : EventHandler) -> Unit = _
  onslotchange(self : Self) -> EventHandler = _
  set_onslotchange(self : Self, value : EventHandler) -> Unit = _
  onstalled(self : Self) -> EventHandler = _
  set_onstalled(self : Self, value : EventHandler) -> Unit = _
  onsubmit(self : Self) -> EventHandler = _
  set_onsubmit(self : Self, value : EventHandler) -> Unit = _
  onsuspend(self : Self) -> EventHandler = _
  set_onsuspend(self : Self, value : EventHandler) -> Unit = _
  ontimeupdate(self : Self) -> EventHandler = _
  set_ontimeupdate(self : Self, value : EventHandler) -> Unit = _
  ontoggle(self : Self) -> EventHandler = _
  set_ontoggle(self : Self, value : EventHandler) -> Unit = _
  onvolumechange(self : Self) -> EventHandler = _
  set_onvolumechange(self : Self, value : EventHandler) -> Unit = _
  onwaiting(self : Self) -> EventHandler = _
  set_onwaiting(self : Self, value : EventHandler) -> Unit = _
  onwebkitanimationend(self : Self) -> EventHandler = _
  set_onwebkitanimationend(self : Self, value : EventHandler) -> Unit = _
  onwebkitanimationiteration(self : Self) -> EventHandler = _
  set_onwebkitanimationiteration(self : Self, value : EventHandler) -> Unit = _
  onwebkitanimationstart(self : Self) -> EventHandler = _
  set_onwebkitanimationstart(self : Self, value : EventHandler) -> Unit = _
  onwebkittransitionend(self : Self) -> EventHandler = _
  set_onwebkittransitionend(self : Self, value : EventHandler) -> Unit = _
  onwheel(self : Self) -> EventHandler = _
  set_onwheel(self : Self, value : EventHandler) -> Unit = _
  element_from_point(self : Self, x : Double, y : Double) -> Element? = _
  elements_from_point(self : Self, x : Double, y : Double) -> Array[Element] = _
  caret_position_from_point(
    self : Self,
    x : Double,
    y : Double,
    options? : CaretPositionFromPointOptions,
  ) -> JsValue? = _
  get_elements_by_tag_name(self : Self, qualified_name : String) -> HTMLCollection = _
  get_elements_by_tag_name_ns(
    self : Self,
    namespace_ : String,
    local_name : String,
  ) -> HTMLCollection = _
  get_elements_by_class_name(self : Self, class_names : String) -> HTMLCollection = _
  create_element(
    self : Self,
    local_name : String,
    options? : &TCreateElementOptionsArg,
  ) -> Element = _
  create_element_ns(
    self : Self,
    namespace_ : String,
    qualified_name : String,
    options? : &TCreateElementNSOptionsArg,
  ) -> Element = _
  create_document_fragment(self : Self) -> DocumentFragment = _
  create_text_node(self : Self, data : String) -> Text = _
  create_cdata_section(self : Self, data : String) -> CDATASection = _
  create_comment(self : Self, data : String) -> Comment = _
  create_processing_instruction(self : Self, target : String, data : String) -> ProcessingInstruction = _
  import_node(self : Self, node : Node, options? : &TImportNodeOptionsArg) -> Node = _
  adopt_node(self : Self, node : Node) -> Node = _
  create_attribute(self : Self, local_name : String) -> Attr = _
  create_attribute_ns(self : Self, namespace_ : String, qualified_name : String) -> Attr = _
  create_event(self : Self, interface : String) -> Event = _
  create_range(self : Self) -> Range = _
  create_node_iterator(
    self : Self,
    root : Node,
    what_to_show? : Int,
    filter? : JsValue,
  ) -> JsValue = _
  create_tree_walker(
    self : Self,
    root : Node,
    what_to_show? : Int,
    filter? : JsValue,
  ) -> JsValue = _
  get_elements_by_name(self : Self, element_name : String) -> NodeList = _
  open(self : Self, unused1? : String, unused2? : String) -> Document = _
  open2(self : Self, url : String, name : String, features : String) -> Window? = _
  close(self : Self) -> Unit = _
  write(self : Self, text : String) -> Unit = _
  writeln(self : Self, text : String) -> Unit = _
  has_focus(self : Self) -> Bool = _
  exec_command(
    self : Self,
    command_id : String,
    show_ui? : Bool,
    value? : String,
  ) -> Bool = _
  query_command_enabled(self : Self, command_id : String) -> Bool = _
  query_command_indeterm(self : Self, command_id : String) -> Bool = _
  query_command_state(self : Self, command_id : String) -> Bool = _
  query_command_supported(self : Self, command_id : String) -> Bool = _
  query_command_value(self : Self, command_id : String) -> String = _
  clear(self : Self) -> Unit = _
  capture_events(self : Self) -> Unit = _
  release_events(self : Self) -> Unit = _
  get_box_quads(self : Self, options? : BoxQuadOptions) -> Array[JsValue] = _
  convert_quad_from_node(
    self : Self,
    quad : DOMQuadInit,
    from : JsValue,
    options? : ConvertCoordinateOptions,
  ) -> JsValue = _
  convert_rect_from_node(
    self : Self,
    rect : JsValue,
    from : JsValue,
    options? : ConvertCoordinateOptions,
  ) -> JsValue = _
  convert_point_from_node(
    self : Self,
    point : DOMPointInit,
    from : JsValue,
    options? : ConvertCoordinateOptions,
  ) -> JsValue = _
  get_element_by_id(self : Self, element_id : String) -> Element? = _
  prepend(self : Self, nodes : &TPrependNodesArg) -> Unit = _
  append(self : Self, nodes : &TAppendNodesArg) -> Unit = _
  replace_children(self : Self, nodes : &TReplaceChildrenNodesArg) -> Unit = _
  move_before(self : Self, node : Node, child : Node) -> Unit = _
  query_selector(self : Self, selectors : String) -> Element? = _
  query_selector_all(self : Self, selectors : String) -> NodeList = _
  create_expression(self : Self, expression : String, resolver? : JsValue) -> JsValue = _
  create_ns_resolver(self : Self, node_resolver : Node) -> Node = _
  evaluate(
    self : Self,
    expression : String,
    context_node : Node,
    resolver? : JsValue,
    type_? : Int,
    result? : JsValue,
  ) -> JsValue = _
}

///|
pub impl TDocument for Document

///|
pub impl TJsValue for Document with to_js(self : Document) -> JsValue = "%identity"

///|
pub fn Document::null() -> Document = "JsValue" "null"

///|
pub fn Document::is_null(self : Document) -> Bool = "JsValue" "isNull"

///|
pub fn Document::new() -> Document = "webapi_Document" "new"

///|
fn document_element_from_point_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "webapi_Document" "elementFromPoint"

///|
impl TDocument with element_from_point(self : Self, x : Double, y : Double) -> Element? {
  document_element_from_point_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  ).as_option()
}

///|
fn document_elements_from_point_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "webapi_Document" "elementsFromPoint"

///|
impl TDocument with elements_from_point(self : Self, x : Double, y : Double) -> Array[
  Element,
] {
  document_elements_from_point_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  ).unsafe_cast()
}

///|
fn document_caret_position_from_point_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  options : JsValue,
) -> JsValue = "webapi_Document" "caretPositionFromPoint"

///|
impl TDocument with caret_position_from_point(
  self : Self,
  x : Double,
  y : Double,
  options? : CaretPositionFromPointOptions = CaretPositionFromPointOptions::empty(),
) -> JsValue? {
  document_caret_position_from_point_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(options),
  ).as_option()
}

///|
fn document_get_elements_by_tag_name_ffi(
  obj : JsValue,
  qualified_name : JsValue,
) -> JsValue = "webapi_Document" "getElementsByTagName"

///|
impl TDocument with get_elements_by_tag_name(
  self : Self,
  qualified_name : String,
) -> HTMLCollection {
  document_get_elements_by_tag_name_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(qualified_name),
  ).unsafe_cast()
}

///|
fn document_get_elements_by_tag_name_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> JsValue = "webapi_Document" "getElementsByTagNameNS"

///|
impl TDocument with get_elements_by_tag_name_ns(
  self : Self,
  namespace_ : String,
  local_name : String,
) -> HTMLCollection {
  document_get_elements_by_tag_name_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
    TJsValue::to_js(local_name),
  ).unsafe_cast()
}

///|
fn document_get_elements_by_class_name_ffi(
  obj : JsValue,
  class_names : JsValue,
) -> JsValue = "webapi_Document" "getElementsByClassName"

///|
impl TDocument with get_elements_by_class_name(
  self : Self,
  class_names : String,
) -> HTMLCollection {
  document_get_elements_by_class_name_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(class_names),
  ).unsafe_cast()
}

///|
/// Arg : options
pub(open) trait TCreateElementOptionsArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TCreateElementOptionsArg for String with to_js(self : String) -> JsValue = "%identity"

///|
pub impl TCreateElementOptionsArg for ElementCreationOptions with to_js(
  self : ElementCreationOptions,
) -> JsValue = "%identity"

///|
fn document_create_element_ffi(
  obj : JsValue,
  local_name : JsValue,
  options : JsValue,
) -> JsValue = "webapi_Document" "createElement"

///|
impl TDocument with create_element(
  self : Self,
  local_name : String,
  options? : &TCreateElementOptionsArg = ElementCreationOptions::empty(),
) -> Element {
  document_create_element_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(local_name),
    options.to_js(),
  ).unsafe_cast()
}

///|
/// Arg : options
pub(open) trait TCreateElementNSOptionsArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TCreateElementNSOptionsArg for String with to_js(self : String) -> JsValue = "%identity"

///|
pub impl TCreateElementNSOptionsArg for ElementCreationOptions with to_js(
  self : ElementCreationOptions,
) -> JsValue = "%identity"

///|
fn document_create_element_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  qualified_name : JsValue,
  options : JsValue,
) -> JsValue = "webapi_Document" "createElementNS"

///|
impl TDocument with create_element_ns(
  self : Self,
  namespace_ : String,
  qualified_name : String,
  options? : &TCreateElementNSOptionsArg = ElementCreationOptions::empty(),
) -> Element {
  document_create_element_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
    TJsValue::to_js(qualified_name),
    options.to_js(),
  ).unsafe_cast()
}

///|
fn document_create_document_fragment_ffi(obj : JsValue) -> JsValue = "webapi_Document" "createDocumentFragment"

///|
impl TDocument with create_document_fragment(self : Self) -> DocumentFragment {
  document_create_document_fragment_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn document_create_text_node_ffi(obj : JsValue, data : JsValue) -> JsValue = "webapi_Document" "createTextNode"

///|
impl TDocument with create_text_node(self : Self, data : String) -> Text {
  document_create_text_node_ffi(TJsValue::to_js(self), TJsValue::to_js(data)).unsafe_cast()
}

///|
fn document_create_cdata_section_ffi(obj : JsValue, data : JsValue) -> JsValue = "webapi_Document" "createCDATASection"

///|
impl TDocument with create_cdata_section(self : Self, data : String) -> CDATASection {
  document_create_cdata_section_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(data),
  ).unsafe_cast()
}

///|
fn document_create_comment_ffi(obj : JsValue, data : JsValue) -> JsValue = "webapi_Document" "createComment"

///|
impl TDocument with create_comment(self : Self, data : String) -> Comment {
  document_create_comment_ffi(TJsValue::to_js(self), TJsValue::to_js(data)).unsafe_cast()
}

///|
fn document_create_processing_instruction_ffi(
  obj : JsValue,
  target : JsValue,
  data : JsValue,
) -> JsValue = "webapi_Document" "createProcessingInstruction"

///|
impl TDocument with create_processing_instruction(
  self : Self,
  target : String,
  data : String,
) -> ProcessingInstruction {
  document_create_processing_instruction_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(target),
    TJsValue::to_js(data),
  ).unsafe_cast()
}

///|
/// Arg : options
pub(open) trait TImportNodeOptionsArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TImportNodeOptionsArg for Bool with to_js(self : Bool) -> JsValue = "%identity"

///|
pub impl TImportNodeOptionsArg for ImportNodeOptions with to_js(
  self : ImportNodeOptions,
) -> JsValue = "%identity"

///|
fn document_import_node_ffi(
  obj : JsValue,
  node : JsValue,
  options : JsValue,
) -> JsValue = "webapi_Document" "importNode"

///|
impl TDocument with import_node(
  self : Self,
  node : Node,
  options? : &TImportNodeOptionsArg,
) -> Node {
  let options_js = match options {
    Some(v) => v.to_js()
    None => JsValue::undefined()
  }
  document_import_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    options_js,
  ).unsafe_cast()
}

///|
fn document_adopt_node_ffi(obj : JsValue, node : JsValue) -> JsValue = "webapi_Document" "adoptNode"

///|
impl TDocument with adopt_node(self : Self, node : Node) -> Node {
  document_adopt_node_ffi(TJsValue::to_js(self), TJsValue::to_js(node)).unsafe_cast()
}

///|
fn document_create_attribute_ffi(
  obj : JsValue,
  local_name : JsValue,
) -> JsValue = "webapi_Document" "createAttribute"

///|
impl TDocument with create_attribute(self : Self, local_name : String) -> Attr {
  document_create_attribute_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(local_name),
  ).unsafe_cast()
}

///|
fn document_create_attribute_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  qualified_name : JsValue,
) -> JsValue = "webapi_Document" "createAttributeNS"

///|
impl TDocument with create_attribute_ns(
  self : Self,
  namespace_ : String,
  qualified_name : String,
) -> Attr {
  document_create_attribute_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
    TJsValue::to_js(qualified_name),
  ).unsafe_cast()
}

///|
fn document_create_event_ffi(obj : JsValue, interface : JsValue) -> JsValue = "webapi_Document" "createEvent"

///|
impl TDocument with create_event(self : Self, interface : String) -> Event {
  document_create_event_ffi(TJsValue::to_js(self), TJsValue::to_js(interface)).unsafe_cast()
}

///|
fn document_create_range_ffi(obj : JsValue) -> JsValue = "webapi_Document" "createRange"

///|
impl TDocument with create_range(self : Self) -> Range {
  document_create_range_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn document_create_node_iterator_ffi(
  obj : JsValue,
  root : JsValue,
  what_to_show : JsValue,
  filter : JsValue,
) -> JsValue = "webapi_Document" "createNodeIterator"

///|
impl TDocument with create_node_iterator(
  self : Self,
  root : Node,
  what_to_show? : Int,
  filter? : JsValue,
) -> JsValue {
  let what_to_show_js = opt_to_js(what_to_show)
  let filter_js = opt_to_js(filter)
  document_create_node_iterator_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(root),
    what_to_show_js,
    filter_js,
  ).unsafe_cast()
}

///|
fn document_create_tree_walker_ffi(
  obj : JsValue,
  root : JsValue,
  what_to_show : JsValue,
  filter : JsValue,
) -> JsValue = "webapi_Document" "createTreeWalker"

///|
impl TDocument with create_tree_walker(
  self : Self,
  root : Node,
  what_to_show? : Int,
  filter? : JsValue,
) -> JsValue {
  let what_to_show_js = opt_to_js(what_to_show)
  let filter_js = opt_to_js(filter)
  document_create_tree_walker_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(root),
    what_to_show_js,
    filter_js,
  ).unsafe_cast()
}

///|
fn document_parse_html_unsafe_ffi(html : JsValue) -> JsValue = "webapi_Document" "parseHTMLUnsafe"

///|
pub fn Document::parse_html_unsafe(html : JsValue) -> JsValue {
  document_parse_html_unsafe_ffi(html)
}

///|
fn document_get_elements_by_name_ffi(
  obj : JsValue,
  element_name : JsValue,
) -> JsValue = "webapi_Document" "getElementsByName"

///|
impl TDocument with get_elements_by_name(self : Self, element_name : String) -> NodeList {
  document_get_elements_by_name_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(element_name),
  ).unsafe_cast()
}

///|
fn document_open_ffi(
  obj : JsValue,
  unused1 : JsValue,
  unused2 : JsValue,
) -> JsValue = "webapi_Document" "open"

///|
impl TDocument with open(self : Self, unused1? : String, unused2? : String) -> Document {
  let unused1_js = opt_to_js(unused1)
  let unused2_js = opt_to_js(unused2)
  document_open_ffi(TJsValue::to_js(self), unused1_js, unused2_js).unsafe_cast()
}

///|
fn document_open_ffi2(
  obj : JsValue,
  url : JsValue,
  name : JsValue,
  features : JsValue,
) -> JsValue = "webapi_Document" "open"

///|
impl TDocument with open2(
  self : Self,
  url : String,
  name : String,
  features : String,
) -> Window? {
  document_open_ffi2(
    TJsValue::to_js(self),
    TJsValue::to_js(url),
    TJsValue::to_js(name),
    TJsValue::to_js(features),
  ).as_option()
}

///|
fn document_close_ffi(obj : JsValue) -> Unit = "webapi_Document" "close"

///|
impl TDocument with close(self : Self) -> Unit {
  document_close_ffi(TJsValue::to_js(self))
}

///|
fn document_write_ffi(obj : JsValue, text : JsValue) -> Unit = "webapi_Document" "write"

///|
impl TDocument with write(self : Self, text : String) -> Unit {
  document_write_ffi(TJsValue::to_js(self), TJsValue::to_js(text))
}

///|
fn document_writeln_ffi(obj : JsValue, text : JsValue) -> Unit = "webapi_Document" "writeln"

///|
impl TDocument with writeln(self : Self, text : String) -> Unit {
  document_writeln_ffi(TJsValue::to_js(self), TJsValue::to_js(text))
}

///|
fn document_has_focus_ffi(obj : JsValue) -> JsValue = "webapi_Document" "hasFocus"

///|
impl TDocument with has_focus(self : Self) -> Bool {
  document_has_focus_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn document_exec_command_ffi(
  obj : JsValue,
  command_id : JsValue,
  show_ui : JsValue,
  value : JsValue,
) -> JsValue = "webapi_Document" "execCommand"

///|
impl TDocument with exec_command(
  self : Self,
  command_id : String,
  show_ui? : Bool,
  value? : String,
) -> Bool {
  let show_ui_js = opt_to_js(show_ui)
  let value_js = opt_to_js(value)
  document_exec_command_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(command_id),
    show_ui_js,
    value_js,
  ).unsafe_cast()
}

///|
fn document_query_command_enabled_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> JsValue = "webapi_Document" "queryCommandEnabled"

///|
impl TDocument with query_command_enabled(self : Self, command_id : String) -> Bool {
  document_query_command_enabled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(command_id),
  ).unsafe_cast()
}

///|
fn document_query_command_indeterm_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> JsValue = "webapi_Document" "queryCommandIndeterm"

///|
impl TDocument with query_command_indeterm(self : Self, command_id : String) -> Bool {
  document_query_command_indeterm_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(command_id),
  ).unsafe_cast()
}

///|
fn document_query_command_state_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> JsValue = "webapi_Document" "queryCommandState"

///|
impl TDocument with query_command_state(self : Self, command_id : String) -> Bool {
  document_query_command_state_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(command_id),
  ).unsafe_cast()
}

///|
fn document_query_command_supported_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> JsValue = "webapi_Document" "queryCommandSupported"

///|
impl TDocument with query_command_supported(self : Self, command_id : String) -> Bool {
  document_query_command_supported_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(command_id),
  ).unsafe_cast()
}

///|
fn document_query_command_value_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> JsValue = "webapi_Document" "queryCommandValue"

///|
impl TDocument with query_command_value(self : Self, command_id : String) -> String {
  document_query_command_value_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(command_id),
  ).unsafe_cast()
}

///|
fn document_clear_ffi(obj : JsValue) -> Unit = "webapi_Document" "clear"

///|
impl TDocument with clear(self : Self) -> Unit {
  document_clear_ffi(TJsValue::to_js(self))
}

///|
fn document_capture_events_ffi(obj : JsValue) -> Unit = "webapi_Document" "captureEvents"

///|
impl TDocument with capture_events(self : Self) -> Unit {
  document_capture_events_ffi(TJsValue::to_js(self))
}

///|
fn document_release_events_ffi(obj : JsValue) -> Unit = "webapi_Document" "releaseEvents"

///|
impl TDocument with release_events(self : Self) -> Unit {
  document_release_events_ffi(TJsValue::to_js(self))
}

///|
fn document_get_box_quads_ffi(obj : JsValue, options : JsValue) -> JsValue = "webapi_Document" "getBoxQuads"

///|
impl TDocument with get_box_quads(
  self : Self,
  options? : BoxQuadOptions = BoxQuadOptions::empty(),
) -> Array[JsValue] {
  document_get_box_quads_ffi(TJsValue::to_js(self), TJsValue::to_js(options)).unsafe_cast()
}

///|
fn document_convert_quad_from_node_ffi(
  obj : JsValue,
  quad : JsValue,
  from : JsValue,
  options : JsValue,
) -> JsValue = "webapi_Document" "convertQuadFromNode"

///|
impl TDocument with convert_quad_from_node(
  self : Self,
  quad : DOMQuadInit,
  from : JsValue,
  options? : ConvertCoordinateOptions = ConvertCoordinateOptions::empty(),
) -> JsValue {
  document_convert_quad_from_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(quad),
    from,
    TJsValue::to_js(options),
  ).unsafe_cast()
}

///|
fn document_convert_rect_from_node_ffi(
  obj : JsValue,
  rect : JsValue,
  from : JsValue,
  options : JsValue,
) -> JsValue = "webapi_Document" "convertRectFromNode"

///|
impl TDocument with convert_rect_from_node(
  self : Self,
  rect : JsValue,
  from : JsValue,
  options? : ConvertCoordinateOptions = ConvertCoordinateOptions::empty(),
) -> JsValue {
  document_convert_rect_from_node_ffi(
    TJsValue::to_js(self),
    rect,
    from,
    TJsValue::to_js(options),
  ).unsafe_cast()
}

///|
fn document_convert_point_from_node_ffi(
  obj : JsValue,
  point : JsValue,
  from : JsValue,
  options : JsValue,
) -> JsValue = "webapi_Document" "convertPointFromNode"

///|
impl TDocument with convert_point_from_node(
  self : Self,
  point : DOMPointInit,
  from : JsValue,
  options? : ConvertCoordinateOptions = ConvertCoordinateOptions::empty(),
) -> JsValue {
  document_convert_point_from_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(point),
    from,
    TJsValue::to_js(options),
  ).unsafe_cast()
}

///|
fn document_get_element_by_id_ffi(
  obj : JsValue,
  element_id : JsValue,
) -> JsValue = "webapi_Document" "getElementById"

///|
impl TDocument with get_element_by_id(self : Self, element_id : String) -> Element? {
  document_get_element_by_id_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(element_id),
  ).as_option()
}

///|
/// Arg : nodes
pub(open) trait TPrependNodesArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TPrependNodesArg for Node with to_js(self : Node) -> JsValue = "%identity"

///|
pub impl TPrependNodesArg for String with to_js(self : String) -> JsValue = "%identity"

///|
fn document_prepend_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_Document" "prepend"

///|
impl TDocument with prepend(self : Self, nodes : &TPrependNodesArg) -> Unit {
  document_prepend_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
/// Arg : nodes
pub(open) trait TAppendNodesArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TAppendNodesArg for Node with to_js(self : Node) -> JsValue = "%identity"

///|
pub impl TAppendNodesArg for String with to_js(self : String) -> JsValue = "%identity"

///|
fn document_append_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_Document" "append"

///|
impl TDocument with append(self : Self, nodes : &TAppendNodesArg) -> Unit {
  document_append_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
/// Arg : nodes
pub(open) trait TReplaceChildrenNodesArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TReplaceChildrenNodesArg for Node with to_js(self : Node) -> JsValue = "%identity"

///|
pub impl TReplaceChildrenNodesArg for String with to_js(self : String) -> JsValue = "%identity"

///|
fn document_replace_children_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_Document" "replaceChildren"

///|
impl TDocument with replace_children(
  self : Self,
  nodes : &TReplaceChildrenNodesArg,
) -> Unit {
  document_replace_children_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
fn document_move_before_ffi(
  obj : JsValue,
  node : JsValue,
  child : JsValue,
) -> Unit = "webapi_Document" "moveBefore"

///|
impl TDocument with move_before(self : Self, node : Node, child : Node) -> Unit {
  document_move_before_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    TJsValue::to_js(child),
  )
}

///|
fn document_query_selector_ffi(obj : JsValue, selectors : JsValue) -> JsValue = "webapi_Document" "querySelector"

///|
impl TDocument with query_selector(self : Self, selectors : String) -> Element? {
  document_query_selector_ffi(TJsValue::to_js(self), TJsValue::to_js(selectors)).as_option()
}

///|
fn document_query_selector_all_ffi(
  obj : JsValue,
  selectors : JsValue,
) -> JsValue = "webapi_Document" "querySelectorAll"

///|
impl TDocument with query_selector_all(self : Self, selectors : String) -> NodeList {
  document_query_selector_all_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(selectors),
  ).unsafe_cast()
}

///|
fn document_create_expression_ffi(
  obj : JsValue,
  expression : JsValue,
  resolver : JsValue,
) -> JsValue = "webapi_Document" "createExpression"

///|
impl TDocument with create_expression(
  self : Self,
  expression : String,
  resolver? : JsValue,
) -> JsValue {
  let resolver_js = opt_to_js(resolver)
  document_create_expression_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(expression),
    resolver_js,
  ).unsafe_cast()
}

///|
fn document_create_ns_resolver_ffi(
  obj : JsValue,
  node_resolver : JsValue,
) -> JsValue = "webapi_Document" "createNSResolver"

///|
impl TDocument with create_ns_resolver(self : Self, node_resolver : Node) -> Node {
  document_create_ns_resolver_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node_resolver),
  ).unsafe_cast()
}

///|
fn document_evaluate_ffi(
  obj : JsValue,
  expression : JsValue,
  context_node : JsValue,
  resolver : JsValue,
  type_ : JsValue,
  result : JsValue,
) -> JsValue = "webapi_Document" "evaluate"

///|
impl TDocument with evaluate(
  self : Self,
  expression : String,
  context_node : Node,
  resolver? : JsValue,
  type_? : Int,
  result? : JsValue,
) -> JsValue {
  let resolver_js = opt_to_js(resolver)
  let type__js = opt_to_js(type_)
  let result_js = opt_to_js(result)
  document_evaluate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(expression),
    TJsValue::to_js(context_node),
    resolver_js,
    type__js,
    result_js,
  ).unsafe_cast()
}

///|
fn document_scrolling_element_ffi(obj : JsValue) -> JsValue = "webapi_Document" "scrollingElement"

///|
impl TDocument with scrolling_element(self : Self) -> Element? {
  document_scrolling_element_ffi(self.to_js()).as_option()
}

///|
fn document_implementation_ffi(obj : JsValue) -> JsValue = "webapi_Document" "implementation"

///|
impl TDocument with implementation(self : Self) -> JsValue {
  document_implementation_ffi(self.to_js())
}

///|
fn document_url_ffi(obj : JsValue) -> String = "webapi_Document" "URL"

///|
impl TDocument with url(self : Self) -> String {
  document_url_ffi(self.to_js())
}

///|
fn document_document_uri_ffi(obj : JsValue) -> String = "webapi_Document" "documentURI"

///|
impl TDocument with document_uri(self : Self) -> String {
  document_document_uri_ffi(self.to_js())
}

///|
fn document_compat_mode_ffi(obj : JsValue) -> String = "webapi_Document" "compatMode"

///|
impl TDocument with compat_mode(self : Self) -> String {
  document_compat_mode_ffi(self.to_js())
}

///|
fn document_character_set_ffi(obj : JsValue) -> String = "webapi_Document" "characterSet"

///|
impl TDocument with character_set(self : Self) -> String {
  document_character_set_ffi(self.to_js())
}

///|
fn document_charset_ffi(obj : JsValue) -> String = "webapi_Document" "charset"

///|
impl TDocument with charset(self : Self) -> String {
  document_charset_ffi(self.to_js())
}

///|
fn document_input_encoding_ffi(obj : JsValue) -> String = "webapi_Document" "inputEncoding"

///|
impl TDocument with input_encoding(self : Self) -> String {
  document_input_encoding_ffi(self.to_js())
}

///|
fn document_content_type_ffi(obj : JsValue) -> String = "webapi_Document" "contentType"

///|
impl TDocument with content_type(self : Self) -> String {
  document_content_type_ffi(self.to_js())
}

///|
fn document_doctype_ffi(obj : JsValue) -> JsValue = "webapi_Document" "doctype"

///|
impl TDocument with doctype(self : Self) -> DocumentType? {
  document_doctype_ffi(self.to_js()).as_option()
}

///|
fn document_document_element_ffi(obj : JsValue) -> JsValue = "webapi_Document" "documentElement"

///|
impl TDocument with document_element(self : Self) -> Element? {
  document_document_element_ffi(self.to_js()).as_option()
}

///|
fn document_location_ffi(obj : JsValue) -> JsValue = "webapi_Document" "location"

///|
impl TDocument with location(self : Self) -> Location? {
  document_location_ffi(self.to_js()).as_option()
}

///|
fn document_domain_ffi(obj : JsValue) -> String = "webapi_Document" "domain"

///|
impl TDocument with domain(self : Self) -> String {
  document_domain_ffi(self.to_js())
}

///|
fn document_set_domain_ffi(obj : JsValue, value : String) -> Unit = "webapi_Document" "set_domain"

///|
impl TDocument with set_domain(self : Self, value : String) -> Unit {
  document_set_domain_ffi(self.to_js(), value)
}

///|
fn document_referrer_ffi(obj : JsValue) -> String = "webapi_Document" "referrer"

///|
impl TDocument with referrer(self : Self) -> String {
  document_referrer_ffi(self.to_js())
}

///|
fn document_cookie_ffi(obj : JsValue) -> String = "webapi_Document" "cookie"

///|
impl TDocument with cookie(self : Self) -> String {
  document_cookie_ffi(self.to_js())
}

///|
fn document_set_cookie_ffi(obj : JsValue, value : String) -> Unit = "webapi_Document" "set_cookie"

///|
impl TDocument with set_cookie(self : Self, value : String) -> Unit {
  document_set_cookie_ffi(self.to_js(), value)
}

///|
fn document_last_modified_ffi(obj : JsValue) -> String = "webapi_Document" "lastModified"

///|
impl TDocument with last_modified(self : Self) -> String {
  document_last_modified_ffi(self.to_js())
}

///|
fn document_ready_state_ffi(obj : JsValue) -> JsValue = "webapi_Document" "readyState"

///|
impl TDocument with ready_state(self : Self) -> JsValue {
  document_ready_state_ffi(self.to_js())
}

///|
fn document_title_ffi(obj : JsValue) -> String = "webapi_Document" "title"

///|
impl TDocument with title(self : Self) -> String {
  document_title_ffi(self.to_js())
}

///|
fn document_set_title_ffi(obj : JsValue, value : String) -> Unit = "webapi_Document" "set_title"

///|
impl TDocument with set_title(self : Self, value : String) -> Unit {
  document_set_title_ffi(self.to_js(), value)
}

///|
fn document_dir_ffi(obj : JsValue) -> String = "webapi_Document" "dir"

///|
impl TDocument with dir(self : Self) -> String {
  document_dir_ffi(self.to_js())
}

///|
fn document_set_dir_ffi(obj : JsValue, value : String) -> Unit = "webapi_Document" "set_dir"

///|
impl TDocument with set_dir(self : Self, value : String) -> Unit {
  document_set_dir_ffi(self.to_js(), value)
}

///|
fn document_body_ffi(obj : JsValue) -> JsValue = "webapi_Document" "body"

///|
impl TDocument with body(self : Self) -> HTMLElement? {
  document_body_ffi(self.to_js()).as_option()
}

///|
fn document_set_body_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_body"

///|
impl TDocument with set_body(self : Self, value : HTMLElement) -> Unit {
  document_set_body_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_head_ffi(obj : JsValue) -> JsValue = "webapi_Document" "head"

///|
impl TDocument with head(self : Self) -> HTMLHeadElement? {
  document_head_ffi(self.to_js()).as_option()
}

///|
fn document_images_ffi(obj : JsValue) -> JsValue = "webapi_Document" "images"

///|
impl TDocument with images(self : Self) -> HTMLCollection {
  document_images_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_embeds_ffi(obj : JsValue) -> JsValue = "webapi_Document" "embeds"

///|
impl TDocument with embeds(self : Self) -> HTMLCollection {
  document_embeds_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_plugins_ffi(obj : JsValue) -> JsValue = "webapi_Document" "plugins"

///|
impl TDocument with plugins(self : Self) -> HTMLCollection {
  document_plugins_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_links_ffi(obj : JsValue) -> JsValue = "webapi_Document" "links"

///|
impl TDocument with links(self : Self) -> HTMLCollection {
  document_links_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_forms_ffi(obj : JsValue) -> JsValue = "webapi_Document" "forms"

///|
impl TDocument with forms(self : Self) -> HTMLCollection {
  document_forms_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_scripts_ffi(obj : JsValue) -> JsValue = "webapi_Document" "scripts"

///|
impl TDocument with scripts(self : Self) -> HTMLCollection {
  document_scripts_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_current_script_ffi(obj : JsValue) -> JsValue = "webapi_Document" "currentScript"

///|
impl TDocument with current_script(self : Self) -> JsValue? {
  document_current_script_ffi(self.to_js()).as_option()
}

///|
fn document_default_view_ffi(obj : JsValue) -> JsValue = "webapi_Document" "defaultView"

///|
impl TDocument with default_view(self : Self) -> Window? {
  document_default_view_ffi(self.to_js()).as_option()
}

///|
fn document_design_mode_ffi(obj : JsValue) -> String = "webapi_Document" "designMode"

///|
impl TDocument with design_mode(self : Self) -> String {
  document_design_mode_ffi(self.to_js())
}

///|
fn document_set_design_mode_ffi(obj : JsValue, value : String) -> Unit = "webapi_Document" "set_designMode"

///|
impl TDocument with set_design_mode(self : Self, value : String) -> Unit {
  document_set_design_mode_ffi(self.to_js(), value)
}

///|
fn document_hidden_ffi(obj : JsValue) -> Bool = "webapi_Document" "hidden"

///|
impl TDocument with hidden(self : Self) -> Bool {
  document_hidden_ffi(self.to_js())
}

///|
fn document_visibility_state_ffi(obj : JsValue) -> JsValue = "webapi_Document" "visibilityState"

///|
impl TDocument with visibility_state(self : Self) -> JsValue {
  document_visibility_state_ffi(self.to_js())
}

///|
fn document_onreadystatechange_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onreadystatechange"

///|
impl TDocument with onreadystatechange(self : Self) -> EventHandler {
  document_onreadystatechange_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onreadystatechange_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onreadystatechange"

///|
impl TDocument with set_onreadystatechange(self : Self, value : EventHandler) -> Unit {
  document_set_onreadystatechange_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onvisibilitychange_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onvisibilitychange"

///|
impl TDocument with onvisibilitychange(self : Self) -> EventHandler {
  document_onvisibilitychange_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onvisibilitychange_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onvisibilitychange"

///|
impl TDocument with set_onvisibilitychange(self : Self, value : EventHandler) -> Unit {
  document_set_onvisibilitychange_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_fg_color_ffi(obj : JsValue) -> String = "webapi_Document" "fgColor"

///|
impl TDocument with fg_color(self : Self) -> String {
  document_fg_color_ffi(self.to_js())
}

///|
fn document_set_fg_color_ffi(obj : JsValue, value : String) -> Unit = "webapi_Document" "set_fgColor"

///|
impl TDocument with set_fg_color(self : Self, value : String) -> Unit {
  document_set_fg_color_ffi(self.to_js(), value)
}

///|
fn document_link_color_ffi(obj : JsValue) -> String = "webapi_Document" "linkColor"

///|
impl TDocument with link_color(self : Self) -> String {
  document_link_color_ffi(self.to_js())
}

///|
fn document_set_link_color_ffi(obj : JsValue, value : String) -> Unit = "webapi_Document" "set_linkColor"

///|
impl TDocument with set_link_color(self : Self, value : String) -> Unit {
  document_set_link_color_ffi(self.to_js(), value)
}

///|
fn document_vlink_color_ffi(obj : JsValue) -> String = "webapi_Document" "vlinkColor"

///|
impl TDocument with vlink_color(self : Self) -> String {
  document_vlink_color_ffi(self.to_js())
}

///|
fn document_set_vlink_color_ffi(obj : JsValue, value : String) -> Unit = "webapi_Document" "set_vlinkColor"

///|
impl TDocument with set_vlink_color(self : Self, value : String) -> Unit {
  document_set_vlink_color_ffi(self.to_js(), value)
}

///|
fn document_alink_color_ffi(obj : JsValue) -> String = "webapi_Document" "alinkColor"

///|
impl TDocument with alink_color(self : Self) -> String {
  document_alink_color_ffi(self.to_js())
}

///|
fn document_set_alink_color_ffi(obj : JsValue, value : String) -> Unit = "webapi_Document" "set_alinkColor"

///|
impl TDocument with set_alink_color(self : Self, value : String) -> Unit {
  document_set_alink_color_ffi(self.to_js(), value)
}

///|
fn document_bg_color_ffi(obj : JsValue) -> String = "webapi_Document" "bgColor"

///|
impl TDocument with bg_color(self : Self) -> String {
  document_bg_color_ffi(self.to_js())
}

///|
fn document_set_bg_color_ffi(obj : JsValue, value : String) -> Unit = "webapi_Document" "set_bgColor"

///|
impl TDocument with set_bg_color(self : Self, value : String) -> Unit {
  document_set_bg_color_ffi(self.to_js(), value)
}

///|
fn document_anchors_ffi(obj : JsValue) -> JsValue = "webapi_Document" "anchors"

///|
impl TDocument with anchors(self : Self) -> HTMLCollection {
  document_anchors_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_applets_ffi(obj : JsValue) -> JsValue = "webapi_Document" "applets"

///|
impl TDocument with applets(self : Self) -> HTMLCollection {
  document_applets_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_all_ffi(obj : JsValue) -> JsValue = "webapi_Document" "all"

///|
impl TDocument with all(self : Self) -> JsValue {
  document_all_ffi(self.to_js())
}

///|
fn document_style_sheets_ffi(obj : JsValue) -> JsValue = "webapi_Document" "styleSheets"

///|
impl TDocument with style_sheets(self : Self) -> JsValue {
  document_style_sheets_ffi(self.to_js())
}

///|
fn document_adopted_style_sheets_ffi(obj : JsValue) -> JsValue = "webapi_Document" "adoptedStyleSheets"

///|
impl TDocument with adopted_style_sheets(self : Self) -> Array[JsValue] {
  document_adopted_style_sheets_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_adopted_style_sheets_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_Document" "set_adoptedStyleSheets"

///|
impl TDocument with set_adopted_style_sheets(
  self : Self,
  value : Array[JsValue],
) -> Unit {
  document_set_adopted_style_sheets_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_custom_element_registry_ffi(obj : JsValue) -> JsValue = "webapi_Document" "customElementRegistry"

///|
impl TDocument with custom_element_registry(self : Self) -> JsValue? {
  document_custom_element_registry_ffi(self.to_js()).as_option()
}

///|
fn document_active_element_ffi(obj : JsValue) -> JsValue = "webapi_Document" "activeElement"

///|
impl TDocument with active_element(self : Self) -> Element? {
  document_active_element_ffi(self.to_js()).as_option()
}

///|
fn document_children_ffi(obj : JsValue) -> JsValue = "webapi_Document" "children"

///|
impl TDocument with children(self : Self) -> HTMLCollection {
  document_children_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_first_element_child_ffi(obj : JsValue) -> JsValue = "webapi_Document" "firstElementChild"

///|
impl TDocument with first_element_child(self : Self) -> Element? {
  document_first_element_child_ffi(self.to_js()).as_option()
}

///|
fn document_last_element_child_ffi(obj : JsValue) -> JsValue = "webapi_Document" "lastElementChild"

///|
impl TDocument with last_element_child(self : Self) -> Element? {
  document_last_element_child_ffi(self.to_js()).as_option()
}

///|
fn document_child_element_count_ffi(obj : JsValue) -> Int = "webapi_Document" "childElementCount"

///|
impl TDocument with child_element_count(self : Self) -> Int {
  document_child_element_count_ffi(self.to_js())
}

///|
fn document_onabort_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onabort"

///|
impl TDocument with onabort(self : Self) -> EventHandler {
  document_onabort_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onabort_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onabort"

///|
impl TDocument with set_onabort(self : Self, value : EventHandler) -> Unit {
  document_set_onabort_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onauxclick_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onauxclick"

///|
impl TDocument with onauxclick(self : Self) -> EventHandler {
  document_onauxclick_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onauxclick_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onauxclick"

///|
impl TDocument with set_onauxclick(self : Self, value : EventHandler) -> Unit {
  document_set_onauxclick_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onbeforeinput_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onbeforeinput"

///|
impl TDocument with onbeforeinput(self : Self) -> EventHandler {
  document_onbeforeinput_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onbeforeinput_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onbeforeinput"

///|
impl TDocument with set_onbeforeinput(self : Self, value : EventHandler) -> Unit {
  document_set_onbeforeinput_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onbeforematch_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onbeforematch"

///|
impl TDocument with onbeforematch(self : Self) -> EventHandler {
  document_onbeforematch_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onbeforematch_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onbeforematch"

///|
impl TDocument with set_onbeforematch(self : Self, value : EventHandler) -> Unit {
  document_set_onbeforematch_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onbeforetoggle_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onbeforetoggle"

///|
impl TDocument with onbeforetoggle(self : Self) -> EventHandler {
  document_onbeforetoggle_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onbeforetoggle_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onbeforetoggle"

///|
impl TDocument with set_onbeforetoggle(self : Self, value : EventHandler) -> Unit {
  document_set_onbeforetoggle_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onblur_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onblur"

///|
impl TDocument with onblur(self : Self) -> EventHandler {
  document_onblur_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onblur_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onblur"

///|
impl TDocument with set_onblur(self : Self, value : EventHandler) -> Unit {
  document_set_onblur_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_oncancel_ffi(obj : JsValue) -> JsValue = "webapi_Document" "oncancel"

///|
impl TDocument with oncancel(self : Self) -> EventHandler {
  document_oncancel_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_oncancel_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_oncancel"

///|
impl TDocument with set_oncancel(self : Self, value : EventHandler) -> Unit {
  document_set_oncancel_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_oncanplay_ffi(obj : JsValue) -> JsValue = "webapi_Document" "oncanplay"

///|
impl TDocument with oncanplay(self : Self) -> EventHandler {
  document_oncanplay_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_oncanplay_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_oncanplay"

///|
impl TDocument with set_oncanplay(self : Self, value : EventHandler) -> Unit {
  document_set_oncanplay_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_oncanplaythrough_ffi(obj : JsValue) -> JsValue = "webapi_Document" "oncanplaythrough"

///|
impl TDocument with oncanplaythrough(self : Self) -> EventHandler {
  document_oncanplaythrough_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_oncanplaythrough_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_oncanplaythrough"

///|
impl TDocument with set_oncanplaythrough(self : Self, value : EventHandler) -> Unit {
  document_set_oncanplaythrough_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onchange_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onchange"

///|
impl TDocument with onchange(self : Self) -> EventHandler {
  document_onchange_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onchange_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onchange"

///|
impl TDocument with set_onchange(self : Self, value : EventHandler) -> Unit {
  document_set_onchange_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onclick_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onclick"

///|
impl TDocument with onclick(self : Self) -> EventHandler {
  document_onclick_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onclick_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onclick"

///|
impl TDocument with set_onclick(self : Self, value : EventHandler) -> Unit {
  document_set_onclick_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onclose_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onclose"

///|
impl TDocument with onclose(self : Self) -> EventHandler {
  document_onclose_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onclose_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onclose"

///|
impl TDocument with set_onclose(self : Self, value : EventHandler) -> Unit {
  document_set_onclose_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_oncommand_ffi(obj : JsValue) -> JsValue = "webapi_Document" "oncommand"

///|
impl TDocument with oncommand(self : Self) -> EventHandler {
  document_oncommand_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_oncommand_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_oncommand"

///|
impl TDocument with set_oncommand(self : Self, value : EventHandler) -> Unit {
  document_set_oncommand_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_oncontextlost_ffi(obj : JsValue) -> JsValue = "webapi_Document" "oncontextlost"

///|
impl TDocument with oncontextlost(self : Self) -> EventHandler {
  document_oncontextlost_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_oncontextlost_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_oncontextlost"

///|
impl TDocument with set_oncontextlost(self : Self, value : EventHandler) -> Unit {
  document_set_oncontextlost_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_oncontextmenu_ffi(obj : JsValue) -> JsValue = "webapi_Document" "oncontextmenu"

///|
impl TDocument with oncontextmenu(self : Self) -> EventHandler {
  document_oncontextmenu_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_oncontextmenu_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_oncontextmenu"

///|
impl TDocument with set_oncontextmenu(self : Self, value : EventHandler) -> Unit {
  document_set_oncontextmenu_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_oncontextrestored_ffi(obj : JsValue) -> JsValue = "webapi_Document" "oncontextrestored"

///|
impl TDocument with oncontextrestored(self : Self) -> EventHandler {
  document_oncontextrestored_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_oncontextrestored_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_oncontextrestored"

///|
impl TDocument with set_oncontextrestored(self : Self, value : EventHandler) -> Unit {
  document_set_oncontextrestored_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_oncopy_ffi(obj : JsValue) -> JsValue = "webapi_Document" "oncopy"

///|
impl TDocument with oncopy(self : Self) -> EventHandler {
  document_oncopy_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_oncopy_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_oncopy"

///|
impl TDocument with set_oncopy(self : Self, value : EventHandler) -> Unit {
  document_set_oncopy_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_oncuechange_ffi(obj : JsValue) -> JsValue = "webapi_Document" "oncuechange"

///|
impl TDocument with oncuechange(self : Self) -> EventHandler {
  document_oncuechange_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_oncuechange_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_oncuechange"

///|
impl TDocument with set_oncuechange(self : Self, value : EventHandler) -> Unit {
  document_set_oncuechange_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_oncut_ffi(obj : JsValue) -> JsValue = "webapi_Document" "oncut"

///|
impl TDocument with oncut(self : Self) -> EventHandler {
  document_oncut_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_oncut_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_oncut"

///|
impl TDocument with set_oncut(self : Self, value : EventHandler) -> Unit {
  document_set_oncut_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_ondblclick_ffi(obj : JsValue) -> JsValue = "webapi_Document" "ondblclick"

///|
impl TDocument with ondblclick(self : Self) -> EventHandler {
  document_ondblclick_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_ondblclick_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_ondblclick"

///|
impl TDocument with set_ondblclick(self : Self, value : EventHandler) -> Unit {
  document_set_ondblclick_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_ondrag_ffi(obj : JsValue) -> JsValue = "webapi_Document" "ondrag"

///|
impl TDocument with ondrag(self : Self) -> EventHandler {
  document_ondrag_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_ondrag_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_ondrag"

///|
impl TDocument with set_ondrag(self : Self, value : EventHandler) -> Unit {
  document_set_ondrag_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_ondragend_ffi(obj : JsValue) -> JsValue = "webapi_Document" "ondragend"

///|
impl TDocument with ondragend(self : Self) -> EventHandler {
  document_ondragend_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_ondragend_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_ondragend"

///|
impl TDocument with set_ondragend(self : Self, value : EventHandler) -> Unit {
  document_set_ondragend_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_ondragenter_ffi(obj : JsValue) -> JsValue = "webapi_Document" "ondragenter"

///|
impl TDocument with ondragenter(self : Self) -> EventHandler {
  document_ondragenter_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_ondragenter_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_ondragenter"

///|
impl TDocument with set_ondragenter(self : Self, value : EventHandler) -> Unit {
  document_set_ondragenter_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_ondragleave_ffi(obj : JsValue) -> JsValue = "webapi_Document" "ondragleave"

///|
impl TDocument with ondragleave(self : Self) -> EventHandler {
  document_ondragleave_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_ondragleave_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_ondragleave"

///|
impl TDocument with set_ondragleave(self : Self, value : EventHandler) -> Unit {
  document_set_ondragleave_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_ondragover_ffi(obj : JsValue) -> JsValue = "webapi_Document" "ondragover"

///|
impl TDocument with ondragover(self : Self) -> EventHandler {
  document_ondragover_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_ondragover_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_ondragover"

///|
impl TDocument with set_ondragover(self : Self, value : EventHandler) -> Unit {
  document_set_ondragover_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_ondragstart_ffi(obj : JsValue) -> JsValue = "webapi_Document" "ondragstart"

///|
impl TDocument with ondragstart(self : Self) -> EventHandler {
  document_ondragstart_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_ondragstart_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_ondragstart"

///|
impl TDocument with set_ondragstart(self : Self, value : EventHandler) -> Unit {
  document_set_ondragstart_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_ondrop_ffi(obj : JsValue) -> JsValue = "webapi_Document" "ondrop"

///|
impl TDocument with ondrop(self : Self) -> EventHandler {
  document_ondrop_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_ondrop_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_ondrop"

///|
impl TDocument with set_ondrop(self : Self, value : EventHandler) -> Unit {
  document_set_ondrop_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_ondurationchange_ffi(obj : JsValue) -> JsValue = "webapi_Document" "ondurationchange"

///|
impl TDocument with ondurationchange(self : Self) -> EventHandler {
  document_ondurationchange_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_ondurationchange_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_ondurationchange"

///|
impl TDocument with set_ondurationchange(self : Self, value : EventHandler) -> Unit {
  document_set_ondurationchange_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onemptied_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onemptied"

///|
impl TDocument with onemptied(self : Self) -> EventHandler {
  document_onemptied_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onemptied_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onemptied"

///|
impl TDocument with set_onemptied(self : Self, value : EventHandler) -> Unit {
  document_set_onemptied_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onended_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onended"

///|
impl TDocument with onended(self : Self) -> EventHandler {
  document_onended_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onended_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onended"

///|
impl TDocument with set_onended(self : Self, value : EventHandler) -> Unit {
  document_set_onended_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onerror_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onerror"

///|
impl TDocument with onerror(self : Self) -> OnErrorEventHandler {
  document_onerror_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onerror_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onerror"

///|
impl TDocument with set_onerror(self : Self, value : OnErrorEventHandler) -> Unit {
  document_set_onerror_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onfocus_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onfocus"

///|
impl TDocument with onfocus(self : Self) -> EventHandler {
  document_onfocus_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onfocus_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onfocus"

///|
impl TDocument with set_onfocus(self : Self, value : EventHandler) -> Unit {
  document_set_onfocus_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onformdata_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onformdata"

///|
impl TDocument with onformdata(self : Self) -> EventHandler {
  document_onformdata_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onformdata_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onformdata"

///|
impl TDocument with set_onformdata(self : Self, value : EventHandler) -> Unit {
  document_set_onformdata_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_oninput_ffi(obj : JsValue) -> JsValue = "webapi_Document" "oninput"

///|
impl TDocument with oninput(self : Self) -> EventHandler {
  document_oninput_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_oninput_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_oninput"

///|
impl TDocument with set_oninput(self : Self, value : EventHandler) -> Unit {
  document_set_oninput_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_oninvalid_ffi(obj : JsValue) -> JsValue = "webapi_Document" "oninvalid"

///|
impl TDocument with oninvalid(self : Self) -> EventHandler {
  document_oninvalid_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_oninvalid_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_oninvalid"

///|
impl TDocument with set_oninvalid(self : Self, value : EventHandler) -> Unit {
  document_set_oninvalid_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onkeydown_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onkeydown"

///|
impl TDocument with onkeydown(self : Self) -> EventHandler {
  document_onkeydown_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onkeydown_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onkeydown"

///|
impl TDocument with set_onkeydown(self : Self, value : EventHandler) -> Unit {
  document_set_onkeydown_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onkeypress_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onkeypress"

///|
impl TDocument with onkeypress(self : Self) -> EventHandler {
  document_onkeypress_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onkeypress_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onkeypress"

///|
impl TDocument with set_onkeypress(self : Self, value : EventHandler) -> Unit {
  document_set_onkeypress_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onkeyup_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onkeyup"

///|
impl TDocument with onkeyup(self : Self) -> EventHandler {
  document_onkeyup_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onkeyup_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onkeyup"

///|
impl TDocument with set_onkeyup(self : Self, value : EventHandler) -> Unit {
  document_set_onkeyup_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onload_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onload"

///|
impl TDocument with onload(self : Self) -> EventHandler {
  document_onload_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onload_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onload"

///|
impl TDocument with set_onload(self : Self, value : EventHandler) -> Unit {
  document_set_onload_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onloadeddata_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onloadeddata"

///|
impl TDocument with onloadeddata(self : Self) -> EventHandler {
  document_onloadeddata_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onloadeddata_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onloadeddata"

///|
impl TDocument with set_onloadeddata(self : Self, value : EventHandler) -> Unit {
  document_set_onloadeddata_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onloadedmetadata_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onloadedmetadata"

///|
impl TDocument with onloadedmetadata(self : Self) -> EventHandler {
  document_onloadedmetadata_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onloadedmetadata_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onloadedmetadata"

///|
impl TDocument with set_onloadedmetadata(self : Self, value : EventHandler) -> Unit {
  document_set_onloadedmetadata_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onloadstart_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onloadstart"

///|
impl TDocument with onloadstart(self : Self) -> EventHandler {
  document_onloadstart_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onloadstart_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onloadstart"

///|
impl TDocument with set_onloadstart(self : Self, value : EventHandler) -> Unit {
  document_set_onloadstart_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onmousedown_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onmousedown"

///|
impl TDocument with onmousedown(self : Self) -> EventHandler {
  document_onmousedown_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onmousedown_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onmousedown"

///|
impl TDocument with set_onmousedown(self : Self, value : EventHandler) -> Unit {
  document_set_onmousedown_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onmouseenter_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onmouseenter"

///|
impl TDocument with onmouseenter(self : Self) -> EventHandler {
  document_onmouseenter_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onmouseenter_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onmouseenter"

///|
impl TDocument with set_onmouseenter(self : Self, value : EventHandler) -> Unit {
  document_set_onmouseenter_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onmouseleave_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onmouseleave"

///|
impl TDocument with onmouseleave(self : Self) -> EventHandler {
  document_onmouseleave_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onmouseleave_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onmouseleave"

///|
impl TDocument with set_onmouseleave(self : Self, value : EventHandler) -> Unit {
  document_set_onmouseleave_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onmousemove_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onmousemove"

///|
impl TDocument with onmousemove(self : Self) -> EventHandler {
  document_onmousemove_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onmousemove_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onmousemove"

///|
impl TDocument with set_onmousemove(self : Self, value : EventHandler) -> Unit {
  document_set_onmousemove_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onmouseout_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onmouseout"

///|
impl TDocument with onmouseout(self : Self) -> EventHandler {
  document_onmouseout_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onmouseout_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onmouseout"

///|
impl TDocument with set_onmouseout(self : Self, value : EventHandler) -> Unit {
  document_set_onmouseout_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onmouseover_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onmouseover"

///|
impl TDocument with onmouseover(self : Self) -> EventHandler {
  document_onmouseover_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onmouseover_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onmouseover"

///|
impl TDocument with set_onmouseover(self : Self, value : EventHandler) -> Unit {
  document_set_onmouseover_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onmouseup_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onmouseup"

///|
impl TDocument with onmouseup(self : Self) -> EventHandler {
  document_onmouseup_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onmouseup_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onmouseup"

///|
impl TDocument with set_onmouseup(self : Self, value : EventHandler) -> Unit {
  document_set_onmouseup_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onpaste_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onpaste"

///|
impl TDocument with onpaste(self : Self) -> EventHandler {
  document_onpaste_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onpaste_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onpaste"

///|
impl TDocument with set_onpaste(self : Self, value : EventHandler) -> Unit {
  document_set_onpaste_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onpause_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onpause"

///|
impl TDocument with onpause(self : Self) -> EventHandler {
  document_onpause_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onpause_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onpause"

///|
impl TDocument with set_onpause(self : Self, value : EventHandler) -> Unit {
  document_set_onpause_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onplay_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onplay"

///|
impl TDocument with onplay(self : Self) -> EventHandler {
  document_onplay_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onplay_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onplay"

///|
impl TDocument with set_onplay(self : Self, value : EventHandler) -> Unit {
  document_set_onplay_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onplaying_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onplaying"

///|
impl TDocument with onplaying(self : Self) -> EventHandler {
  document_onplaying_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onplaying_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onplaying"

///|
impl TDocument with set_onplaying(self : Self, value : EventHandler) -> Unit {
  document_set_onplaying_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onprogress_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onprogress"

///|
impl TDocument with onprogress(self : Self) -> EventHandler {
  document_onprogress_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onprogress_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onprogress"

///|
impl TDocument with set_onprogress(self : Self, value : EventHandler) -> Unit {
  document_set_onprogress_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onratechange_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onratechange"

///|
impl TDocument with onratechange(self : Self) -> EventHandler {
  document_onratechange_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onratechange_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onratechange"

///|
impl TDocument with set_onratechange(self : Self, value : EventHandler) -> Unit {
  document_set_onratechange_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onreset_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onreset"

///|
impl TDocument with onreset(self : Self) -> EventHandler {
  document_onreset_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onreset_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onreset"

///|
impl TDocument with set_onreset(self : Self, value : EventHandler) -> Unit {
  document_set_onreset_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onresize_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onresize"

///|
impl TDocument with onresize(self : Self) -> EventHandler {
  document_onresize_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onresize_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onresize"

///|
impl TDocument with set_onresize(self : Self, value : EventHandler) -> Unit {
  document_set_onresize_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onscroll_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onscroll"

///|
impl TDocument with onscroll(self : Self) -> EventHandler {
  document_onscroll_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onscroll_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onscroll"

///|
impl TDocument with set_onscroll(self : Self, value : EventHandler) -> Unit {
  document_set_onscroll_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onscrollend_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onscrollend"

///|
impl TDocument with onscrollend(self : Self) -> EventHandler {
  document_onscrollend_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onscrollend_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onscrollend"

///|
impl TDocument with set_onscrollend(self : Self, value : EventHandler) -> Unit {
  document_set_onscrollend_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onsecuritypolicyviolation_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onsecuritypolicyviolation"

///|
impl TDocument with onsecuritypolicyviolation(self : Self) -> EventHandler {
  document_onsecuritypolicyviolation_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onsecuritypolicyviolation_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_Document" "set_onsecuritypolicyviolation"

///|
impl TDocument with set_onsecuritypolicyviolation(
  self : Self,
  value : EventHandler,
) -> Unit {
  document_set_onsecuritypolicyviolation_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn document_onseeked_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onseeked"

///|
impl TDocument with onseeked(self : Self) -> EventHandler {
  document_onseeked_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onseeked_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onseeked"

///|
impl TDocument with set_onseeked(self : Self, value : EventHandler) -> Unit {
  document_set_onseeked_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onseeking_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onseeking"

///|
impl TDocument with onseeking(self : Self) -> EventHandler {
  document_onseeking_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onseeking_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onseeking"

///|
impl TDocument with set_onseeking(self : Self, value : EventHandler) -> Unit {
  document_set_onseeking_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onselect_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onselect"

///|
impl TDocument with onselect(self : Self) -> EventHandler {
  document_onselect_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onselect_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onselect"

///|
impl TDocument with set_onselect(self : Self, value : EventHandler) -> Unit {
  document_set_onselect_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onslotchange_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onslotchange"

///|
impl TDocument with onslotchange(self : Self) -> EventHandler {
  document_onslotchange_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onslotchange_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onslotchange"

///|
impl TDocument with set_onslotchange(self : Self, value : EventHandler) -> Unit {
  document_set_onslotchange_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onstalled_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onstalled"

///|
impl TDocument with onstalled(self : Self) -> EventHandler {
  document_onstalled_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onstalled_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onstalled"

///|
impl TDocument with set_onstalled(self : Self, value : EventHandler) -> Unit {
  document_set_onstalled_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onsubmit_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onsubmit"

///|
impl TDocument with onsubmit(self : Self) -> EventHandler {
  document_onsubmit_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onsubmit_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onsubmit"

///|
impl TDocument with set_onsubmit(self : Self, value : EventHandler) -> Unit {
  document_set_onsubmit_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onsuspend_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onsuspend"

///|
impl TDocument with onsuspend(self : Self) -> EventHandler {
  document_onsuspend_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onsuspend_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onsuspend"

///|
impl TDocument with set_onsuspend(self : Self, value : EventHandler) -> Unit {
  document_set_onsuspend_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_ontimeupdate_ffi(obj : JsValue) -> JsValue = "webapi_Document" "ontimeupdate"

///|
impl TDocument with ontimeupdate(self : Self) -> EventHandler {
  document_ontimeupdate_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_ontimeupdate_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_ontimeupdate"

///|
impl TDocument with set_ontimeupdate(self : Self, value : EventHandler) -> Unit {
  document_set_ontimeupdate_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_ontoggle_ffi(obj : JsValue) -> JsValue = "webapi_Document" "ontoggle"

///|
impl TDocument with ontoggle(self : Self) -> EventHandler {
  document_ontoggle_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_ontoggle_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_ontoggle"

///|
impl TDocument with set_ontoggle(self : Self, value : EventHandler) -> Unit {
  document_set_ontoggle_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onvolumechange_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onvolumechange"

///|
impl TDocument with onvolumechange(self : Self) -> EventHandler {
  document_onvolumechange_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onvolumechange_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onvolumechange"

///|
impl TDocument with set_onvolumechange(self : Self, value : EventHandler) -> Unit {
  document_set_onvolumechange_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onwaiting_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onwaiting"

///|
impl TDocument with onwaiting(self : Self) -> EventHandler {
  document_onwaiting_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onwaiting_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onwaiting"

///|
impl TDocument with set_onwaiting(self : Self, value : EventHandler) -> Unit {
  document_set_onwaiting_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onwebkitanimationend_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onwebkitanimationend"

///|
impl TDocument with onwebkitanimationend(self : Self) -> EventHandler {
  document_onwebkitanimationend_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onwebkitanimationend_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_Document" "set_onwebkitanimationend"

///|
impl TDocument with set_onwebkitanimationend(self : Self, value : EventHandler) -> Unit {
  document_set_onwebkitanimationend_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onwebkitanimationiteration_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onwebkitanimationiteration"

///|
impl TDocument with onwebkitanimationiteration(self : Self) -> EventHandler {
  document_onwebkitanimationiteration_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onwebkitanimationiteration_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_Document" "set_onwebkitanimationiteration"

///|
impl TDocument with set_onwebkitanimationiteration(
  self : Self,
  value : EventHandler,
) -> Unit {
  document_set_onwebkitanimationiteration_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn document_onwebkitanimationstart_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onwebkitanimationstart"

///|
impl TDocument with onwebkitanimationstart(self : Self) -> EventHandler {
  document_onwebkitanimationstart_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onwebkitanimationstart_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_Document" "set_onwebkitanimationstart"

///|
impl TDocument with set_onwebkitanimationstart(
  self : Self,
  value : EventHandler,
) -> Unit {
  document_set_onwebkitanimationstart_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onwebkittransitionend_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onwebkittransitionend"

///|
impl TDocument with onwebkittransitionend(self : Self) -> EventHandler {
  document_onwebkittransitionend_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onwebkittransitionend_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_Document" "set_onwebkittransitionend"

///|
impl TDocument with set_onwebkittransitionend(self : Self, value : EventHandler) -> Unit {
  document_set_onwebkittransitionend_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onwheel_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onwheel"

///|
impl TDocument with onwheel(self : Self) -> EventHandler {
  document_onwheel_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onwheel_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onwheel"

///|
impl TDocument with set_onwheel(self : Self, value : EventHandler) -> Unit {
  document_set_onwheel_ffi(self.to_js(), TJsValue::to_js(value))
}
