// Do not edit. This file is generated.
// MoonBit type: Document
// Specifications: cssom-view.idl, SVG.idl, dom.idl, html.idl

///|
/// [Document](https://developer.mozilla.org/en-US/docs/Web/API/Document)
#external
pub type Document

///|
pub impl TJsValue for Document with to_js(self : Document) -> JsValue = "%identity"

///|
pub fn[T : TDocument] Document::into(self : Document) -> T = "%identity"

///|
pub impl TDocument for Document

///|
pub impl TNode for Document

///|
pub impl TEventTarget for Document

///|
extern "js" fn document_new_ffi() -> Document = "() => new Document()"

///|
pub fn Document::new() -> Document {
  document_new_ffi()
}

///|
pub(open) trait TDocumentCreateElementOptions {
  to_js(self : Self) -> JsValue
}

///|
pub impl TDocumentCreateElementOptions for String with to_js(self : String) -> JsValue = "%identity"

///|
pub impl TDocumentCreateElementOptions for ElementCreationOptions with to_js(
  self : ElementCreationOptions,
) -> JsValue = "%identity"

///|
pub(open) trait TDocumentCreateElementNSOptions {
  to_js(self : Self) -> JsValue
}

///|
pub impl TDocumentCreateElementNSOptions for String with to_js(self : String) -> JsValue = "%identity"

///|
pub impl TDocumentCreateElementNSOptions for ElementCreationOptions with to_js(
  self : ElementCreationOptions,
) -> JsValue = "%identity"

///|
pub(open) trait TDocumentImportNodeOptions {
  to_js(self : Self) -> JsValue
}

///|
pub impl TDocumentImportNodeOptions for Bool with to_js(self : Bool) -> JsValue = "%identity"

///|
pub impl TDocumentImportNodeOptions for ImportNodeOptions with to_js(
  self : ImportNodeOptions,
) -> JsValue = "%identity"

///|
pub(open) trait TDocumentParseHTMLUnsafeHtml {
  to_js(self : Self) -> JsValue
}

///|
pub impl TDocumentParseHTMLUnsafeHtml for TrustedHTML with to_js(
  self : TrustedHTML,
) -> JsValue = "%identity"

///|
pub impl TDocumentParseHTMLUnsafeHtml for String with to_js(self : String) -> JsValue = "%identity"

///|
pub(open) trait TDocumentWriteText {
  to_js(self : Self) -> JsValue
}

///|
pub impl TDocumentWriteText for TrustedHTML with to_js(self : TrustedHTML) -> JsValue = "%identity"

///|
pub impl TDocumentWriteText for String with to_js(self : String) -> JsValue = "%identity"

///|
pub(open) trait TDocumentWritelnText {
  to_js(self : Self) -> JsValue
}

///|
pub impl TDocumentWritelnText for TrustedHTML with to_js(self : TrustedHTML) -> JsValue = "%identity"

///|
pub impl TDocumentWritelnText for String with to_js(self : String) -> JsValue = "%identity"

///|
pub(open) trait TDocumentPrependNodes {
  to_js(self : Self) -> JsValue
}

///|
pub impl TDocumentPrependNodes for Node with to_js(self : Node) -> JsValue = "%identity"

///|
pub impl TDocumentPrependNodes for String with to_js(self : String) -> JsValue = "%identity"

///|
pub(open) trait TDocumentAppendNodes {
  to_js(self : Self) -> JsValue
}

///|
pub impl TDocumentAppendNodes for Node with to_js(self : Node) -> JsValue = "%identity"

///|
pub impl TDocumentAppendNodes for String with to_js(self : String) -> JsValue = "%identity"

///|
pub(open) trait TDocumentReplaceChildrenNodes {
  to_js(self : Self) -> JsValue
}

///|
pub impl TDocumentReplaceChildrenNodes for Node with to_js(self : Node) -> JsValue = "%identity"

///|
pub impl TDocumentReplaceChildrenNodes for String with to_js(self : String) -> JsValue = "%identity"

///|
/// [Document](https://developer.mozilla.org/en-US/docs/Web/API/Document) interface.
pub trait TDocument: TNode {
  root_element(self : Self) -> SVGSVGElement = _
  implementation(self : Self) -> DOMImplementation = _
  url(self : Self) -> String = _
  document_uri(self : Self) -> String = _
  compat_mode(self : Self) -> String = _
  character_set(self : Self) -> String = _
  charset(self : Self) -> String = _
  input_encoding(self : Self) -> String = _
  content_type(self : Self) -> String = _
  doctype(self : Self) -> DocumentType = _
  document_element(self : Self) -> Element = _
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
    options? : &TDocumentCreateElementOptions,
  ) -> Element = _
  create_element_ns(
    self : Self,
    namespace_ : String,
    qualified_name : String,
    options? : &TDocumentCreateElementNSOptions,
  ) -> Element = _
  create_document_fragment(self : Self) -> DocumentFragment = _
  create_text_node(self : Self, data : String) -> Text = _
  create_cdata_section(self : Self, data : String) -> CDATASection = _
  create_comment(self : Self, data : String) -> Comment = _
  create_processing_instruction(self : Self, target : String, data : String) -> ProcessingInstruction = _
  import_node(
    self : Self,
    node : &TNode,
    options? : &TDocumentImportNodeOptions,
  ) -> Node = _
  adopt_node(self : Self, node : &TNode) -> Node = _
  create_attribute(self : Self, local_name : String) -> Attr = _
  create_attribute_ns(self : Self, namespace_ : String, qualified_name : String) -> Attr = _
  create_event(self : Self, interface : String) -> Event = _
  create_range(self : Self) -> Range = _
  create_node_iterator(
    self : Self,
    root : &TNode,
    what_to_show? : UInt,
    filter? : NodeFilter,
  ) -> NodeIterator = _
  create_tree_walker(
    self : Self,
    root : &TNode,
    what_to_show? : UInt,
    filter? : NodeFilter,
  ) -> TreeWalker = _
  location(self : Self) -> Location = _
  domain(self : Self) -> String = _
  set_domain(self : Self, domain : String) -> Unit = _
  referrer(self : Self) -> String = _
  cookie(self : Self) -> String = _
  set_cookie(self : Self, cookie : String) -> Unit = _
  last_modified(self : Self) -> String = _
  ready_state(self : Self) -> DocumentReadyState = _
  title(self : Self) -> String = _
  set_title(self : Self, title : String) -> Unit = _
  dir(self : Self) -> String = _
  set_dir(self : Self, dir : String) -> Unit = _
  body(self : Self) -> HTMLElement = _
  set_body(self : Self, body : &THTMLElement) -> Unit = _
  head(self : Self) -> HTMLHeadElement = _
  images(self : Self) -> HTMLCollection = _
  embeds(self : Self) -> HTMLCollection = _
  plugins(self : Self) -> HTMLCollection = _
  links(self : Self) -> HTMLCollection = _
  forms(self : Self) -> HTMLCollection = _
  scripts(self : Self) -> HTMLCollection = _
  get_elements_by_name(self : Self, element_name : String) -> NodeList = _
  current_script(self : Self) -> HTMLOrSVGScriptElement = _
  open(self : Self, unused1? : String, unused2? : String) -> Document = _
  open_2(self : Self, url : String, name : String, features : String) -> WindowProxy? = _
  close(self : Self) -> Unit = _
  write(self : Self, text : &TDocumentWriteText) -> Unit = _
  writeln(self : Self, text : &TDocumentWritelnText) -> Unit = _
  default_view(self : Self) -> WindowProxy = _
  has_focus(self : Self) -> Bool = _
  design_mode(self : Self) -> String = _
  set_design_mode(self : Self, design_mode : String) -> Unit = _
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
  hidden(self : Self) -> Bool = _
  visibility_state(self : Self) -> DocumentVisibilityState = _
  onreadystatechange(self : Self) -> EventHandler = _
  set_onreadystatechange(self : Self, onreadystatechange : EventHandler) -> Unit = _
  onvisibilitychange(self : Self) -> EventHandler = _
  set_onvisibilitychange(self : Self, onvisibilitychange : EventHandler) -> Unit = _
  fg_color(self : Self) -> String = _
  set_fg_color(self : Self, fg_color : String) -> Unit = _
  link_color(self : Self) -> String = _
  set_link_color(self : Self, link_color : String) -> Unit = _
  vlink_color(self : Self) -> String = _
  set_vlink_color(self : Self, vlink_color : String) -> Unit = _
  alink_color(self : Self) -> String = _
  set_alink_color(self : Self, alink_color : String) -> Unit = _
  bg_color(self : Self) -> String = _
  set_bg_color(self : Self, bg_color : String) -> Unit = _
  anchors(self : Self) -> HTMLCollection = _
  applets(self : Self) -> HTMLCollection = _
  clear(self : Self) -> Unit = _
  capture_events(self : Self) -> Unit = _
  release_events(self : Self) -> Unit = _
  all(self : Self) -> HTMLAllCollection = _
  element_from_point(self : Self, x : Double, y : Double) -> Element? = _
  elements_from_point(self : Self, x : Double, y : Double) -> Array[Element] = _
  caret_position_from_point(
    self : Self,
    x : Double,
    y : Double,
    options? : CaretPositionFromPointOptions,
  ) -> CaretPosition? = _
  scrolling_element(self : Self) -> Element = _
  get_element_by_id(self : Self, element_id : String) -> Element? = _
  custom_element_registry(self : Self) -> CustomElementRegistry = _
  active_element(self : Self) -> Element = _
  style_sheets(self : Self) -> StyleSheetList = _
  adopted_style_sheets(self : Self) -> JsValue = _
  set_adopted_style_sheets(self : Self, adopted_style_sheets : JsValue) -> Unit = _
  children(self : Self) -> HTMLCollection = _
  first_element_child(self : Self) -> Element = _
  last_element_child(self : Self) -> Element = _
  child_element_count(self : Self) -> UInt = _
  prepend(self : Self, nodes : &TDocumentPrependNodes) -> Unit = _
  append(self : Self, nodes : &TDocumentAppendNodes) -> Unit = _
  replace_children(self : Self, nodes : &TDocumentReplaceChildrenNodes) -> Unit = _
  move_before(self : Self, node : &TNode, child : &TNode) -> Unit = _
  query_selector(self : Self, selectors : String) -> Element? = _
  query_selector_all(self : Self, selectors : String) -> NodeList = _
  create_expression(
    self : Self,
    expression : String,
    resolver? : XPathNSResolver,
  ) -> XPathExpression = _
  create_ns_resolver(self : Self, node_resolver : &TNode) -> Node = _
  evaluate(
    self : Self,
    expression : String,
    context_node : &TNode,
    resolver? : XPathNSResolver,
    type_? : UInt,
    result? : &TXPathResult,
  ) -> XPathResult = _
  onabort(self : Self) -> EventHandler = _
  set_onabort(self : Self, onabort : EventHandler) -> Unit = _
  onauxclick(self : Self) -> EventHandler = _
  set_onauxclick(self : Self, onauxclick : EventHandler) -> Unit = _
  onbeforeinput(self : Self) -> EventHandler = _
  set_onbeforeinput(self : Self, onbeforeinput : EventHandler) -> Unit = _
  onbeforematch(self : Self) -> EventHandler = _
  set_onbeforematch(self : Self, onbeforematch : EventHandler) -> Unit = _
  onbeforetoggle(self : Self) -> EventHandler = _
  set_onbeforetoggle(self : Self, onbeforetoggle : EventHandler) -> Unit = _
  onblur(self : Self) -> EventHandler = _
  set_onblur(self : Self, onblur : EventHandler) -> Unit = _
  oncancel(self : Self) -> EventHandler = _
  set_oncancel(self : Self, oncancel : EventHandler) -> Unit = _
  oncanplay(self : Self) -> EventHandler = _
  set_oncanplay(self : Self, oncanplay : EventHandler) -> Unit = _
  oncanplaythrough(self : Self) -> EventHandler = _
  set_oncanplaythrough(self : Self, oncanplaythrough : EventHandler) -> Unit = _
  onchange(self : Self) -> EventHandler = _
  set_onchange(self : Self, onchange : EventHandler) -> Unit = _
  onclick(self : Self) -> EventHandler = _
  set_onclick(self : Self, onclick : EventHandler) -> Unit = _
  onclose(self : Self) -> EventHandler = _
  set_onclose(self : Self, onclose : EventHandler) -> Unit = _
  oncommand(self : Self) -> EventHandler = _
  set_oncommand(self : Self, oncommand : EventHandler) -> Unit = _
  oncontextlost(self : Self) -> EventHandler = _
  set_oncontextlost(self : Self, oncontextlost : EventHandler) -> Unit = _
  oncontextmenu(self : Self) -> EventHandler = _
  set_oncontextmenu(self : Self, oncontextmenu : EventHandler) -> Unit = _
  oncontextrestored(self : Self) -> EventHandler = _
  set_oncontextrestored(self : Self, oncontextrestored : EventHandler) -> Unit = _
  oncopy(self : Self) -> EventHandler = _
  set_oncopy(self : Self, oncopy : EventHandler) -> Unit = _
  oncuechange(self : Self) -> EventHandler = _
  set_oncuechange(self : Self, oncuechange : EventHandler) -> Unit = _
  oncut(self : Self) -> EventHandler = _
  set_oncut(self : Self, oncut : EventHandler) -> Unit = _
  ondblclick(self : Self) -> EventHandler = _
  set_ondblclick(self : Self, ondblclick : EventHandler) -> Unit = _
  ondrag(self : Self) -> EventHandler = _
  set_ondrag(self : Self, ondrag : EventHandler) -> Unit = _
  ondragend(self : Self) -> EventHandler = _
  set_ondragend(self : Self, ondragend : EventHandler) -> Unit = _
  ondragenter(self : Self) -> EventHandler = _
  set_ondragenter(self : Self, ondragenter : EventHandler) -> Unit = _
  ondragleave(self : Self) -> EventHandler = _
  set_ondragleave(self : Self, ondragleave : EventHandler) -> Unit = _
  ondragover(self : Self) -> EventHandler = _
  set_ondragover(self : Self, ondragover : EventHandler) -> Unit = _
  ondragstart(self : Self) -> EventHandler = _
  set_ondragstart(self : Self, ondragstart : EventHandler) -> Unit = _
  ondrop(self : Self) -> EventHandler = _
  set_ondrop(self : Self, ondrop : EventHandler) -> Unit = _
  ondurationchange(self : Self) -> EventHandler = _
  set_ondurationchange(self : Self, ondurationchange : EventHandler) -> Unit = _
  onemptied(self : Self) -> EventHandler = _
  set_onemptied(self : Self, onemptied : EventHandler) -> Unit = _
  onended(self : Self) -> EventHandler = _
  set_onended(self : Self, onended : EventHandler) -> Unit = _
  onerror(self : Self) -> OnErrorEventHandler = _
  set_onerror(self : Self, onerror : OnErrorEventHandler) -> Unit = _
  onfocus(self : Self) -> EventHandler = _
  set_onfocus(self : Self, onfocus : EventHandler) -> Unit = _
  onformdata(self : Self) -> EventHandler = _
  set_onformdata(self : Self, onformdata : EventHandler) -> Unit = _
  oninput(self : Self) -> EventHandler = _
  set_oninput(self : Self, oninput : EventHandler) -> Unit = _
  oninvalid(self : Self) -> EventHandler = _
  set_oninvalid(self : Self, oninvalid : EventHandler) -> Unit = _
  onkeydown(self : Self) -> EventHandler = _
  set_onkeydown(self : Self, onkeydown : EventHandler) -> Unit = _
  onkeypress(self : Self) -> EventHandler = _
  set_onkeypress(self : Self, onkeypress : EventHandler) -> Unit = _
  onkeyup(self : Self) -> EventHandler = _
  set_onkeyup(self : Self, onkeyup : EventHandler) -> Unit = _
  onload(self : Self) -> EventHandler = _
  set_onload(self : Self, onload : EventHandler) -> Unit = _
  onloadeddata(self : Self) -> EventHandler = _
  set_onloadeddata(self : Self, onloadeddata : EventHandler) -> Unit = _
  onloadedmetadata(self : Self) -> EventHandler = _
  set_onloadedmetadata(self : Self, onloadedmetadata : EventHandler) -> Unit = _
  onloadstart(self : Self) -> EventHandler = _
  set_onloadstart(self : Self, onloadstart : EventHandler) -> Unit = _
  onmousedown(self : Self) -> EventHandler = _
  set_onmousedown(self : Self, onmousedown : EventHandler) -> Unit = _
  onmouseenter(self : Self) -> EventHandler = _
  set_onmouseenter(self : Self, onmouseenter : EventHandler) -> Unit = _
  onmouseleave(self : Self) -> EventHandler = _
  set_onmouseleave(self : Self, onmouseleave : EventHandler) -> Unit = _
  onmousemove(self : Self) -> EventHandler = _
  set_onmousemove(self : Self, onmousemove : EventHandler) -> Unit = _
  onmouseout(self : Self) -> EventHandler = _
  set_onmouseout(self : Self, onmouseout : EventHandler) -> Unit = _
  onmouseover(self : Self) -> EventHandler = _
  set_onmouseover(self : Self, onmouseover : EventHandler) -> Unit = _
  onmouseup(self : Self) -> EventHandler = _
  set_onmouseup(self : Self, onmouseup : EventHandler) -> Unit = _
  onpaste(self : Self) -> EventHandler = _
  set_onpaste(self : Self, onpaste : EventHandler) -> Unit = _
  onpause(self : Self) -> EventHandler = _
  set_onpause(self : Self, onpause : EventHandler) -> Unit = _
  onplay(self : Self) -> EventHandler = _
  set_onplay(self : Self, onplay : EventHandler) -> Unit = _
  onplaying(self : Self) -> EventHandler = _
  set_onplaying(self : Self, onplaying : EventHandler) -> Unit = _
  onprogress(self : Self) -> EventHandler = _
  set_onprogress(self : Self, onprogress : EventHandler) -> Unit = _
  onratechange(self : Self) -> EventHandler = _
  set_onratechange(self : Self, onratechange : EventHandler) -> Unit = _
  onreset(self : Self) -> EventHandler = _
  set_onreset(self : Self, onreset : EventHandler) -> Unit = _
  onresize(self : Self) -> EventHandler = _
  set_onresize(self : Self, onresize : EventHandler) -> Unit = _
  onscroll(self : Self) -> EventHandler = _
  set_onscroll(self : Self, onscroll : EventHandler) -> Unit = _
  onscrollend(self : Self) -> EventHandler = _
  set_onscrollend(self : Self, onscrollend : EventHandler) -> Unit = _
  onsecuritypolicyviolation(self : Self) -> EventHandler = _
  set_onsecuritypolicyviolation(
    self : Self,
    onsecuritypolicyviolation : EventHandler,
  ) -> Unit = _
  onseeked(self : Self) -> EventHandler = _
  set_onseeked(self : Self, onseeked : EventHandler) -> Unit = _
  onseeking(self : Self) -> EventHandler = _
  set_onseeking(self : Self, onseeking : EventHandler) -> Unit = _
  onselect(self : Self) -> EventHandler = _
  set_onselect(self : Self, onselect : EventHandler) -> Unit = _
  onslotchange(self : Self) -> EventHandler = _
  set_onslotchange(self : Self, onslotchange : EventHandler) -> Unit = _
  onstalled(self : Self) -> EventHandler = _
  set_onstalled(self : Self, onstalled : EventHandler) -> Unit = _
  onsubmit(self : Self) -> EventHandler = _
  set_onsubmit(self : Self, onsubmit : EventHandler) -> Unit = _
  onsuspend(self : Self) -> EventHandler = _
  set_onsuspend(self : Self, onsuspend : EventHandler) -> Unit = _
  ontimeupdate(self : Self) -> EventHandler = _
  set_ontimeupdate(self : Self, ontimeupdate : EventHandler) -> Unit = _
  ontoggle(self : Self) -> EventHandler = _
  set_ontoggle(self : Self, ontoggle : EventHandler) -> Unit = _
  onvolumechange(self : Self) -> EventHandler = _
  set_onvolumechange(self : Self, onvolumechange : EventHandler) -> Unit = _
  onwaiting(self : Self) -> EventHandler = _
  set_onwaiting(self : Self, onwaiting : EventHandler) -> Unit = _
  onwebkitanimationend(self : Self) -> EventHandler = _
  set_onwebkitanimationend(self : Self, onwebkitanimationend : EventHandler) -> Unit = _
  onwebkitanimationiteration(self : Self) -> EventHandler = _
  set_onwebkitanimationiteration(
    self : Self,
    onwebkitanimationiteration : EventHandler,
  ) -> Unit = _
  onwebkitanimationstart(self : Self) -> EventHandler = _
  set_onwebkitanimationstart(self : Self, onwebkitanimationstart : EventHandler) -> Unit = _
  onwebkittransitionend(self : Self) -> EventHandler = _
  set_onwebkittransitionend(self : Self, onwebkittransitionend : EventHandler) -> Unit = _
  onwheel(self : Self) -> EventHandler = _
  set_onwheel(self : Self, onwheel : EventHandler) -> Unit = _
  get_box_quads(self : Self, options? : BoxQuadOptions) -> Array[DOMQuad] = _
  convert_quad_from_node(
    self : Self,
    quad : DOMQuadInit,
    from : GeometryNode,
    options? : ConvertCoordinateOptions,
  ) -> DOMQuad = _
  convert_rect_from_node(
    self : Self,
    rect : &TDOMRectReadOnly,
    from : GeometryNode,
    options? : ConvertCoordinateOptions,
  ) -> DOMQuad = _
  convert_point_from_node(
    self : Self,
    point : DOMPointInit,
    from : GeometryNode,
    options? : ConvertCoordinateOptions,
  ) -> DOMPoint = _
}

///|
extern "js" fn document_root_element_ffi(obj : JsValue) -> SVGSVGElement = "(obj) => obj.rootElement"

///|
/// [Document.rootElement](https://developer.mozilla.org/en-US/docs/Web/API/Document/rootElement)
impl TDocument with root_element(self : Self) -> SVGSVGElement {
  document_root_element_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_implementation_ffi(obj : JsValue) -> DOMImplementation = "(obj) => obj.implementation"

///|
/// [Document.implementation](https://developer.mozilla.org/en-US/docs/Web/API/Document/implementation)
impl TDocument with implementation(self : Self) -> DOMImplementation {
  document_implementation_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_url_ffi(obj : JsValue) -> String = "(obj) => obj.URL"

///|
/// [Document.URL](https://developer.mozilla.org/en-US/docs/Web/API/Document/URL)
impl TDocument with url(self : Self) -> String {
  document_url_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_document_uri_ffi(obj : JsValue) -> String = "(obj) => obj.documentURI"

///|
/// [Document.documentURI](https://developer.mozilla.org/en-US/docs/Web/API/Document/documentURI)
impl TDocument with document_uri(self : Self) -> String {
  document_document_uri_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_compat_mode_ffi(obj : JsValue) -> String = "(obj) => obj.compatMode"

///|
/// [Document.compatMode](https://developer.mozilla.org/en-US/docs/Web/API/Document/compatMode)
impl TDocument with compat_mode(self : Self) -> String {
  document_compat_mode_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_character_set_ffi(obj : JsValue) -> String = "(obj) => obj.characterSet"

///|
/// [Document.characterSet](https://developer.mozilla.org/en-US/docs/Web/API/Document/characterSet)
impl TDocument with character_set(self : Self) -> String {
  document_character_set_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_charset_ffi(obj : JsValue) -> String = "(obj) => obj.charset"

///|
/// [Document.charset](https://developer.mozilla.org/en-US/docs/Web/API/Document/charset)
impl TDocument with charset(self : Self) -> String {
  document_charset_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_input_encoding_ffi(obj : JsValue) -> String = "(obj) => obj.inputEncoding"

///|
/// [Document.inputEncoding](https://developer.mozilla.org/en-US/docs/Web/API/Document/inputEncoding)
impl TDocument with input_encoding(self : Self) -> String {
  document_input_encoding_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_content_type_ffi(obj : JsValue) -> String = "(obj) => obj.contentType"

///|
/// [Document.contentType](https://developer.mozilla.org/en-US/docs/Web/API/Document/contentType)
impl TDocument with content_type(self : Self) -> String {
  document_content_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_doctype_ffi(obj : JsValue) -> DocumentType = "(obj) => obj.doctype"

///|
/// [Document.doctype](https://developer.mozilla.org/en-US/docs/Web/API/Document/doctype)
impl TDocument with doctype(self : Self) -> DocumentType {
  document_doctype_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_document_element_ffi(obj : JsValue) -> Element = "(obj) => obj.documentElement"

///|
/// [Document.documentElement](https://developer.mozilla.org/en-US/docs/Web/API/Document/documentElement)
impl TDocument with document_element(self : Self) -> Element {
  document_document_element_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_get_elements_by_tag_name_ffi(
  obj : JsValue,
  qualified_name : JsValue,
) -> HTMLCollection = "(obj, qualified_name) => obj.getElementsByTagName(qualified_name)"

///|
/// [Document.getElementsByTagName](https://developer.mozilla.org/en-US/docs/Web/API/Document/getElementsByTagName)
impl TDocument with get_elements_by_tag_name(
  self : Self,
  qualified_name : String,
) -> HTMLCollection {
  document_get_elements_by_tag_name_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(qualified_name),
  )
}

///|
extern "js" fn document_get_elements_by_tag_name_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> HTMLCollection = "(obj, namespace_, local_name) => obj.getElementsByTagNameNS(namespace_, local_name)"

///|
/// [Document.getElementsByTagNameNS](https://developer.mozilla.org/en-US/docs/Web/API/Document/getElementsByTagNameNS)
impl TDocument with get_elements_by_tag_name_ns(
  self : Self,
  namespace_ : String,
  local_name : String,
) -> HTMLCollection {
  document_get_elements_by_tag_name_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
    TJsValue::to_js(local_name),
  )
}

///|
extern "js" fn document_get_elements_by_class_name_ffi(
  obj : JsValue,
  class_names : JsValue,
) -> HTMLCollection = "(obj, class_names) => obj.getElementsByClassName(class_names)"

///|
/// [Document.getElementsByClassName](https://developer.mozilla.org/en-US/docs/Web/API/Document/getElementsByClassName)
impl TDocument with get_elements_by_class_name(
  self : Self,
  class_names : String,
) -> HTMLCollection {
  document_get_elements_by_class_name_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(class_names),
  )
}

///|
extern "js" fn document_create_element_ffi(
  obj : JsValue,
  local_name : JsValue,
  options : JsValue,
) -> Element = "(obj, local_name, options) => obj.createElement(local_name, options)"

///|
/// [Document.createElement](https://developer.mozilla.org/en-US/docs/Web/API/Document/createElement)
impl TDocument with create_element(
  self : Self,
  local_name : String,
  options? : &TDocumentCreateElementOptions = ElementCreationOptions::empty(),
) -> Element {
  document_create_element_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(local_name),
    options.to_js(),
  )
}

///|
extern "js" fn document_create_element_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  qualified_name : JsValue,
  options : JsValue,
) -> Element = "(obj, namespace_, qualified_name, options) => obj.createElementNS(namespace_, qualified_name, options)"

///|
/// [Document.createElementNS](https://developer.mozilla.org/en-US/docs/Web/API/Document/createElementNS)
impl TDocument with create_element_ns(
  self : Self,
  namespace_ : String,
  qualified_name : String,
  options? : &TDocumentCreateElementNSOptions = ElementCreationOptions::empty(),
) -> Element {
  document_create_element_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
    TJsValue::to_js(qualified_name),
    options.to_js(),
  )
}

///|
extern "js" fn document_create_document_fragment_ffi(
  obj : JsValue,
) -> DocumentFragment = "(obj) => obj.createDocumentFragment()"

///|
/// [Document.createDocumentFragment](https://developer.mozilla.org/en-US/docs/Web/API/Document/createDocumentFragment)
impl TDocument with create_document_fragment(self : Self) -> DocumentFragment {
  document_create_document_fragment_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_create_text_node_ffi(
  obj : JsValue,
  data : JsValue,
) -> Text = "(obj, data) => obj.createTextNode(data)"

///|
/// [Document.createTextNode](https://developer.mozilla.org/en-US/docs/Web/API/Document/createTextNode)
impl TDocument with create_text_node(self : Self, data : String) -> Text {
  document_create_text_node_ffi(TJsValue::to_js(self), TJsValue::to_js(data))
}

///|
extern "js" fn document_create_cdata_section_ffi(
  obj : JsValue,
  data : JsValue,
) -> CDATASection = "(obj, data) => obj.createCDATASection(data)"

///|
/// [Document.createCDATASection](https://developer.mozilla.org/en-US/docs/Web/API/Document/createCDATASection)
impl TDocument with create_cdata_section(self : Self, data : String) -> CDATASection {
  document_create_cdata_section_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(data),
  )
}

///|
extern "js" fn document_create_comment_ffi(
  obj : JsValue,
  data : JsValue,
) -> Comment = "(obj, data) => obj.createComment(data)"

///|
/// [Document.createComment](https://developer.mozilla.org/en-US/docs/Web/API/Document/createComment)
impl TDocument with create_comment(self : Self, data : String) -> Comment {
  document_create_comment_ffi(TJsValue::to_js(self), TJsValue::to_js(data))
}

///|
extern "js" fn document_create_processing_instruction_ffi(
  obj : JsValue,
  target : JsValue,
  data : JsValue,
) -> ProcessingInstruction = "(obj, target, data) => obj.createProcessingInstruction(target, data)"

///|
/// [Document.createProcessingInstruction](https://developer.mozilla.org/en-US/docs/Web/API/Document/createProcessingInstruction)
impl TDocument with create_processing_instruction(
  self : Self,
  target : String,
  data : String,
) -> ProcessingInstruction {
  document_create_processing_instruction_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(target),
    TJsValue::to_js(data),
  )
}

///|
extern "js" fn document_import_node_ffi(
  obj : JsValue,
  node : JsValue,
  options : JsValue,
) -> Node = "(obj, node, options) => obj.importNode(node, options)"

///|
/// [Document.importNode](https://developer.mozilla.org/en-US/docs/Web/API/Document/importNode)
impl TDocument with import_node(
  self : Self,
  node : &TNode,
  options? : &TDocumentImportNodeOptions = false,
) -> Node {
  document_import_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    options.to_js(),
  )
}

///|
extern "js" fn document_adopt_node_ffi(obj : JsValue, node : JsValue) -> Node = "(obj, node) => obj.adoptNode(node)"

///|
/// [Document.adoptNode](https://developer.mozilla.org/en-US/docs/Web/API/Document/adoptNode)
impl TDocument with adopt_node(self : Self, node : &TNode) -> Node {
  document_adopt_node_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

///|
extern "js" fn document_create_attribute_ffi(
  obj : JsValue,
  local_name : JsValue,
) -> Attr = "(obj, local_name) => obj.createAttribute(local_name)"

///|
/// [Document.createAttribute](https://developer.mozilla.org/en-US/docs/Web/API/Document/createAttribute)
impl TDocument with create_attribute(self : Self, local_name : String) -> Attr {
  document_create_attribute_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(local_name),
  )
}

///|
extern "js" fn document_create_attribute_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  qualified_name : JsValue,
) -> Attr = "(obj, namespace_, qualified_name) => obj.createAttributeNS(namespace_, qualified_name)"

///|
/// [Document.createAttributeNS](https://developer.mozilla.org/en-US/docs/Web/API/Document/createAttributeNS)
impl TDocument with create_attribute_ns(
  self : Self,
  namespace_ : String,
  qualified_name : String,
) -> Attr {
  document_create_attribute_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
    TJsValue::to_js(qualified_name),
  )
}

///|
extern "js" fn document_create_event_ffi(
  obj : JsValue,
  interface : JsValue,
) -> Event = "(obj, interface) => obj.createEvent(interface)"

///|
/// [Document.createEvent](https://developer.mozilla.org/en-US/docs/Web/API/Document/createEvent)
impl TDocument with create_event(self : Self, interface : String) -> Event {
  document_create_event_ffi(TJsValue::to_js(self), TJsValue::to_js(interface))
}

///|
extern "js" fn document_create_range_ffi(obj : JsValue) -> Range = "(obj) => obj.createRange()"

///|
/// [Document.createRange](https://developer.mozilla.org/en-US/docs/Web/API/Document/createRange)
impl TDocument with create_range(self : Self) -> Range {
  document_create_range_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_create_node_iterator_ffi(
  obj : JsValue,
  root : JsValue,
  what_to_show : JsValue,
  filter : JsValue,
) -> NodeIterator = "(obj, root, what_to_show, filter) => obj.createNodeIterator(root, what_to_show, filter)"

///|
/// [Document.createNodeIterator](https://developer.mozilla.org/en-US/docs/Web/API/Document/createNodeIterator)
impl TDocument with create_node_iterator(
  self : Self,
  root : &TNode,
  what_to_show? : UInt = (0xFFFFFFFF : UInt),
  filter? : NodeFilter = JsValue::null(),
) -> NodeIterator {
  document_create_node_iterator_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(root),
    TJsValue::to_js(what_to_show),
    TJsValue::to_js(filter),
  )
}

///|
extern "js" fn document_create_tree_walker_ffi(
  obj : JsValue,
  root : JsValue,
  what_to_show : JsValue,
  filter : JsValue,
) -> TreeWalker = "(obj, root, what_to_show, filter) => obj.createTreeWalker(root, what_to_show, filter)"

///|
/// [Document.createTreeWalker](https://developer.mozilla.org/en-US/docs/Web/API/Document/createTreeWalker)
impl TDocument with create_tree_walker(
  self : Self,
  root : &TNode,
  what_to_show? : UInt = (0xFFFFFFFF : UInt),
  filter? : NodeFilter = JsValue::null(),
) -> TreeWalker {
  document_create_tree_walker_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(root),
    TJsValue::to_js(what_to_show),
    TJsValue::to_js(filter),
  )
}

///|
extern "js" fn document_parse_html_unsafe_ffi(html : JsValue) -> Document = "(html) => Document.parseHTMLUnsafe(html)"

///|
/// [Document.parseHTMLUnsafe](https://developer.mozilla.org/en-US/docs/Web/API/Document/parseHTMLUnsafe)
pub fn Document::parse_html_unsafe(
  html : &TDocumentParseHTMLUnsafeHtml,
) -> Document {
  document_parse_html_unsafe_ffi(html.to_js())
}

///|
extern "js" fn document_location_ffi(obj : JsValue) -> Location = "(obj) => obj.location"

///|
/// [Document.location](https://developer.mozilla.org/en-US/docs/Web/API/Document/location)
impl TDocument with location(self : Self) -> Location {
  document_location_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_domain_ffi(obj : JsValue) -> String = "(obj) => obj.domain"

///|
/// [Document.domain](https://developer.mozilla.org/en-US/docs/Web/API/Document/domain)
impl TDocument with domain(self : Self) -> String {
  document_domain_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_domain_ffi(obj : JsValue, domain : JsValue) -> Unit = "(obj, domain) => { obj.domain = domain; }"

///|
/// [Document.domain](https://developer.mozilla.org/en-US/docs/Web/API/Document/domain)
impl TDocument with set_domain(self : Self, domain : String) -> Unit {
  document_set_domain_ffi(TJsValue::to_js(self), TJsValue::to_js(domain))
}

///|
extern "js" fn document_referrer_ffi(obj : JsValue) -> String = "(obj) => obj.referrer"

///|
/// [Document.referrer](https://developer.mozilla.org/en-US/docs/Web/API/Document/referrer)
impl TDocument with referrer(self : Self) -> String {
  document_referrer_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_cookie_ffi(obj : JsValue) -> String = "(obj) => obj.cookie"

///|
/// [Document.cookie](https://developer.mozilla.org/en-US/docs/Web/API/Document/cookie)
impl TDocument with cookie(self : Self) -> String {
  document_cookie_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_cookie_ffi(obj : JsValue, cookie : JsValue) -> Unit = "(obj, cookie) => { obj.cookie = cookie; }"

///|
/// [Document.cookie](https://developer.mozilla.org/en-US/docs/Web/API/Document/cookie)
impl TDocument with set_cookie(self : Self, cookie : String) -> Unit {
  document_set_cookie_ffi(TJsValue::to_js(self), TJsValue::to_js(cookie))
}

///|
extern "js" fn document_last_modified_ffi(obj : JsValue) -> String = "(obj) => obj.lastModified"

///|
/// [Document.lastModified](https://developer.mozilla.org/en-US/docs/Web/API/Document/lastModified)
impl TDocument with last_modified(self : Self) -> String {
  document_last_modified_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_ready_state_ffi(obj : JsValue) -> DocumentReadyState = "(obj) => obj.readyState"

///|
/// [Document.readyState](https://developer.mozilla.org/en-US/docs/Web/API/Document/readyState)
impl TDocument with ready_state(self : Self) -> DocumentReadyState {
  document_ready_state_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_title_ffi(obj : JsValue) -> String = "(obj) => obj.title"

///|
/// [Document.title](https://developer.mozilla.org/en-US/docs/Web/API/Document/title)
impl TDocument with title(self : Self) -> String {
  document_title_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_title_ffi(obj : JsValue, title : JsValue) -> Unit = "(obj, title) => { obj.title = title; }"

///|
/// [Document.title](https://developer.mozilla.org/en-US/docs/Web/API/Document/title)
impl TDocument with set_title(self : Self, title : String) -> Unit {
  document_set_title_ffi(TJsValue::to_js(self), TJsValue::to_js(title))
}

///|
extern "js" fn document_dir_ffi(obj : JsValue) -> String = "(obj) => obj.dir"

///|
/// [Document.dir](https://developer.mozilla.org/en-US/docs/Web/API/Document/dir)
impl TDocument with dir(self : Self) -> String {
  document_dir_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_dir_ffi(obj : JsValue, dir : JsValue) -> Unit = "(obj, dir) => { obj.dir = dir; }"

///|
/// [Document.dir](https://developer.mozilla.org/en-US/docs/Web/API/Document/dir)
impl TDocument with set_dir(self : Self, dir : String) -> Unit {
  document_set_dir_ffi(TJsValue::to_js(self), TJsValue::to_js(dir))
}

///|
extern "js" fn document_body_ffi(obj : JsValue) -> HTMLElement = "(obj) => obj.body"

///|
/// [Document.body](https://developer.mozilla.org/en-US/docs/Web/API/Document/body)
impl TDocument with body(self : Self) -> HTMLElement {
  document_body_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_body_ffi(obj : JsValue, body : JsValue) -> Unit = "(obj, body) => { obj.body = body; }"

///|
/// [Document.body](https://developer.mozilla.org/en-US/docs/Web/API/Document/body)
impl TDocument with set_body(self : Self, body : &THTMLElement) -> Unit {
  document_set_body_ffi(TJsValue::to_js(self), TJsValue::to_js(body))
}

///|
extern "js" fn document_head_ffi(obj : JsValue) -> HTMLHeadElement = "(obj) => obj.head"

///|
/// [Document.head](https://developer.mozilla.org/en-US/docs/Web/API/Document/head)
impl TDocument with head(self : Self) -> HTMLHeadElement {
  document_head_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_images_ffi(obj : JsValue) -> HTMLCollection = "(obj) => obj.images"

///|
/// [Document.images](https://developer.mozilla.org/en-US/docs/Web/API/Document/images)
impl TDocument with images(self : Self) -> HTMLCollection {
  document_images_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_embeds_ffi(obj : JsValue) -> HTMLCollection = "(obj) => obj.embeds"

///|
/// [Document.embeds](https://developer.mozilla.org/en-US/docs/Web/API/Document/embeds)
impl TDocument with embeds(self : Self) -> HTMLCollection {
  document_embeds_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_plugins_ffi(obj : JsValue) -> HTMLCollection = "(obj) => obj.plugins"

///|
/// [Document.plugins](https://developer.mozilla.org/en-US/docs/Web/API/Document/plugins)
impl TDocument with plugins(self : Self) -> HTMLCollection {
  document_plugins_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_links_ffi(obj : JsValue) -> HTMLCollection = "(obj) => obj.links"

///|
/// [Document.links](https://developer.mozilla.org/en-US/docs/Web/API/Document/links)
impl TDocument with links(self : Self) -> HTMLCollection {
  document_links_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_forms_ffi(obj : JsValue) -> HTMLCollection = "(obj) => obj.forms"

///|
/// [Document.forms](https://developer.mozilla.org/en-US/docs/Web/API/Document/forms)
impl TDocument with forms(self : Self) -> HTMLCollection {
  document_forms_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_scripts_ffi(obj : JsValue) -> HTMLCollection = "(obj) => obj.scripts"

///|
/// [Document.scripts](https://developer.mozilla.org/en-US/docs/Web/API/Document/scripts)
impl TDocument with scripts(self : Self) -> HTMLCollection {
  document_scripts_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_get_elements_by_name_ffi(
  obj : JsValue,
  element_name : JsValue,
) -> NodeList = "(obj, element_name) => obj.getElementsByName(element_name)"

///|
/// [Document.getElementsByName](https://developer.mozilla.org/en-US/docs/Web/API/Document/getElementsByName)
impl TDocument with get_elements_by_name(self : Self, element_name : String) -> NodeList {
  document_get_elements_by_name_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(element_name),
  )
}

///|
extern "js" fn document_current_script_ffi(
  obj : JsValue,
) -> HTMLOrSVGScriptElement = "(obj) => obj.currentScript"

///|
/// [Document.currentScript](https://developer.mozilla.org/en-US/docs/Web/API/Document/currentScript)
impl TDocument with current_script(self : Self) -> HTMLOrSVGScriptElement {
  document_current_script_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_open_ffi(
  obj : JsValue,
  unused1 : JsValue,
  unused2 : JsValue,
) -> Document = "(obj, unused1, unused2) => obj.open(unused1, unused2)"

///|
/// [Document.open](https://developer.mozilla.org/en-US/docs/Web/API/Document/open)
impl TDocument with open(self : Self, unused1? : String, unused2? : String) -> Document {
  document_open_ffi(
    TJsValue::to_js(self),
    opt_to_js(unused1),
    opt_to_js(unused2),
  )
}

///|
extern "js" fn document_open_2_ffi(
  obj : JsValue,
  url : JsValue,
  name : JsValue,
  features : JsValue,
) -> JsValue = "(obj, url, name, features) => obj.open_2(url, name, features)"

///|
/// [Document.open_2](https://developer.mozilla.org/en-US/docs/Web/API/Document/open_2)
impl TDocument with open_2(
  self : Self,
  url : String,
  name : String,
  features : String,
) -> WindowProxy? {
  let result = document_open_2_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(url),
    TJsValue::to_js(name),
    TJsValue::to_js(features),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn document_close_ffi(obj : JsValue) -> Unit = "(obj) => obj.close()"

///|
/// [Document.close](https://developer.mozilla.org/en-US/docs/Web/API/Document/close)
impl TDocument with close(self : Self) -> Unit {
  document_close_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_write_ffi(obj : JsValue, text : JsValue) -> Unit = "(obj, text) => obj.write(text)"

///|
/// [Document.write](https://developer.mozilla.org/en-US/docs/Web/API/Document/write)
impl TDocument with write(self : Self, text : &TDocumentWriteText) -> Unit {
  document_write_ffi(TJsValue::to_js(self), text.to_js())
}

///|
extern "js" fn document_writeln_ffi(obj : JsValue, text : JsValue) -> Unit = "(obj, text) => obj.writeln(text)"

///|
/// [Document.writeln](https://developer.mozilla.org/en-US/docs/Web/API/Document/writeln)
impl TDocument with writeln(self : Self, text : &TDocumentWritelnText) -> Unit {
  document_writeln_ffi(TJsValue::to_js(self), text.to_js())
}

///|
extern "js" fn document_default_view_ffi(obj : JsValue) -> WindowProxy = "(obj) => obj.defaultView"

///|
/// [Document.defaultView](https://developer.mozilla.org/en-US/docs/Web/API/Document/defaultView)
impl TDocument with default_view(self : Self) -> WindowProxy {
  document_default_view_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_has_focus_ffi(obj : JsValue) -> Bool = "(obj) => obj.hasFocus()"

///|
/// [Document.hasFocus](https://developer.mozilla.org/en-US/docs/Web/API/Document/hasFocus)
impl TDocument with has_focus(self : Self) -> Bool {
  document_has_focus_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_design_mode_ffi(obj : JsValue) -> String = "(obj) => obj.designMode"

///|
/// [Document.designMode](https://developer.mozilla.org/en-US/docs/Web/API/Document/designMode)
impl TDocument with design_mode(self : Self) -> String {
  document_design_mode_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_design_mode_ffi(
  obj : JsValue,
  design_mode : JsValue,
) -> Unit = "(obj, designMode) => { obj.designMode = designMode; }"

///|
/// [Document.designMode](https://developer.mozilla.org/en-US/docs/Web/API/Document/designMode)
impl TDocument with set_design_mode(self : Self, design_mode : String) -> Unit {
  document_set_design_mode_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(design_mode),
  )
}

///|
extern "js" fn document_exec_command_ffi(
  obj : JsValue,
  command_id : JsValue,
  show_ui : JsValue,
  value : JsValue,
) -> Bool = "(obj, command_id, show_ui, value) => obj.execCommand(command_id, show_ui, value)"

///|
/// [Document.execCommand](https://developer.mozilla.org/en-US/docs/Web/API/Document/execCommand)
impl TDocument with exec_command(
  self : Self,
  command_id : String,
  show_ui? : Bool = false,
  value? : String = "",
) -> Bool {
  document_exec_command_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(command_id),
    TJsValue::to_js(show_ui),
    TJsValue::to_js(value),
  )
}

///|
extern "js" fn document_query_command_enabled_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> Bool = "(obj, command_id) => obj.queryCommandEnabled(command_id)"

///|
/// [Document.queryCommandEnabled](https://developer.mozilla.org/en-US/docs/Web/API/Document/queryCommandEnabled)
impl TDocument with query_command_enabled(self : Self, command_id : String) -> Bool {
  document_query_command_enabled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(command_id),
  )
}

///|
extern "js" fn document_query_command_indeterm_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> Bool = "(obj, command_id) => obj.queryCommandIndeterm(command_id)"

///|
/// [Document.queryCommandIndeterm](https://developer.mozilla.org/en-US/docs/Web/API/Document/queryCommandIndeterm)
impl TDocument with query_command_indeterm(self : Self, command_id : String) -> Bool {
  document_query_command_indeterm_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(command_id),
  )
}

///|
extern "js" fn document_query_command_state_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> Bool = "(obj, command_id) => obj.queryCommandState(command_id)"

///|
/// [Document.queryCommandState](https://developer.mozilla.org/en-US/docs/Web/API/Document/queryCommandState)
impl TDocument with query_command_state(self : Self, command_id : String) -> Bool {
  document_query_command_state_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(command_id),
  )
}

///|
extern "js" fn document_query_command_supported_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> Bool = "(obj, command_id) => obj.queryCommandSupported(command_id)"

///|
/// [Document.queryCommandSupported](https://developer.mozilla.org/en-US/docs/Web/API/Document/queryCommandSupported)
impl TDocument with query_command_supported(self : Self, command_id : String) -> Bool {
  document_query_command_supported_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(command_id),
  )
}

///|
extern "js" fn document_query_command_value_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> String = "(obj, command_id) => obj.queryCommandValue(command_id)"

///|
/// [Document.queryCommandValue](https://developer.mozilla.org/en-US/docs/Web/API/Document/queryCommandValue)
impl TDocument with query_command_value(self : Self, command_id : String) -> String {
  document_query_command_value_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(command_id),
  )
}

///|
extern "js" fn document_hidden_ffi(obj : JsValue) -> Bool = "(obj) => obj.hidden"

///|
/// [Document.hidden](https://developer.mozilla.org/en-US/docs/Web/API/Document/hidden)
impl TDocument with hidden(self : Self) -> Bool {
  document_hidden_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_visibility_state_ffi(
  obj : JsValue,
) -> DocumentVisibilityState = "(obj) => obj.visibilityState"

///|
/// [Document.visibilityState](https://developer.mozilla.org/en-US/docs/Web/API/Document/visibilityState)
impl TDocument with visibility_state(self : Self) -> DocumentVisibilityState {
  document_visibility_state_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_onreadystatechange_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onreadystatechange"

///|
/// [Document.onreadystatechange](https://developer.mozilla.org/en-US/docs/Web/API/Document/onreadystatechange)
impl TDocument with onreadystatechange(self : Self) -> EventHandler {
  document_onreadystatechange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onreadystatechange_ffi(
  obj : JsValue,
  onreadystatechange : JsValue,
) -> Unit = "(obj, onreadystatechange) => { obj.onreadystatechange = onreadystatechange; }"

///|
/// [Document.onreadystatechange](https://developer.mozilla.org/en-US/docs/Web/API/Document/onreadystatechange)
impl TDocument with set_onreadystatechange(
  self : Self,
  onreadystatechange : EventHandler,
) -> Unit {
  document_set_onreadystatechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onreadystatechange),
  )
}

///|
extern "js" fn document_onvisibilitychange_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onvisibilitychange"

///|
/// [Document.onvisibilitychange](https://developer.mozilla.org/en-US/docs/Web/API/Document/onvisibilitychange)
impl TDocument with onvisibilitychange(self : Self) -> EventHandler {
  document_onvisibilitychange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onvisibilitychange_ffi(
  obj : JsValue,
  onvisibilitychange : JsValue,
) -> Unit = "(obj, onvisibilitychange) => { obj.onvisibilitychange = onvisibilitychange; }"

///|
/// [Document.onvisibilitychange](https://developer.mozilla.org/en-US/docs/Web/API/Document/onvisibilitychange)
impl TDocument with set_onvisibilitychange(
  self : Self,
  onvisibilitychange : EventHandler,
) -> Unit {
  document_set_onvisibilitychange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onvisibilitychange),
  )
}

///|
extern "js" fn document_fg_color_ffi(obj : JsValue) -> String = "(obj) => obj.fgColor"

///|
/// [Document.fgColor](https://developer.mozilla.org/en-US/docs/Web/API/Document/fgColor)
impl TDocument with fg_color(self : Self) -> String {
  document_fg_color_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_fg_color_ffi(
  obj : JsValue,
  fg_color : JsValue,
) -> Unit = "(obj, fgColor) => { obj.fgColor = fgColor; }"

///|
/// [Document.fgColor](https://developer.mozilla.org/en-US/docs/Web/API/Document/fgColor)
impl TDocument with set_fg_color(self : Self, fg_color : String) -> Unit {
  document_set_fg_color_ffi(TJsValue::to_js(self), TJsValue::to_js(fg_color))
}

///|
extern "js" fn document_link_color_ffi(obj : JsValue) -> String = "(obj) => obj.linkColor"

///|
/// [Document.linkColor](https://developer.mozilla.org/en-US/docs/Web/API/Document/linkColor)
impl TDocument with link_color(self : Self) -> String {
  document_link_color_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_link_color_ffi(
  obj : JsValue,
  link_color : JsValue,
) -> Unit = "(obj, linkColor) => { obj.linkColor = linkColor; }"

///|
/// [Document.linkColor](https://developer.mozilla.org/en-US/docs/Web/API/Document/linkColor)
impl TDocument with set_link_color(self : Self, link_color : String) -> Unit {
  document_set_link_color_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(link_color),
  )
}

///|
extern "js" fn document_vlink_color_ffi(obj : JsValue) -> String = "(obj) => obj.vlinkColor"

///|
/// [Document.vlinkColor](https://developer.mozilla.org/en-US/docs/Web/API/Document/vlinkColor)
impl TDocument with vlink_color(self : Self) -> String {
  document_vlink_color_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_vlink_color_ffi(
  obj : JsValue,
  vlink_color : JsValue,
) -> Unit = "(obj, vlinkColor) => { obj.vlinkColor = vlinkColor; }"

///|
/// [Document.vlinkColor](https://developer.mozilla.org/en-US/docs/Web/API/Document/vlinkColor)
impl TDocument with set_vlink_color(self : Self, vlink_color : String) -> Unit {
  document_set_vlink_color_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(vlink_color),
  )
}

///|
extern "js" fn document_alink_color_ffi(obj : JsValue) -> String = "(obj) => obj.alinkColor"

///|
/// [Document.alinkColor](https://developer.mozilla.org/en-US/docs/Web/API/Document/alinkColor)
impl TDocument with alink_color(self : Self) -> String {
  document_alink_color_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_alink_color_ffi(
  obj : JsValue,
  alink_color : JsValue,
) -> Unit = "(obj, alinkColor) => { obj.alinkColor = alinkColor; }"

///|
/// [Document.alinkColor](https://developer.mozilla.org/en-US/docs/Web/API/Document/alinkColor)
impl TDocument with set_alink_color(self : Self, alink_color : String) -> Unit {
  document_set_alink_color_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(alink_color),
  )
}

///|
extern "js" fn document_bg_color_ffi(obj : JsValue) -> String = "(obj) => obj.bgColor"

///|
/// [Document.bgColor](https://developer.mozilla.org/en-US/docs/Web/API/Document/bgColor)
impl TDocument with bg_color(self : Self) -> String {
  document_bg_color_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_bg_color_ffi(
  obj : JsValue,
  bg_color : JsValue,
) -> Unit = "(obj, bgColor) => { obj.bgColor = bgColor; }"

///|
/// [Document.bgColor](https://developer.mozilla.org/en-US/docs/Web/API/Document/bgColor)
impl TDocument with set_bg_color(self : Self, bg_color : String) -> Unit {
  document_set_bg_color_ffi(TJsValue::to_js(self), TJsValue::to_js(bg_color))
}

///|
extern "js" fn document_anchors_ffi(obj : JsValue) -> HTMLCollection = "(obj) => obj.anchors"

///|
/// [Document.anchors](https://developer.mozilla.org/en-US/docs/Web/API/Document/anchors)
impl TDocument with anchors(self : Self) -> HTMLCollection {
  document_anchors_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_applets_ffi(obj : JsValue) -> HTMLCollection = "(obj) => obj.applets"

///|
/// [Document.applets](https://developer.mozilla.org/en-US/docs/Web/API/Document/applets)
impl TDocument with applets(self : Self) -> HTMLCollection {
  document_applets_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_clear_ffi(obj : JsValue) -> Unit = "(obj) => obj.clear()"

///|
/// [Document.clear](https://developer.mozilla.org/en-US/docs/Web/API/Document/clear)
impl TDocument with clear(self : Self) -> Unit {
  document_clear_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_capture_events_ffi(obj : JsValue) -> Unit = "(obj) => obj.captureEvents()"

///|
/// [Document.captureEvents](https://developer.mozilla.org/en-US/docs/Web/API/Document/captureEvents)
impl TDocument with capture_events(self : Self) -> Unit {
  document_capture_events_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_release_events_ffi(obj : JsValue) -> Unit = "(obj) => obj.releaseEvents()"

///|
/// [Document.releaseEvents](https://developer.mozilla.org/en-US/docs/Web/API/Document/releaseEvents)
impl TDocument with release_events(self : Self) -> Unit {
  document_release_events_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_all_ffi(obj : JsValue) -> HTMLAllCollection = "(obj) => obj.all"

///|
/// [Document.all](https://developer.mozilla.org/en-US/docs/Web/API/Document/all)
impl TDocument with all(self : Self) -> HTMLAllCollection {
  document_all_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_element_from_point_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "(obj, x, y) => obj.elementFromPoint(x, y)"

///|
/// [Document.elementFromPoint](https://developer.mozilla.org/en-US/docs/Web/API/Document/elementFromPoint)
impl TDocument with element_from_point(self : Self, x : Double, y : Double) -> Element? {
  let result = document_element_from_point_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn document_elements_from_point_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Array[Element] = "(obj, x, y) => obj.elementsFromPoint(x, y)"

///|
/// [Document.elementsFromPoint](https://developer.mozilla.org/en-US/docs/Web/API/Document/elementsFromPoint)
impl TDocument with elements_from_point(self : Self, x : Double, y : Double) -> Array[
  Element,
] {
  document_elements_from_point_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
extern "js" fn document_caret_position_from_point_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  options : JsValue,
) -> JsValue = "(obj, x, y, options) => obj.caretPositionFromPoint(x, y, options)"

///|
/// [Document.caretPositionFromPoint](https://developer.mozilla.org/en-US/docs/Web/API/Document/caretPositionFromPoint)
impl TDocument with caret_position_from_point(
  self : Self,
  x : Double,
  y : Double,
  options? : CaretPositionFromPointOptions = CaretPositionFromPointOptions::empty(),
) -> CaretPosition? {
  let result = document_caret_position_from_point_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(options),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn document_scrolling_element_ffi(obj : JsValue) -> Element = "(obj) => obj.scrollingElement"

///|
/// [Document.scrollingElement](https://developer.mozilla.org/en-US/docs/Web/API/Document/scrollingElement)
impl TDocument with scrolling_element(self : Self) -> Element {
  document_scrolling_element_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_get_element_by_id_ffi(
  obj : JsValue,
  element_id : JsValue,
) -> JsValue = "(obj, element_id) => obj.getElementById(element_id)"

///|
/// [Document.getElementById](https://developer.mozilla.org/en-US/docs/Web/API/Document/getElementById)
impl TDocument with get_element_by_id(self : Self, element_id : String) -> Element? {
  let result = document_get_element_by_id_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(element_id),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn document_custom_element_registry_ffi(
  obj : JsValue,
) -> CustomElementRegistry = "(obj) => obj.customElementRegistry"

///|
/// [Document.customElementRegistry](https://developer.mozilla.org/en-US/docs/Web/API/Document/customElementRegistry)
impl TDocument with custom_element_registry(self : Self) -> CustomElementRegistry {
  document_custom_element_registry_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_active_element_ffi(obj : JsValue) -> Element = "(obj) => obj.activeElement"

///|
/// [Document.activeElement](https://developer.mozilla.org/en-US/docs/Web/API/Document/activeElement)
impl TDocument with active_element(self : Self) -> Element {
  document_active_element_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_style_sheets_ffi(obj : JsValue) -> StyleSheetList = "(obj) => obj.styleSheets"

///|
/// [Document.styleSheets](https://developer.mozilla.org/en-US/docs/Web/API/Document/styleSheets)
impl TDocument with style_sheets(self : Self) -> StyleSheetList {
  document_style_sheets_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_adopted_style_sheets_ffi(obj : JsValue) -> JsValue = "(obj) => obj.adoptedStyleSheets"

///|
/// [Document.adoptedStyleSheets](https://developer.mozilla.org/en-US/docs/Web/API/Document/adoptedStyleSheets)
impl TDocument with adopted_style_sheets(self : Self) -> JsValue {
  document_adopted_style_sheets_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_adopted_style_sheets_ffi(
  obj : JsValue,
  adopted_style_sheets : JsValue,
) -> Unit = "(obj, adoptedStyleSheets) => { obj.adoptedStyleSheets = adoptedStyleSheets; }"

///|
/// [Document.adoptedStyleSheets](https://developer.mozilla.org/en-US/docs/Web/API/Document/adoptedStyleSheets)
impl TDocument with set_adopted_style_sheets(
  self : Self,
  adopted_style_sheets : JsValue,
) -> Unit {
  document_set_adopted_style_sheets_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(adopted_style_sheets),
  )
}

///|
extern "js" fn document_children_ffi(obj : JsValue) -> HTMLCollection = "(obj) => obj.children"

///|
/// [Document.children](https://developer.mozilla.org/en-US/docs/Web/API/Document/children)
impl TDocument with children(self : Self) -> HTMLCollection {
  document_children_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_first_element_child_ffi(obj : JsValue) -> Element = "(obj) => obj.firstElementChild"

///|
/// [Document.firstElementChild](https://developer.mozilla.org/en-US/docs/Web/API/Document/firstElementChild)
impl TDocument with first_element_child(self : Self) -> Element {
  document_first_element_child_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_last_element_child_ffi(obj : JsValue) -> Element = "(obj) => obj.lastElementChild"

///|
/// [Document.lastElementChild](https://developer.mozilla.org/en-US/docs/Web/API/Document/lastElementChild)
impl TDocument with last_element_child(self : Self) -> Element {
  document_last_element_child_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_child_element_count_ffi(obj : JsValue) -> UInt = "(obj) => obj.childElementCount"

///|
/// [Document.childElementCount](https://developer.mozilla.org/en-US/docs/Web/API/Document/childElementCount)
impl TDocument with child_element_count(self : Self) -> UInt {
  document_child_element_count_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_prepend_ffi(obj : JsValue, nodes : JsValue) -> Unit = "(obj, nodes) => obj.prepend(nodes)"

///|
/// [Document.prepend](https://developer.mozilla.org/en-US/docs/Web/API/Document/prepend)
impl TDocument with prepend(self : Self, nodes : &TDocumentPrependNodes) -> Unit {
  document_prepend_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
extern "js" fn document_append_ffi(obj : JsValue, nodes : JsValue) -> Unit = "(obj, nodes) => obj.append(nodes)"

///|
/// [Document.append](https://developer.mozilla.org/en-US/docs/Web/API/Document/append)
impl TDocument with append(self : Self, nodes : &TDocumentAppendNodes) -> Unit {
  document_append_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
extern "js" fn document_replace_children_ffi(
  obj : JsValue,
  nodes : JsValue,
) -> Unit = "(obj, nodes) => obj.replaceChildren(nodes)"

///|
/// [Document.replaceChildren](https://developer.mozilla.org/en-US/docs/Web/API/Document/replaceChildren)
impl TDocument with replace_children(
  self : Self,
  nodes : &TDocumentReplaceChildrenNodes,
) -> Unit {
  document_replace_children_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
extern "js" fn document_move_before_ffi(
  obj : JsValue,
  node : JsValue,
  child : JsValue,
) -> Unit = "(obj, node, child) => obj.moveBefore(node, child)"

///|
/// [Document.moveBefore](https://developer.mozilla.org/en-US/docs/Web/API/Document/moveBefore)
impl TDocument with move_before(self : Self, node : &TNode, child : &TNode) -> Unit {
  document_move_before_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    TJsValue::to_js(child),
  )
}

///|
extern "js" fn document_query_selector_ffi(
  obj : JsValue,
  selectors : JsValue,
) -> JsValue = "(obj, selectors) => obj.querySelector(selectors)"

///|
/// [Document.querySelector](https://developer.mozilla.org/en-US/docs/Web/API/Document/querySelector)
impl TDocument with query_selector(self : Self, selectors : String) -> Element? {
  let result = document_query_selector_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(selectors),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn document_query_selector_all_ffi(
  obj : JsValue,
  selectors : JsValue,
) -> NodeList = "(obj, selectors) => obj.querySelectorAll(selectors)"

///|
/// [Document.querySelectorAll](https://developer.mozilla.org/en-US/docs/Web/API/Document/querySelectorAll)
impl TDocument with query_selector_all(self : Self, selectors : String) -> NodeList {
  document_query_selector_all_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(selectors),
  )
}

///|
extern "js" fn document_create_expression_ffi(
  obj : JsValue,
  expression : JsValue,
  resolver : JsValue,
) -> XPathExpression = "(obj, expression, resolver) => obj.createExpression(expression, resolver)"

///|
/// [Document.createExpression](https://developer.mozilla.org/en-US/docs/Web/API/Document/createExpression)
impl TDocument with create_expression(
  self : Self,
  expression : String,
  resolver? : XPathNSResolver = JsValue::null(),
) -> XPathExpression {
  document_create_expression_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(expression),
    TJsValue::to_js(resolver),
  )
}

///|
extern "js" fn document_create_ns_resolver_ffi(
  obj : JsValue,
  node_resolver : JsValue,
) -> Node = "(obj, node_resolver) => obj.createNSResolver(node_resolver)"

///|
/// [Document.createNSResolver](https://developer.mozilla.org/en-US/docs/Web/API/Document/createNSResolver)
impl TDocument with create_ns_resolver(self : Self, node_resolver : &TNode) -> Node {
  document_create_ns_resolver_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node_resolver),
  )
}

///|
extern "js" fn document_evaluate_ffi(
  obj : JsValue,
  expression : JsValue,
  context_node : JsValue,
  resolver : JsValue,
  type_ : JsValue,
  result : JsValue,
) -> XPathResult = "(obj, expression, context_node, resolver, type_, result) => obj.evaluate(expression, context_node, resolver, type_, result)"

///|
/// [Document.evaluate](https://developer.mozilla.org/en-US/docs/Web/API/Document/evaluate)
impl TDocument with evaluate(
  self : Self,
  expression : String,
  context_node : &TNode,
  resolver? : XPathNSResolver = JsValue::null(),
  type_? : UInt = (0 : UInt),
  result? : &TXPathResult = JsValue::null(),
) -> XPathResult {
  document_evaluate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(expression),
    TJsValue::to_js(context_node),
    TJsValue::to_js(resolver),
    TJsValue::to_js(type_),
    TJsValue::to_js(result),
  )
}

///|
extern "js" fn document_onabort_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onabort"

///|
/// [Document.onabort](https://developer.mozilla.org/en-US/docs/Web/API/Document/onabort)
impl TDocument with onabort(self : Self) -> EventHandler {
  document_onabort_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onabort_ffi(
  obj : JsValue,
  onabort : JsValue,
) -> Unit = "(obj, onabort) => { obj.onabort = onabort; }"

///|
/// [Document.onabort](https://developer.mozilla.org/en-US/docs/Web/API/Document/onabort)
impl TDocument with set_onabort(self : Self, onabort : EventHandler) -> Unit {
  document_set_onabort_ffi(TJsValue::to_js(self), TJsValue::to_js(onabort))
}

///|
extern "js" fn document_onauxclick_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onauxclick"

///|
/// [Document.onauxclick](https://developer.mozilla.org/en-US/docs/Web/API/Document/onauxclick)
impl TDocument with onauxclick(self : Self) -> EventHandler {
  document_onauxclick_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onauxclick_ffi(
  obj : JsValue,
  onauxclick : JsValue,
) -> Unit = "(obj, onauxclick) => { obj.onauxclick = onauxclick; }"

///|
/// [Document.onauxclick](https://developer.mozilla.org/en-US/docs/Web/API/Document/onauxclick)
impl TDocument with set_onauxclick(self : Self, onauxclick : EventHandler) -> Unit {
  document_set_onauxclick_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onauxclick),
  )
}

///|
extern "js" fn document_onbeforeinput_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onbeforeinput"

///|
/// [Document.onbeforeinput](https://developer.mozilla.org/en-US/docs/Web/API/Document/onbeforeinput)
impl TDocument with onbeforeinput(self : Self) -> EventHandler {
  document_onbeforeinput_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onbeforeinput_ffi(
  obj : JsValue,
  onbeforeinput : JsValue,
) -> Unit = "(obj, onbeforeinput) => { obj.onbeforeinput = onbeforeinput; }"

///|
/// [Document.onbeforeinput](https://developer.mozilla.org/en-US/docs/Web/API/Document/onbeforeinput)
impl TDocument with set_onbeforeinput(self : Self, onbeforeinput : EventHandler) -> Unit {
  document_set_onbeforeinput_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onbeforeinput),
  )
}

///|
extern "js" fn document_onbeforematch_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onbeforematch"

///|
/// [Document.onbeforematch](https://developer.mozilla.org/en-US/docs/Web/API/Document/onbeforematch)
impl TDocument with onbeforematch(self : Self) -> EventHandler {
  document_onbeforematch_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onbeforematch_ffi(
  obj : JsValue,
  onbeforematch : JsValue,
) -> Unit = "(obj, onbeforematch) => { obj.onbeforematch = onbeforematch; }"

///|
/// [Document.onbeforematch](https://developer.mozilla.org/en-US/docs/Web/API/Document/onbeforematch)
impl TDocument with set_onbeforematch(self : Self, onbeforematch : EventHandler) -> Unit {
  document_set_onbeforematch_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onbeforematch),
  )
}

///|
extern "js" fn document_onbeforetoggle_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onbeforetoggle"

///|
/// [Document.onbeforetoggle](https://developer.mozilla.org/en-US/docs/Web/API/Document/onbeforetoggle)
impl TDocument with onbeforetoggle(self : Self) -> EventHandler {
  document_onbeforetoggle_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onbeforetoggle_ffi(
  obj : JsValue,
  onbeforetoggle : JsValue,
) -> Unit = "(obj, onbeforetoggle) => { obj.onbeforetoggle = onbeforetoggle; }"

///|
/// [Document.onbeforetoggle](https://developer.mozilla.org/en-US/docs/Web/API/Document/onbeforetoggle)
impl TDocument with set_onbeforetoggle(
  self : Self,
  onbeforetoggle : EventHandler,
) -> Unit {
  document_set_onbeforetoggle_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onbeforetoggle),
  )
}

///|
extern "js" fn document_onblur_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onblur"

///|
/// [Document.onblur](https://developer.mozilla.org/en-US/docs/Web/API/Document/onblur)
impl TDocument with onblur(self : Self) -> EventHandler {
  document_onblur_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onblur_ffi(obj : JsValue, onblur : JsValue) -> Unit = "(obj, onblur) => { obj.onblur = onblur; }"

///|
/// [Document.onblur](https://developer.mozilla.org/en-US/docs/Web/API/Document/onblur)
impl TDocument with set_onblur(self : Self, onblur : EventHandler) -> Unit {
  document_set_onblur_ffi(TJsValue::to_js(self), TJsValue::to_js(onblur))
}

///|
extern "js" fn document_oncancel_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncancel"

///|
/// [Document.oncancel](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncancel)
impl TDocument with oncancel(self : Self) -> EventHandler {
  document_oncancel_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_oncancel_ffi(
  obj : JsValue,
  oncancel : JsValue,
) -> Unit = "(obj, oncancel) => { obj.oncancel = oncancel; }"

///|
/// [Document.oncancel](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncancel)
impl TDocument with set_oncancel(self : Self, oncancel : EventHandler) -> Unit {
  document_set_oncancel_ffi(TJsValue::to_js(self), TJsValue::to_js(oncancel))
}

///|
extern "js" fn document_oncanplay_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncanplay"

///|
/// [Document.oncanplay](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncanplay)
impl TDocument with oncanplay(self : Self) -> EventHandler {
  document_oncanplay_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_oncanplay_ffi(
  obj : JsValue,
  oncanplay : JsValue,
) -> Unit = "(obj, oncanplay) => { obj.oncanplay = oncanplay; }"

///|
/// [Document.oncanplay](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncanplay)
impl TDocument with set_oncanplay(self : Self, oncanplay : EventHandler) -> Unit {
  document_set_oncanplay_ffi(TJsValue::to_js(self), TJsValue::to_js(oncanplay))
}

///|
extern "js" fn document_oncanplaythrough_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncanplaythrough"

///|
/// [Document.oncanplaythrough](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncanplaythrough)
impl TDocument with oncanplaythrough(self : Self) -> EventHandler {
  document_oncanplaythrough_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_oncanplaythrough_ffi(
  obj : JsValue,
  oncanplaythrough : JsValue,
) -> Unit = "(obj, oncanplaythrough) => { obj.oncanplaythrough = oncanplaythrough; }"

///|
/// [Document.oncanplaythrough](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncanplaythrough)
impl TDocument with set_oncanplaythrough(
  self : Self,
  oncanplaythrough : EventHandler,
) -> Unit {
  document_set_oncanplaythrough_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncanplaythrough),
  )
}

///|
extern "js" fn document_onchange_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onchange"

///|
/// [Document.onchange](https://developer.mozilla.org/en-US/docs/Web/API/Document/onchange)
impl TDocument with onchange(self : Self) -> EventHandler {
  document_onchange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onchange_ffi(
  obj : JsValue,
  onchange : JsValue,
) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"

///|
/// [Document.onchange](https://developer.mozilla.org/en-US/docs/Web/API/Document/onchange)
impl TDocument with set_onchange(self : Self, onchange : EventHandler) -> Unit {
  document_set_onchange_ffi(TJsValue::to_js(self), TJsValue::to_js(onchange))
}

///|
extern "js" fn document_onclick_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onclick"

///|
/// [Document.onclick](https://developer.mozilla.org/en-US/docs/Web/API/Document/onclick)
impl TDocument with onclick(self : Self) -> EventHandler {
  document_onclick_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onclick_ffi(
  obj : JsValue,
  onclick : JsValue,
) -> Unit = "(obj, onclick) => { obj.onclick = onclick; }"

///|
/// [Document.onclick](https://developer.mozilla.org/en-US/docs/Web/API/Document/onclick)
impl TDocument with set_onclick(self : Self, onclick : EventHandler) -> Unit {
  document_set_onclick_ffi(TJsValue::to_js(self), TJsValue::to_js(onclick))
}

///|
extern "js" fn document_onclose_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onclose"

///|
/// [Document.onclose](https://developer.mozilla.org/en-US/docs/Web/API/Document/onclose)
impl TDocument with onclose(self : Self) -> EventHandler {
  document_onclose_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onclose_ffi(
  obj : JsValue,
  onclose : JsValue,
) -> Unit = "(obj, onclose) => { obj.onclose = onclose; }"

///|
/// [Document.onclose](https://developer.mozilla.org/en-US/docs/Web/API/Document/onclose)
impl TDocument with set_onclose(self : Self, onclose : EventHandler) -> Unit {
  document_set_onclose_ffi(TJsValue::to_js(self), TJsValue::to_js(onclose))
}

///|
extern "js" fn document_oncommand_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncommand"

///|
/// [Document.oncommand](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncommand)
impl TDocument with oncommand(self : Self) -> EventHandler {
  document_oncommand_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_oncommand_ffi(
  obj : JsValue,
  oncommand : JsValue,
) -> Unit = "(obj, oncommand) => { obj.oncommand = oncommand; }"

///|
/// [Document.oncommand](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncommand)
impl TDocument with set_oncommand(self : Self, oncommand : EventHandler) -> Unit {
  document_set_oncommand_ffi(TJsValue::to_js(self), TJsValue::to_js(oncommand))
}

///|
extern "js" fn document_oncontextlost_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncontextlost"

///|
/// [Document.oncontextlost](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncontextlost)
impl TDocument with oncontextlost(self : Self) -> EventHandler {
  document_oncontextlost_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_oncontextlost_ffi(
  obj : JsValue,
  oncontextlost : JsValue,
) -> Unit = "(obj, oncontextlost) => { obj.oncontextlost = oncontextlost; }"

///|
/// [Document.oncontextlost](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncontextlost)
impl TDocument with set_oncontextlost(self : Self, oncontextlost : EventHandler) -> Unit {
  document_set_oncontextlost_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncontextlost),
  )
}

///|
extern "js" fn document_oncontextmenu_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncontextmenu"

///|
/// [Document.oncontextmenu](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncontextmenu)
impl TDocument with oncontextmenu(self : Self) -> EventHandler {
  document_oncontextmenu_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_oncontextmenu_ffi(
  obj : JsValue,
  oncontextmenu : JsValue,
) -> Unit = "(obj, oncontextmenu) => { obj.oncontextmenu = oncontextmenu; }"

///|
/// [Document.oncontextmenu](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncontextmenu)
impl TDocument with set_oncontextmenu(self : Self, oncontextmenu : EventHandler) -> Unit {
  document_set_oncontextmenu_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncontextmenu),
  )
}

///|
extern "js" fn document_oncontextrestored_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncontextrestored"

///|
/// [Document.oncontextrestored](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncontextrestored)
impl TDocument with oncontextrestored(self : Self) -> EventHandler {
  document_oncontextrestored_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_oncontextrestored_ffi(
  obj : JsValue,
  oncontextrestored : JsValue,
) -> Unit = "(obj, oncontextrestored) => { obj.oncontextrestored = oncontextrestored; }"

///|
/// [Document.oncontextrestored](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncontextrestored)
impl TDocument with set_oncontextrestored(
  self : Self,
  oncontextrestored : EventHandler,
) -> Unit {
  document_set_oncontextrestored_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncontextrestored),
  )
}

///|
extern "js" fn document_oncopy_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncopy"

///|
/// [Document.oncopy](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncopy)
impl TDocument with oncopy(self : Self) -> EventHandler {
  document_oncopy_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_oncopy_ffi(obj : JsValue, oncopy : JsValue) -> Unit = "(obj, oncopy) => { obj.oncopy = oncopy; }"

///|
/// [Document.oncopy](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncopy)
impl TDocument with set_oncopy(self : Self, oncopy : EventHandler) -> Unit {
  document_set_oncopy_ffi(TJsValue::to_js(self), TJsValue::to_js(oncopy))
}

///|
extern "js" fn document_oncuechange_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncuechange"

///|
/// [Document.oncuechange](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncuechange)
impl TDocument with oncuechange(self : Self) -> EventHandler {
  document_oncuechange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_oncuechange_ffi(
  obj : JsValue,
  oncuechange : JsValue,
) -> Unit = "(obj, oncuechange) => { obj.oncuechange = oncuechange; }"

///|
/// [Document.oncuechange](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncuechange)
impl TDocument with set_oncuechange(self : Self, oncuechange : EventHandler) -> Unit {
  document_set_oncuechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncuechange),
  )
}

///|
extern "js" fn document_oncut_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncut"

///|
/// [Document.oncut](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncut)
impl TDocument with oncut(self : Self) -> EventHandler {
  document_oncut_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_oncut_ffi(obj : JsValue, oncut : JsValue) -> Unit = "(obj, oncut) => { obj.oncut = oncut; }"

///|
/// [Document.oncut](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncut)
impl TDocument with set_oncut(self : Self, oncut : EventHandler) -> Unit {
  document_set_oncut_ffi(TJsValue::to_js(self), TJsValue::to_js(oncut))
}

///|
extern "js" fn document_ondblclick_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ondblclick"

///|
/// [Document.ondblclick](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondblclick)
impl TDocument with ondblclick(self : Self) -> EventHandler {
  document_ondblclick_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_ondblclick_ffi(
  obj : JsValue,
  ondblclick : JsValue,
) -> Unit = "(obj, ondblclick) => { obj.ondblclick = ondblclick; }"

///|
/// [Document.ondblclick](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondblclick)
impl TDocument with set_ondblclick(self : Self, ondblclick : EventHandler) -> Unit {
  document_set_ondblclick_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondblclick),
  )
}

///|
extern "js" fn document_ondrag_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ondrag"

///|
/// [Document.ondrag](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondrag)
impl TDocument with ondrag(self : Self) -> EventHandler {
  document_ondrag_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_ondrag_ffi(obj : JsValue, ondrag : JsValue) -> Unit = "(obj, ondrag) => { obj.ondrag = ondrag; }"

///|
/// [Document.ondrag](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondrag)
impl TDocument with set_ondrag(self : Self, ondrag : EventHandler) -> Unit {
  document_set_ondrag_ffi(TJsValue::to_js(self), TJsValue::to_js(ondrag))
}

///|
extern "js" fn document_ondragend_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ondragend"

///|
/// [Document.ondragend](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondragend)
impl TDocument with ondragend(self : Self) -> EventHandler {
  document_ondragend_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_ondragend_ffi(
  obj : JsValue,
  ondragend : JsValue,
) -> Unit = "(obj, ondragend) => { obj.ondragend = ondragend; }"

///|
/// [Document.ondragend](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondragend)
impl TDocument with set_ondragend(self : Self, ondragend : EventHandler) -> Unit {
  document_set_ondragend_ffi(TJsValue::to_js(self), TJsValue::to_js(ondragend))
}

///|
extern "js" fn document_ondragenter_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ondragenter"

///|
/// [Document.ondragenter](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondragenter)
impl TDocument with ondragenter(self : Self) -> EventHandler {
  document_ondragenter_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_ondragenter_ffi(
  obj : JsValue,
  ondragenter : JsValue,
) -> Unit = "(obj, ondragenter) => { obj.ondragenter = ondragenter; }"

///|
/// [Document.ondragenter](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondragenter)
impl TDocument with set_ondragenter(self : Self, ondragenter : EventHandler) -> Unit {
  document_set_ondragenter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondragenter),
  )
}

///|
extern "js" fn document_ondragleave_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ondragleave"

///|
/// [Document.ondragleave](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondragleave)
impl TDocument with ondragleave(self : Self) -> EventHandler {
  document_ondragleave_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_ondragleave_ffi(
  obj : JsValue,
  ondragleave : JsValue,
) -> Unit = "(obj, ondragleave) => { obj.ondragleave = ondragleave; }"

///|
/// [Document.ondragleave](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondragleave)
impl TDocument with set_ondragleave(self : Self, ondragleave : EventHandler) -> Unit {
  document_set_ondragleave_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondragleave),
  )
}

///|
extern "js" fn document_ondragover_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ondragover"

///|
/// [Document.ondragover](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondragover)
impl TDocument with ondragover(self : Self) -> EventHandler {
  document_ondragover_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_ondragover_ffi(
  obj : JsValue,
  ondragover : JsValue,
) -> Unit = "(obj, ondragover) => { obj.ondragover = ondragover; }"

///|
/// [Document.ondragover](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondragover)
impl TDocument with set_ondragover(self : Self, ondragover : EventHandler) -> Unit {
  document_set_ondragover_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondragover),
  )
}

///|
extern "js" fn document_ondragstart_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ondragstart"

///|
/// [Document.ondragstart](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondragstart)
impl TDocument with ondragstart(self : Self) -> EventHandler {
  document_ondragstart_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_ondragstart_ffi(
  obj : JsValue,
  ondragstart : JsValue,
) -> Unit = "(obj, ondragstart) => { obj.ondragstart = ondragstart; }"

///|
/// [Document.ondragstart](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondragstart)
impl TDocument with set_ondragstart(self : Self, ondragstart : EventHandler) -> Unit {
  document_set_ondragstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondragstart),
  )
}

///|
extern "js" fn document_ondrop_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ondrop"

///|
/// [Document.ondrop](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondrop)
impl TDocument with ondrop(self : Self) -> EventHandler {
  document_ondrop_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_ondrop_ffi(obj : JsValue, ondrop : JsValue) -> Unit = "(obj, ondrop) => { obj.ondrop = ondrop; }"

///|
/// [Document.ondrop](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondrop)
impl TDocument with set_ondrop(self : Self, ondrop : EventHandler) -> Unit {
  document_set_ondrop_ffi(TJsValue::to_js(self), TJsValue::to_js(ondrop))
}

///|
extern "js" fn document_ondurationchange_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ondurationchange"

///|
/// [Document.ondurationchange](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondurationchange)
impl TDocument with ondurationchange(self : Self) -> EventHandler {
  document_ondurationchange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_ondurationchange_ffi(
  obj : JsValue,
  ondurationchange : JsValue,
) -> Unit = "(obj, ondurationchange) => { obj.ondurationchange = ondurationchange; }"

///|
/// [Document.ondurationchange](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondurationchange)
impl TDocument with set_ondurationchange(
  self : Self,
  ondurationchange : EventHandler,
) -> Unit {
  document_set_ondurationchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondurationchange),
  )
}

///|
extern "js" fn document_onemptied_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onemptied"

///|
/// [Document.onemptied](https://developer.mozilla.org/en-US/docs/Web/API/Document/onemptied)
impl TDocument with onemptied(self : Self) -> EventHandler {
  document_onemptied_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onemptied_ffi(
  obj : JsValue,
  onemptied : JsValue,
) -> Unit = "(obj, onemptied) => { obj.onemptied = onemptied; }"

///|
/// [Document.onemptied](https://developer.mozilla.org/en-US/docs/Web/API/Document/onemptied)
impl TDocument with set_onemptied(self : Self, onemptied : EventHandler) -> Unit {
  document_set_onemptied_ffi(TJsValue::to_js(self), TJsValue::to_js(onemptied))
}

///|
extern "js" fn document_onended_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onended"

///|
/// [Document.onended](https://developer.mozilla.org/en-US/docs/Web/API/Document/onended)
impl TDocument with onended(self : Self) -> EventHandler {
  document_onended_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onended_ffi(
  obj : JsValue,
  onended : JsValue,
) -> Unit = "(obj, onended) => { obj.onended = onended; }"

///|
/// [Document.onended](https://developer.mozilla.org/en-US/docs/Web/API/Document/onended)
impl TDocument with set_onended(self : Self, onended : EventHandler) -> Unit {
  document_set_onended_ffi(TJsValue::to_js(self), TJsValue::to_js(onended))
}

///|
extern "js" fn document_onerror_ffi(obj : JsValue) -> OnErrorEventHandler = "(obj) => obj.onerror"

///|
/// [Document.onerror](https://developer.mozilla.org/en-US/docs/Web/API/Document/onerror)
impl TDocument with onerror(self : Self) -> OnErrorEventHandler {
  document_onerror_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onerror_ffi(
  obj : JsValue,
  onerror : JsValue,
) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
/// [Document.onerror](https://developer.mozilla.org/en-US/docs/Web/API/Document/onerror)
impl TDocument with set_onerror(self : Self, onerror : OnErrorEventHandler) -> Unit {
  document_set_onerror_ffi(TJsValue::to_js(self), TJsValue::to_js(onerror))
}

///|
extern "js" fn document_onfocus_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onfocus"

///|
/// [Document.onfocus](https://developer.mozilla.org/en-US/docs/Web/API/Document/onfocus)
impl TDocument with onfocus(self : Self) -> EventHandler {
  document_onfocus_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onfocus_ffi(
  obj : JsValue,
  onfocus : JsValue,
) -> Unit = "(obj, onfocus) => { obj.onfocus = onfocus; }"

///|
/// [Document.onfocus](https://developer.mozilla.org/en-US/docs/Web/API/Document/onfocus)
impl TDocument with set_onfocus(self : Self, onfocus : EventHandler) -> Unit {
  document_set_onfocus_ffi(TJsValue::to_js(self), TJsValue::to_js(onfocus))
}

///|
extern "js" fn document_onformdata_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onformdata"

///|
/// [Document.onformdata](https://developer.mozilla.org/en-US/docs/Web/API/Document/onformdata)
impl TDocument with onformdata(self : Self) -> EventHandler {
  document_onformdata_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onformdata_ffi(
  obj : JsValue,
  onformdata : JsValue,
) -> Unit = "(obj, onformdata) => { obj.onformdata = onformdata; }"

///|
/// [Document.onformdata](https://developer.mozilla.org/en-US/docs/Web/API/Document/onformdata)
impl TDocument with set_onformdata(self : Self, onformdata : EventHandler) -> Unit {
  document_set_onformdata_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onformdata),
  )
}

///|
extern "js" fn document_oninput_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oninput"

///|
/// [Document.oninput](https://developer.mozilla.org/en-US/docs/Web/API/Document/oninput)
impl TDocument with oninput(self : Self) -> EventHandler {
  document_oninput_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_oninput_ffi(
  obj : JsValue,
  oninput : JsValue,
) -> Unit = "(obj, oninput) => { obj.oninput = oninput; }"

///|
/// [Document.oninput](https://developer.mozilla.org/en-US/docs/Web/API/Document/oninput)
impl TDocument with set_oninput(self : Self, oninput : EventHandler) -> Unit {
  document_set_oninput_ffi(TJsValue::to_js(self), TJsValue::to_js(oninput))
}

///|
extern "js" fn document_oninvalid_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oninvalid"

///|
/// [Document.oninvalid](https://developer.mozilla.org/en-US/docs/Web/API/Document/oninvalid)
impl TDocument with oninvalid(self : Self) -> EventHandler {
  document_oninvalid_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_oninvalid_ffi(
  obj : JsValue,
  oninvalid : JsValue,
) -> Unit = "(obj, oninvalid) => { obj.oninvalid = oninvalid; }"

///|
/// [Document.oninvalid](https://developer.mozilla.org/en-US/docs/Web/API/Document/oninvalid)
impl TDocument with set_oninvalid(self : Self, oninvalid : EventHandler) -> Unit {
  document_set_oninvalid_ffi(TJsValue::to_js(self), TJsValue::to_js(oninvalid))
}

///|
extern "js" fn document_onkeydown_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onkeydown"

///|
/// [Document.onkeydown](https://developer.mozilla.org/en-US/docs/Web/API/Document/onkeydown)
impl TDocument with onkeydown(self : Self) -> EventHandler {
  document_onkeydown_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onkeydown_ffi(
  obj : JsValue,
  onkeydown : JsValue,
) -> Unit = "(obj, onkeydown) => { obj.onkeydown = onkeydown; }"

///|
/// [Document.onkeydown](https://developer.mozilla.org/en-US/docs/Web/API/Document/onkeydown)
impl TDocument with set_onkeydown(self : Self, onkeydown : EventHandler) -> Unit {
  document_set_onkeydown_ffi(TJsValue::to_js(self), TJsValue::to_js(onkeydown))
}

///|
extern "js" fn document_onkeypress_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onkeypress"

///|
/// [Document.onkeypress](https://developer.mozilla.org/en-US/docs/Web/API/Document/onkeypress)
impl TDocument with onkeypress(self : Self) -> EventHandler {
  document_onkeypress_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onkeypress_ffi(
  obj : JsValue,
  onkeypress : JsValue,
) -> Unit = "(obj, onkeypress) => { obj.onkeypress = onkeypress; }"

///|
/// [Document.onkeypress](https://developer.mozilla.org/en-US/docs/Web/API/Document/onkeypress)
impl TDocument with set_onkeypress(self : Self, onkeypress : EventHandler) -> Unit {
  document_set_onkeypress_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onkeypress),
  )
}

///|
extern "js" fn document_onkeyup_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onkeyup"

///|
/// [Document.onkeyup](https://developer.mozilla.org/en-US/docs/Web/API/Document/onkeyup)
impl TDocument with onkeyup(self : Self) -> EventHandler {
  document_onkeyup_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onkeyup_ffi(
  obj : JsValue,
  onkeyup : JsValue,
) -> Unit = "(obj, onkeyup) => { obj.onkeyup = onkeyup; }"

///|
/// [Document.onkeyup](https://developer.mozilla.org/en-US/docs/Web/API/Document/onkeyup)
impl TDocument with set_onkeyup(self : Self, onkeyup : EventHandler) -> Unit {
  document_set_onkeyup_ffi(TJsValue::to_js(self), TJsValue::to_js(onkeyup))
}

///|
extern "js" fn document_onload_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onload"

///|
/// [Document.onload](https://developer.mozilla.org/en-US/docs/Web/API/Document/onload)
impl TDocument with onload(self : Self) -> EventHandler {
  document_onload_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onload_ffi(obj : JsValue, onload : JsValue) -> Unit = "(obj, onload) => { obj.onload = onload; }"

///|
/// [Document.onload](https://developer.mozilla.org/en-US/docs/Web/API/Document/onload)
impl TDocument with set_onload(self : Self, onload : EventHandler) -> Unit {
  document_set_onload_ffi(TJsValue::to_js(self), TJsValue::to_js(onload))
}

///|
extern "js" fn document_onloadeddata_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onloadeddata"

///|
/// [Document.onloadeddata](https://developer.mozilla.org/en-US/docs/Web/API/Document/onloadeddata)
impl TDocument with onloadeddata(self : Self) -> EventHandler {
  document_onloadeddata_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onloadeddata_ffi(
  obj : JsValue,
  onloadeddata : JsValue,
) -> Unit = "(obj, onloadeddata) => { obj.onloadeddata = onloadeddata; }"

///|
/// [Document.onloadeddata](https://developer.mozilla.org/en-US/docs/Web/API/Document/onloadeddata)
impl TDocument with set_onloadeddata(self : Self, onloadeddata : EventHandler) -> Unit {
  document_set_onloadeddata_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onloadeddata),
  )
}

///|
extern "js" fn document_onloadedmetadata_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onloadedmetadata"

///|
/// [Document.onloadedmetadata](https://developer.mozilla.org/en-US/docs/Web/API/Document/onloadedmetadata)
impl TDocument with onloadedmetadata(self : Self) -> EventHandler {
  document_onloadedmetadata_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onloadedmetadata_ffi(
  obj : JsValue,
  onloadedmetadata : JsValue,
) -> Unit = "(obj, onloadedmetadata) => { obj.onloadedmetadata = onloadedmetadata; }"

///|
/// [Document.onloadedmetadata](https://developer.mozilla.org/en-US/docs/Web/API/Document/onloadedmetadata)
impl TDocument with set_onloadedmetadata(
  self : Self,
  onloadedmetadata : EventHandler,
) -> Unit {
  document_set_onloadedmetadata_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onloadedmetadata),
  )
}

///|
extern "js" fn document_onloadstart_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onloadstart"

///|
/// [Document.onloadstart](https://developer.mozilla.org/en-US/docs/Web/API/Document/onloadstart)
impl TDocument with onloadstart(self : Self) -> EventHandler {
  document_onloadstart_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onloadstart_ffi(
  obj : JsValue,
  onloadstart : JsValue,
) -> Unit = "(obj, onloadstart) => { obj.onloadstart = onloadstart; }"

///|
/// [Document.onloadstart](https://developer.mozilla.org/en-US/docs/Web/API/Document/onloadstart)
impl TDocument with set_onloadstart(self : Self, onloadstart : EventHandler) -> Unit {
  document_set_onloadstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onloadstart),
  )
}

///|
extern "js" fn document_onmousedown_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmousedown"

///|
/// [Document.onmousedown](https://developer.mozilla.org/en-US/docs/Web/API/Document/onmousedown)
impl TDocument with onmousedown(self : Self) -> EventHandler {
  document_onmousedown_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onmousedown_ffi(
  obj : JsValue,
  onmousedown : JsValue,
) -> Unit = "(obj, onmousedown) => { obj.onmousedown = onmousedown; }"

///|
/// [Document.onmousedown](https://developer.mozilla.org/en-US/docs/Web/API/Document/onmousedown)
impl TDocument with set_onmousedown(self : Self, onmousedown : EventHandler) -> Unit {
  document_set_onmousedown_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmousedown),
  )
}

///|
extern "js" fn document_onmouseenter_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmouseenter"

///|
/// [Document.onmouseenter](https://developer.mozilla.org/en-US/docs/Web/API/Document/onmouseenter)
impl TDocument with onmouseenter(self : Self) -> EventHandler {
  document_onmouseenter_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onmouseenter_ffi(
  obj : JsValue,
  onmouseenter : JsValue,
) -> Unit = "(obj, onmouseenter) => { obj.onmouseenter = onmouseenter; }"

///|
/// [Document.onmouseenter](https://developer.mozilla.org/en-US/docs/Web/API/Document/onmouseenter)
impl TDocument with set_onmouseenter(self : Self, onmouseenter : EventHandler) -> Unit {
  document_set_onmouseenter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmouseenter),
  )
}

///|
extern "js" fn document_onmouseleave_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmouseleave"

///|
/// [Document.onmouseleave](https://developer.mozilla.org/en-US/docs/Web/API/Document/onmouseleave)
impl TDocument with onmouseleave(self : Self) -> EventHandler {
  document_onmouseleave_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onmouseleave_ffi(
  obj : JsValue,
  onmouseleave : JsValue,
) -> Unit = "(obj, onmouseleave) => { obj.onmouseleave = onmouseleave; }"

///|
/// [Document.onmouseleave](https://developer.mozilla.org/en-US/docs/Web/API/Document/onmouseleave)
impl TDocument with set_onmouseleave(self : Self, onmouseleave : EventHandler) -> Unit {
  document_set_onmouseleave_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmouseleave),
  )
}

///|
extern "js" fn document_onmousemove_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmousemove"

///|
/// [Document.onmousemove](https://developer.mozilla.org/en-US/docs/Web/API/Document/onmousemove)
impl TDocument with onmousemove(self : Self) -> EventHandler {
  document_onmousemove_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onmousemove_ffi(
  obj : JsValue,
  onmousemove : JsValue,
) -> Unit = "(obj, onmousemove) => { obj.onmousemove = onmousemove; }"

///|
/// [Document.onmousemove](https://developer.mozilla.org/en-US/docs/Web/API/Document/onmousemove)
impl TDocument with set_onmousemove(self : Self, onmousemove : EventHandler) -> Unit {
  document_set_onmousemove_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmousemove),
  )
}

///|
extern "js" fn document_onmouseout_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmouseout"

///|
/// [Document.onmouseout](https://developer.mozilla.org/en-US/docs/Web/API/Document/onmouseout)
impl TDocument with onmouseout(self : Self) -> EventHandler {
  document_onmouseout_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onmouseout_ffi(
  obj : JsValue,
  onmouseout : JsValue,
) -> Unit = "(obj, onmouseout) => { obj.onmouseout = onmouseout; }"

///|
/// [Document.onmouseout](https://developer.mozilla.org/en-US/docs/Web/API/Document/onmouseout)
impl TDocument with set_onmouseout(self : Self, onmouseout : EventHandler) -> Unit {
  document_set_onmouseout_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmouseout),
  )
}

///|
extern "js" fn document_onmouseover_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmouseover"

///|
/// [Document.onmouseover](https://developer.mozilla.org/en-US/docs/Web/API/Document/onmouseover)
impl TDocument with onmouseover(self : Self) -> EventHandler {
  document_onmouseover_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onmouseover_ffi(
  obj : JsValue,
  onmouseover : JsValue,
) -> Unit = "(obj, onmouseover) => { obj.onmouseover = onmouseover; }"

///|
/// [Document.onmouseover](https://developer.mozilla.org/en-US/docs/Web/API/Document/onmouseover)
impl TDocument with set_onmouseover(self : Self, onmouseover : EventHandler) -> Unit {
  document_set_onmouseover_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmouseover),
  )
}

///|
extern "js" fn document_onmouseup_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmouseup"

///|
/// [Document.onmouseup](https://developer.mozilla.org/en-US/docs/Web/API/Document/onmouseup)
impl TDocument with onmouseup(self : Self) -> EventHandler {
  document_onmouseup_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onmouseup_ffi(
  obj : JsValue,
  onmouseup : JsValue,
) -> Unit = "(obj, onmouseup) => { obj.onmouseup = onmouseup; }"

///|
/// [Document.onmouseup](https://developer.mozilla.org/en-US/docs/Web/API/Document/onmouseup)
impl TDocument with set_onmouseup(self : Self, onmouseup : EventHandler) -> Unit {
  document_set_onmouseup_ffi(TJsValue::to_js(self), TJsValue::to_js(onmouseup))
}

///|
extern "js" fn document_onpaste_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onpaste"

///|
/// [Document.onpaste](https://developer.mozilla.org/en-US/docs/Web/API/Document/onpaste)
impl TDocument with onpaste(self : Self) -> EventHandler {
  document_onpaste_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onpaste_ffi(
  obj : JsValue,
  onpaste : JsValue,
) -> Unit = "(obj, onpaste) => { obj.onpaste = onpaste; }"

///|
/// [Document.onpaste](https://developer.mozilla.org/en-US/docs/Web/API/Document/onpaste)
impl TDocument with set_onpaste(self : Self, onpaste : EventHandler) -> Unit {
  document_set_onpaste_ffi(TJsValue::to_js(self), TJsValue::to_js(onpaste))
}

///|
extern "js" fn document_onpause_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onpause"

///|
/// [Document.onpause](https://developer.mozilla.org/en-US/docs/Web/API/Document/onpause)
impl TDocument with onpause(self : Self) -> EventHandler {
  document_onpause_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onpause_ffi(
  obj : JsValue,
  onpause : JsValue,
) -> Unit = "(obj, onpause) => { obj.onpause = onpause; }"

///|
/// [Document.onpause](https://developer.mozilla.org/en-US/docs/Web/API/Document/onpause)
impl TDocument with set_onpause(self : Self, onpause : EventHandler) -> Unit {
  document_set_onpause_ffi(TJsValue::to_js(self), TJsValue::to_js(onpause))
}

///|
extern "js" fn document_onplay_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onplay"

///|
/// [Document.onplay](https://developer.mozilla.org/en-US/docs/Web/API/Document/onplay)
impl TDocument with onplay(self : Self) -> EventHandler {
  document_onplay_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onplay_ffi(obj : JsValue, onplay : JsValue) -> Unit = "(obj, onplay) => { obj.onplay = onplay; }"

///|
/// [Document.onplay](https://developer.mozilla.org/en-US/docs/Web/API/Document/onplay)
impl TDocument with set_onplay(self : Self, onplay : EventHandler) -> Unit {
  document_set_onplay_ffi(TJsValue::to_js(self), TJsValue::to_js(onplay))
}

///|
extern "js" fn document_onplaying_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onplaying"

///|
/// [Document.onplaying](https://developer.mozilla.org/en-US/docs/Web/API/Document/onplaying)
impl TDocument with onplaying(self : Self) -> EventHandler {
  document_onplaying_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onplaying_ffi(
  obj : JsValue,
  onplaying : JsValue,
) -> Unit = "(obj, onplaying) => { obj.onplaying = onplaying; }"

///|
/// [Document.onplaying](https://developer.mozilla.org/en-US/docs/Web/API/Document/onplaying)
impl TDocument with set_onplaying(self : Self, onplaying : EventHandler) -> Unit {
  document_set_onplaying_ffi(TJsValue::to_js(self), TJsValue::to_js(onplaying))
}

///|
extern "js" fn document_onprogress_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onprogress"

///|
/// [Document.onprogress](https://developer.mozilla.org/en-US/docs/Web/API/Document/onprogress)
impl TDocument with onprogress(self : Self) -> EventHandler {
  document_onprogress_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onprogress_ffi(
  obj : JsValue,
  onprogress : JsValue,
) -> Unit = "(obj, onprogress) => { obj.onprogress = onprogress; }"

///|
/// [Document.onprogress](https://developer.mozilla.org/en-US/docs/Web/API/Document/onprogress)
impl TDocument with set_onprogress(self : Self, onprogress : EventHandler) -> Unit {
  document_set_onprogress_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onprogress),
  )
}

///|
extern "js" fn document_onratechange_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onratechange"

///|
/// [Document.onratechange](https://developer.mozilla.org/en-US/docs/Web/API/Document/onratechange)
impl TDocument with onratechange(self : Self) -> EventHandler {
  document_onratechange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onratechange_ffi(
  obj : JsValue,
  onratechange : JsValue,
) -> Unit = "(obj, onratechange) => { obj.onratechange = onratechange; }"

///|
/// [Document.onratechange](https://developer.mozilla.org/en-US/docs/Web/API/Document/onratechange)
impl TDocument with set_onratechange(self : Self, onratechange : EventHandler) -> Unit {
  document_set_onratechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onratechange),
  )
}

///|
extern "js" fn document_onreset_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onreset"

///|
/// [Document.onreset](https://developer.mozilla.org/en-US/docs/Web/API/Document/onreset)
impl TDocument with onreset(self : Self) -> EventHandler {
  document_onreset_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onreset_ffi(
  obj : JsValue,
  onreset : JsValue,
) -> Unit = "(obj, onreset) => { obj.onreset = onreset; }"

///|
/// [Document.onreset](https://developer.mozilla.org/en-US/docs/Web/API/Document/onreset)
impl TDocument with set_onreset(self : Self, onreset : EventHandler) -> Unit {
  document_set_onreset_ffi(TJsValue::to_js(self), TJsValue::to_js(onreset))
}

///|
extern "js" fn document_onresize_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onresize"

///|
/// [Document.onresize](https://developer.mozilla.org/en-US/docs/Web/API/Document/onresize)
impl TDocument with onresize(self : Self) -> EventHandler {
  document_onresize_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onresize_ffi(
  obj : JsValue,
  onresize : JsValue,
) -> Unit = "(obj, onresize) => { obj.onresize = onresize; }"

///|
/// [Document.onresize](https://developer.mozilla.org/en-US/docs/Web/API/Document/onresize)
impl TDocument with set_onresize(self : Self, onresize : EventHandler) -> Unit {
  document_set_onresize_ffi(TJsValue::to_js(self), TJsValue::to_js(onresize))
}

///|
extern "js" fn document_onscroll_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onscroll"

///|
/// [Document.onscroll](https://developer.mozilla.org/en-US/docs/Web/API/Document/onscroll)
impl TDocument with onscroll(self : Self) -> EventHandler {
  document_onscroll_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onscroll_ffi(
  obj : JsValue,
  onscroll : JsValue,
) -> Unit = "(obj, onscroll) => { obj.onscroll = onscroll; }"

///|
/// [Document.onscroll](https://developer.mozilla.org/en-US/docs/Web/API/Document/onscroll)
impl TDocument with set_onscroll(self : Self, onscroll : EventHandler) -> Unit {
  document_set_onscroll_ffi(TJsValue::to_js(self), TJsValue::to_js(onscroll))
}

///|
extern "js" fn document_onscrollend_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onscrollend"

///|
/// [Document.onscrollend](https://developer.mozilla.org/en-US/docs/Web/API/Document/onscrollend)
impl TDocument with onscrollend(self : Self) -> EventHandler {
  document_onscrollend_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onscrollend_ffi(
  obj : JsValue,
  onscrollend : JsValue,
) -> Unit = "(obj, onscrollend) => { obj.onscrollend = onscrollend; }"

///|
/// [Document.onscrollend](https://developer.mozilla.org/en-US/docs/Web/API/Document/onscrollend)
impl TDocument with set_onscrollend(self : Self, onscrollend : EventHandler) -> Unit {
  document_set_onscrollend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onscrollend),
  )
}

///|
extern "js" fn document_onsecuritypolicyviolation_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onsecuritypolicyviolation"

///|
/// [Document.onsecuritypolicyviolation](https://developer.mozilla.org/en-US/docs/Web/API/Document/onsecuritypolicyviolation)
impl TDocument with onsecuritypolicyviolation(self : Self) -> EventHandler {
  document_onsecuritypolicyviolation_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onsecuritypolicyviolation_ffi(
  obj : JsValue,
  onsecuritypolicyviolation : JsValue,
) -> Unit = "(obj, onsecuritypolicyviolation) => { obj.onsecuritypolicyviolation = onsecuritypolicyviolation; }"

///|
/// [Document.onsecuritypolicyviolation](https://developer.mozilla.org/en-US/docs/Web/API/Document/onsecuritypolicyviolation)
impl TDocument with set_onsecuritypolicyviolation(
  self : Self,
  onsecuritypolicyviolation : EventHandler,
) -> Unit {
  document_set_onsecuritypolicyviolation_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onsecuritypolicyviolation),
  )
}

///|
extern "js" fn document_onseeked_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onseeked"

///|
/// [Document.onseeked](https://developer.mozilla.org/en-US/docs/Web/API/Document/onseeked)
impl TDocument with onseeked(self : Self) -> EventHandler {
  document_onseeked_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onseeked_ffi(
  obj : JsValue,
  onseeked : JsValue,
) -> Unit = "(obj, onseeked) => { obj.onseeked = onseeked; }"

///|
/// [Document.onseeked](https://developer.mozilla.org/en-US/docs/Web/API/Document/onseeked)
impl TDocument with set_onseeked(self : Self, onseeked : EventHandler) -> Unit {
  document_set_onseeked_ffi(TJsValue::to_js(self), TJsValue::to_js(onseeked))
}

///|
extern "js" fn document_onseeking_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onseeking"

///|
/// [Document.onseeking](https://developer.mozilla.org/en-US/docs/Web/API/Document/onseeking)
impl TDocument with onseeking(self : Self) -> EventHandler {
  document_onseeking_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onseeking_ffi(
  obj : JsValue,
  onseeking : JsValue,
) -> Unit = "(obj, onseeking) => { obj.onseeking = onseeking; }"

///|
/// [Document.onseeking](https://developer.mozilla.org/en-US/docs/Web/API/Document/onseeking)
impl TDocument with set_onseeking(self : Self, onseeking : EventHandler) -> Unit {
  document_set_onseeking_ffi(TJsValue::to_js(self), TJsValue::to_js(onseeking))
}

///|
extern "js" fn document_onselect_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onselect"

///|
/// [Document.onselect](https://developer.mozilla.org/en-US/docs/Web/API/Document/onselect)
impl TDocument with onselect(self : Self) -> EventHandler {
  document_onselect_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onselect_ffi(
  obj : JsValue,
  onselect : JsValue,
) -> Unit = "(obj, onselect) => { obj.onselect = onselect; }"

///|
/// [Document.onselect](https://developer.mozilla.org/en-US/docs/Web/API/Document/onselect)
impl TDocument with set_onselect(self : Self, onselect : EventHandler) -> Unit {
  document_set_onselect_ffi(TJsValue::to_js(self), TJsValue::to_js(onselect))
}

///|
extern "js" fn document_onslotchange_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onslotchange"

///|
/// [Document.onslotchange](https://developer.mozilla.org/en-US/docs/Web/API/Document/onslotchange)
impl TDocument with onslotchange(self : Self) -> EventHandler {
  document_onslotchange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onslotchange_ffi(
  obj : JsValue,
  onslotchange : JsValue,
) -> Unit = "(obj, onslotchange) => { obj.onslotchange = onslotchange; }"

///|
/// [Document.onslotchange](https://developer.mozilla.org/en-US/docs/Web/API/Document/onslotchange)
impl TDocument with set_onslotchange(self : Self, onslotchange : EventHandler) -> Unit {
  document_set_onslotchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onslotchange),
  )
}

///|
extern "js" fn document_onstalled_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onstalled"

///|
/// [Document.onstalled](https://developer.mozilla.org/en-US/docs/Web/API/Document/onstalled)
impl TDocument with onstalled(self : Self) -> EventHandler {
  document_onstalled_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onstalled_ffi(
  obj : JsValue,
  onstalled : JsValue,
) -> Unit = "(obj, onstalled) => { obj.onstalled = onstalled; }"

///|
/// [Document.onstalled](https://developer.mozilla.org/en-US/docs/Web/API/Document/onstalled)
impl TDocument with set_onstalled(self : Self, onstalled : EventHandler) -> Unit {
  document_set_onstalled_ffi(TJsValue::to_js(self), TJsValue::to_js(onstalled))
}

///|
extern "js" fn document_onsubmit_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onsubmit"

///|
/// [Document.onsubmit](https://developer.mozilla.org/en-US/docs/Web/API/Document/onsubmit)
impl TDocument with onsubmit(self : Self) -> EventHandler {
  document_onsubmit_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onsubmit_ffi(
  obj : JsValue,
  onsubmit : JsValue,
) -> Unit = "(obj, onsubmit) => { obj.onsubmit = onsubmit; }"

///|
/// [Document.onsubmit](https://developer.mozilla.org/en-US/docs/Web/API/Document/onsubmit)
impl TDocument with set_onsubmit(self : Self, onsubmit : EventHandler) -> Unit {
  document_set_onsubmit_ffi(TJsValue::to_js(self), TJsValue::to_js(onsubmit))
}

///|
extern "js" fn document_onsuspend_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onsuspend"

///|
/// [Document.onsuspend](https://developer.mozilla.org/en-US/docs/Web/API/Document/onsuspend)
impl TDocument with onsuspend(self : Self) -> EventHandler {
  document_onsuspend_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onsuspend_ffi(
  obj : JsValue,
  onsuspend : JsValue,
) -> Unit = "(obj, onsuspend) => { obj.onsuspend = onsuspend; }"

///|
/// [Document.onsuspend](https://developer.mozilla.org/en-US/docs/Web/API/Document/onsuspend)
impl TDocument with set_onsuspend(self : Self, onsuspend : EventHandler) -> Unit {
  document_set_onsuspend_ffi(TJsValue::to_js(self), TJsValue::to_js(onsuspend))
}

///|
extern "js" fn document_ontimeupdate_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ontimeupdate"

///|
/// [Document.ontimeupdate](https://developer.mozilla.org/en-US/docs/Web/API/Document/ontimeupdate)
impl TDocument with ontimeupdate(self : Self) -> EventHandler {
  document_ontimeupdate_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_ontimeupdate_ffi(
  obj : JsValue,
  ontimeupdate : JsValue,
) -> Unit = "(obj, ontimeupdate) => { obj.ontimeupdate = ontimeupdate; }"

///|
/// [Document.ontimeupdate](https://developer.mozilla.org/en-US/docs/Web/API/Document/ontimeupdate)
impl TDocument with set_ontimeupdate(self : Self, ontimeupdate : EventHandler) -> Unit {
  document_set_ontimeupdate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ontimeupdate),
  )
}

///|
extern "js" fn document_ontoggle_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ontoggle"

///|
/// [Document.ontoggle](https://developer.mozilla.org/en-US/docs/Web/API/Document/ontoggle)
impl TDocument with ontoggle(self : Self) -> EventHandler {
  document_ontoggle_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_ontoggle_ffi(
  obj : JsValue,
  ontoggle : JsValue,
) -> Unit = "(obj, ontoggle) => { obj.ontoggle = ontoggle; }"

///|
/// [Document.ontoggle](https://developer.mozilla.org/en-US/docs/Web/API/Document/ontoggle)
impl TDocument with set_ontoggle(self : Self, ontoggle : EventHandler) -> Unit {
  document_set_ontoggle_ffi(TJsValue::to_js(self), TJsValue::to_js(ontoggle))
}

///|
extern "js" fn document_onvolumechange_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onvolumechange"

///|
/// [Document.onvolumechange](https://developer.mozilla.org/en-US/docs/Web/API/Document/onvolumechange)
impl TDocument with onvolumechange(self : Self) -> EventHandler {
  document_onvolumechange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onvolumechange_ffi(
  obj : JsValue,
  onvolumechange : JsValue,
) -> Unit = "(obj, onvolumechange) => { obj.onvolumechange = onvolumechange; }"

///|
/// [Document.onvolumechange](https://developer.mozilla.org/en-US/docs/Web/API/Document/onvolumechange)
impl TDocument with set_onvolumechange(
  self : Self,
  onvolumechange : EventHandler,
) -> Unit {
  document_set_onvolumechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onvolumechange),
  )
}

///|
extern "js" fn document_onwaiting_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onwaiting"

///|
/// [Document.onwaiting](https://developer.mozilla.org/en-US/docs/Web/API/Document/onwaiting)
impl TDocument with onwaiting(self : Self) -> EventHandler {
  document_onwaiting_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onwaiting_ffi(
  obj : JsValue,
  onwaiting : JsValue,
) -> Unit = "(obj, onwaiting) => { obj.onwaiting = onwaiting; }"

///|
/// [Document.onwaiting](https://developer.mozilla.org/en-US/docs/Web/API/Document/onwaiting)
impl TDocument with set_onwaiting(self : Self, onwaiting : EventHandler) -> Unit {
  document_set_onwaiting_ffi(TJsValue::to_js(self), TJsValue::to_js(onwaiting))
}

///|
extern "js" fn document_onwebkitanimationend_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onwebkitanimationend"

///|
/// [Document.onwebkitanimationend](https://developer.mozilla.org/en-US/docs/Web/API/Document/onwebkitanimationend)
impl TDocument with onwebkitanimationend(self : Self) -> EventHandler {
  document_onwebkitanimationend_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onwebkitanimationend_ffi(
  obj : JsValue,
  onwebkitanimationend : JsValue,
) -> Unit = "(obj, onwebkitanimationend) => { obj.onwebkitanimationend = onwebkitanimationend; }"

///|
/// [Document.onwebkitanimationend](https://developer.mozilla.org/en-US/docs/Web/API/Document/onwebkitanimationend)
impl TDocument with set_onwebkitanimationend(
  self : Self,
  onwebkitanimationend : EventHandler,
) -> Unit {
  document_set_onwebkitanimationend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onwebkitanimationend),
  )
}

///|
extern "js" fn document_onwebkitanimationiteration_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onwebkitanimationiteration"

///|
/// [Document.onwebkitanimationiteration](https://developer.mozilla.org/en-US/docs/Web/API/Document/onwebkitanimationiteration)
impl TDocument with onwebkitanimationiteration(self : Self) -> EventHandler {
  document_onwebkitanimationiteration_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onwebkitanimationiteration_ffi(
  obj : JsValue,
  onwebkitanimationiteration : JsValue,
) -> Unit = "(obj, onwebkitanimationiteration) => { obj.onwebkitanimationiteration = onwebkitanimationiteration; }"

///|
/// [Document.onwebkitanimationiteration](https://developer.mozilla.org/en-US/docs/Web/API/Document/onwebkitanimationiteration)
impl TDocument with set_onwebkitanimationiteration(
  self : Self,
  onwebkitanimationiteration : EventHandler,
) -> Unit {
  document_set_onwebkitanimationiteration_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onwebkitanimationiteration),
  )
}

///|
extern "js" fn document_onwebkitanimationstart_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onwebkitanimationstart"

///|
/// [Document.onwebkitanimationstart](https://developer.mozilla.org/en-US/docs/Web/API/Document/onwebkitanimationstart)
impl TDocument with onwebkitanimationstart(self : Self) -> EventHandler {
  document_onwebkitanimationstart_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onwebkitanimationstart_ffi(
  obj : JsValue,
  onwebkitanimationstart : JsValue,
) -> Unit = "(obj, onwebkitanimationstart) => { obj.onwebkitanimationstart = onwebkitanimationstart; }"

///|
/// [Document.onwebkitanimationstart](https://developer.mozilla.org/en-US/docs/Web/API/Document/onwebkitanimationstart)
impl TDocument with set_onwebkitanimationstart(
  self : Self,
  onwebkitanimationstart : EventHandler,
) -> Unit {
  document_set_onwebkitanimationstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onwebkitanimationstart),
  )
}

///|
extern "js" fn document_onwebkittransitionend_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onwebkittransitionend"

///|
/// [Document.onwebkittransitionend](https://developer.mozilla.org/en-US/docs/Web/API/Document/onwebkittransitionend)
impl TDocument with onwebkittransitionend(self : Self) -> EventHandler {
  document_onwebkittransitionend_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onwebkittransitionend_ffi(
  obj : JsValue,
  onwebkittransitionend : JsValue,
) -> Unit = "(obj, onwebkittransitionend) => { obj.onwebkittransitionend = onwebkittransitionend; }"

///|
/// [Document.onwebkittransitionend](https://developer.mozilla.org/en-US/docs/Web/API/Document/onwebkittransitionend)
impl TDocument with set_onwebkittransitionend(
  self : Self,
  onwebkittransitionend : EventHandler,
) -> Unit {
  document_set_onwebkittransitionend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onwebkittransitionend),
  )
}

///|
extern "js" fn document_onwheel_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onwheel"

///|
/// [Document.onwheel](https://developer.mozilla.org/en-US/docs/Web/API/Document/onwheel)
impl TDocument with onwheel(self : Self) -> EventHandler {
  document_onwheel_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_set_onwheel_ffi(
  obj : JsValue,
  onwheel : JsValue,
) -> Unit = "(obj, onwheel) => { obj.onwheel = onwheel; }"

///|
/// [Document.onwheel](https://developer.mozilla.org/en-US/docs/Web/API/Document/onwheel)
impl TDocument with set_onwheel(self : Self, onwheel : EventHandler) -> Unit {
  document_set_onwheel_ffi(TJsValue::to_js(self), TJsValue::to_js(onwheel))
}

///|
extern "js" fn document_get_box_quads_ffi(
  obj : JsValue,
  options : JsValue,
) -> Array[DOMQuad] = "(obj, options) => obj.getBoxQuads(options)"

///|
/// [Document.getBoxQuads](https://developer.mozilla.org/en-US/docs/Web/API/Document/getBoxQuads)
impl TDocument with get_box_quads(
  self : Self,
  options? : BoxQuadOptions = BoxQuadOptions::empty(),
) -> Array[DOMQuad] {
  document_get_box_quads_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
extern "js" fn document_convert_quad_from_node_ffi(
  obj : JsValue,
  quad : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMQuad = "(obj, quad, from, options) => obj.convertQuadFromNode(quad, from, options)"

///|
/// [Document.convertQuadFromNode](https://developer.mozilla.org/en-US/docs/Web/API/Document/convertQuadFromNode)
impl TDocument with convert_quad_from_node(
  self : Self,
  quad : DOMQuadInit,
  from : GeometryNode,
  options? : ConvertCoordinateOptions = ConvertCoordinateOptions::empty(),
) -> DOMQuad {
  document_convert_quad_from_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(quad),
    TJsValue::to_js(from),
    TJsValue::to_js(options),
  )
}

///|
extern "js" fn document_convert_rect_from_node_ffi(
  obj : JsValue,
  rect : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMQuad = "(obj, rect, from, options) => obj.convertRectFromNode(rect, from, options)"

///|
/// [Document.convertRectFromNode](https://developer.mozilla.org/en-US/docs/Web/API/Document/convertRectFromNode)
impl TDocument with convert_rect_from_node(
  self : Self,
  rect : &TDOMRectReadOnly,
  from : GeometryNode,
  options? : ConvertCoordinateOptions = ConvertCoordinateOptions::empty(),
) -> DOMQuad {
  document_convert_rect_from_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(rect),
    TJsValue::to_js(from),
    TJsValue::to_js(options),
  )
}

///|
extern "js" fn document_convert_point_from_node_ffi(
  obj : JsValue,
  point : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMPoint = "(obj, point, from, options) => obj.convertPointFromNode(point, from, options)"

///|
/// [Document.convertPointFromNode](https://developer.mozilla.org/en-US/docs/Web/API/Document/convertPointFromNode)
impl TDocument with convert_point_from_node(
  self : Self,
  point : DOMPointInit,
  from : GeometryNode,
  options? : ConvertCoordinateOptions = ConvertCoordinateOptions::empty(),
) -> DOMPoint {
  document_convert_point_from_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(point),
    TJsValue::to_js(from),
    TJsValue::to_js(options),
  )
}
