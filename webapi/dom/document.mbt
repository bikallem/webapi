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
}

///|
pub impl TDocument for Document

///|
pub impl TJsValue for Document with to_js(self : Document) -> JsValue = "%identity"

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
  document_set_body_ffi(self.to_js(), value.to_js())
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
  document_set_onreadystatechange_ffi(self.to_js(), value.to_js())
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
  document_set_onvisibilitychange_ffi(self.to_js(), value.to_js())
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
