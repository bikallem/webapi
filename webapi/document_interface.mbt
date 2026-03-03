// Do not edit. This file is generated.
// MoonBit type: Document
// Specifications: selection-api.idl, dom.idl, cssom-view.idl, SVG.idl, fullscreen.idl, web-animations.idl, html.idl

///|
/// [Document](https://developer.mozilla.org/en-US/docs/Web/API/Document)
#external
pub type Document

///|
pub impl TJsValue for Document with to_js(self : Document) -> JsValue = "%identity"

///|
pub impl FromJsAny for Document with from_js_any(value : JsAny) -> Document = "%identity"

///|
pub fn[T : TDocument] Document::into(self : Document) -> T = "%identity"

///|
pub impl TDocument for Document

///|
pub impl TNode for Document

///|
pub impl TEventTarget for Document

///|
pub fn Document::new() -> Document {
  document_new_ffi()
}

///|
pub(open) trait TDocumentCreateElementOptions: TJsValue {}

///|
pub impl TDocumentCreateElementOptions for String

///|
pub impl TDocumentCreateElementOptions for ElementCreationOptions

///|
pub(open) trait TDocumentCreateElementNSOptions: TJsValue {}

///|
pub impl TDocumentCreateElementNSOptions for String

///|
pub impl TDocumentCreateElementNSOptions for ElementCreationOptions

///|
pub(open) trait TDocumentImportNodeOptions: TJsValue {}

///|
pub impl TDocumentImportNodeOptions for Bool

///|
pub impl TDocumentImportNodeOptions for ImportNodeOptions

///|
pub(open) trait TDocumentParseHTMLUnsafeHtml: TJsValue {}

///|
pub impl TDocumentParseHTMLUnsafeHtml for TrustedHTML

///|
pub impl TDocumentParseHTMLUnsafeHtml for String

///|
pub(open) trait TDocumentWriteText: TJsValue {}

///|
pub impl TDocumentWriteText for TrustedHTML

///|
pub impl TDocumentWriteText for String

///|
pub(open) trait TDocumentWritelnText: TJsValue {}

///|
pub impl TDocumentWritelnText for TrustedHTML

///|
pub impl TDocumentWritelnText for String

///|
pub(open) trait TDocumentPrependNodes: TJsValue {}

///|
pub impl TDocumentPrependNodes for Node

///|
pub impl TDocumentPrependNodes for String

///|
pub(open) trait TDocumentAppendNodes: TJsValue {}

///|
pub impl TDocumentAppendNodes for Node

///|
pub impl TDocumentAppendNodes for String

///|
pub(open) trait TDocumentReplaceChildrenNodes: TJsValue {}

///|
pub impl TDocumentReplaceChildrenNodes for Node

///|
pub impl TDocumentReplaceChildrenNodes for String

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
    filter? : (Node) -> UInt,
  ) -> NodeIterator = _
  create_tree_walker(
    self : Self,
    root : &TNode,
    what_to_show? : UInt,
    filter? : (Node) -> UInt,
  ) -> TreeWalker = _
  location(self : Self) -> Location = _
  domain(self : Self) -> String = _
  set_domain(self : Self, domain : String) -> Unit = _
  referrer(self : Self) -> String = _
  cookie(self : Self) -> String = _
  set_cookie(self : Self, cookie : String) -> Unit = _
  last_modified(self : Self) -> String = _
  ready_state(self : Self) -> DocumentReadyState = _
  get(self : Self, name : String) -> JsValue? = _
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
  open_window(self : Self, url : String, name : String, features : String) -> WindowProxy? = _
  close(self : Self) -> Unit = _
  write(self : Self, text : Array[&TDocumentWriteText]) -> Unit = _
  writeln(self : Self, text : Array[&TDocumentWritelnText]) -> Unit = _
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
  set_onreadystatechange(self : Self, onreadystatechange : (Event) -> JsValue) -> Unit = _
  onvisibilitychange(self : Self) -> EventHandler = _
  set_onvisibilitychange(self : Self, onvisibilitychange : (Event) -> JsValue) -> Unit = _
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
  element_from_point_opt(self : Self, x : Double, y : Double) -> Element? = _
  elements_from_point(self : Self, x : Double, y : Double) -> Array[Element] = _
  caret_position_from_point_opt(
    self : Self,
    x : Double,
    y : Double,
    options? : CaretPositionFromPointOptions,
  ) -> CaretPosition? = _
  scrolling_element(self : Self) -> Element = _
  fullscreen_enabled(self : Self) -> Bool = _
  fullscreen(self : Self) -> Bool = _
  exit_fullscreen(self : Self) -> JsPromise[JsValue] = _
  onfullscreenchange(self : Self) -> EventHandler = _
  set_onfullscreenchange(self : Self, onfullscreenchange : (Event) -> JsValue) -> Unit = _
  onfullscreenerror(self : Self) -> EventHandler = _
  set_onfullscreenerror(self : Self, onfullscreenerror : (Event) -> JsValue) -> Unit = _
  get_selection_opt(self : Self) -> Selection? = _
  timeline(self : Self) -> DocumentTimeline = _
  get_element_by_id_opt(self : Self, element_id : String) -> Element? = _
  custom_element_registry(self : Self) -> CustomElementRegistry = _
  active_element(self : Self) -> Element = _
  style_sheets(self : Self) -> StyleSheetList = _
  adopted_style_sheets(self : Self) -> Array[CSSStyleSheet] = _
  set_adopted_style_sheets(
    self : Self,
    adopted_style_sheets : Array[CSSStyleSheet],
  ) -> Unit = _
  fullscreen_element(self : Self) -> Element = _
  get_animations(self : Self) -> Array[Animation] = _
  children(self : Self) -> HTMLCollection = _
  first_element_child(self : Self) -> Element = _
  last_element_child(self : Self) -> Element = _
  child_element_count(self : Self) -> UInt = _
  prepend(self : Self, nodes : Array[&TDocumentPrependNodes]) -> Unit = _
  append(self : Self, nodes : Array[&TDocumentAppendNodes]) -> Unit = _
  replace_children(self : Self, nodes : Array[&TDocumentReplaceChildrenNodes]) -> Unit = _
  move_before(self : Self, node : &TNode, child : &TNode) -> Unit = _
  query_selector_opt(self : Self, selectors : String) -> Element? = _
  query_selector_all(self : Self, selectors : String) -> NodeList = _
  create_expression(
    self : Self,
    expression : String,
    resolver? : (String) -> String,
  ) -> XPathExpression = _
  create_ns_resolver(self : Self, node_resolver : &TNode) -> Node = _
  evaluate(
    self : Self,
    expression : String,
    context_node : &TNode,
    resolver? : (String) -> String,
    type_? : UInt,
    result? : &TXPathResult,
  ) -> XPathResult = _
  onabort(self : Self) -> EventHandler = _
  set_onabort(self : Self, onabort : (Event) -> JsValue) -> Unit = _
  onauxclick(self : Self) -> EventHandler = _
  set_onauxclick(self : Self, onauxclick : (Event) -> JsValue) -> Unit = _
  onbeforeinput(self : Self) -> EventHandler = _
  set_onbeforeinput(self : Self, onbeforeinput : (Event) -> JsValue) -> Unit = _
  onbeforematch(self : Self) -> EventHandler = _
  set_onbeforematch(self : Self, onbeforematch : (Event) -> JsValue) -> Unit = _
  onbeforetoggle(self : Self) -> EventHandler = _
  set_onbeforetoggle(self : Self, onbeforetoggle : (Event) -> JsValue) -> Unit = _
  onblur(self : Self) -> EventHandler = _
  set_onblur(self : Self, onblur : (Event) -> JsValue) -> Unit = _
  oncancel(self : Self) -> EventHandler = _
  set_oncancel(self : Self, oncancel : (Event) -> JsValue) -> Unit = _
  oncanplay(self : Self) -> EventHandler = _
  set_oncanplay(self : Self, oncanplay : (Event) -> JsValue) -> Unit = _
  oncanplaythrough(self : Self) -> EventHandler = _
  set_oncanplaythrough(self : Self, oncanplaythrough : (Event) -> JsValue) -> Unit = _
  onchange(self : Self) -> EventHandler = _
  set_onchange(self : Self, onchange : (Event) -> JsValue) -> Unit = _
  onclick(self : Self) -> EventHandler = _
  set_onclick(self : Self, onclick : (Event) -> JsValue) -> Unit = _
  onclose(self : Self) -> EventHandler = _
  set_onclose(self : Self, onclose : (Event) -> JsValue) -> Unit = _
  oncommand(self : Self) -> EventHandler = _
  set_oncommand(self : Self, oncommand : (Event) -> JsValue) -> Unit = _
  oncontextlost(self : Self) -> EventHandler = _
  set_oncontextlost(self : Self, oncontextlost : (Event) -> JsValue) -> Unit = _
  oncontextmenu(self : Self) -> EventHandler = _
  set_oncontextmenu(self : Self, oncontextmenu : (Event) -> JsValue) -> Unit = _
  oncontextrestored(self : Self) -> EventHandler = _
  set_oncontextrestored(self : Self, oncontextrestored : (Event) -> JsValue) -> Unit = _
  oncopy(self : Self) -> EventHandler = _
  set_oncopy(self : Self, oncopy : (Event) -> JsValue) -> Unit = _
  oncuechange(self : Self) -> EventHandler = _
  set_oncuechange(self : Self, oncuechange : (Event) -> JsValue) -> Unit = _
  oncut(self : Self) -> EventHandler = _
  set_oncut(self : Self, oncut : (Event) -> JsValue) -> Unit = _
  ondblclick(self : Self) -> EventHandler = _
  set_ondblclick(self : Self, ondblclick : (Event) -> JsValue) -> Unit = _
  ondrag(self : Self) -> EventHandler = _
  set_ondrag(self : Self, ondrag : (Event) -> JsValue) -> Unit = _
  ondragend(self : Self) -> EventHandler = _
  set_ondragend(self : Self, ondragend : (Event) -> JsValue) -> Unit = _
  ondragenter(self : Self) -> EventHandler = _
  set_ondragenter(self : Self, ondragenter : (Event) -> JsValue) -> Unit = _
  ondragleave(self : Self) -> EventHandler = _
  set_ondragleave(self : Self, ondragleave : (Event) -> JsValue) -> Unit = _
  ondragover(self : Self) -> EventHandler = _
  set_ondragover(self : Self, ondragover : (Event) -> JsValue) -> Unit = _
  ondragstart(self : Self) -> EventHandler = _
  set_ondragstart(self : Self, ondragstart : (Event) -> JsValue) -> Unit = _
  ondrop(self : Self) -> EventHandler = _
  set_ondrop(self : Self, ondrop : (Event) -> JsValue) -> Unit = _
  ondurationchange(self : Self) -> EventHandler = _
  set_ondurationchange(self : Self, ondurationchange : (Event) -> JsValue) -> Unit = _
  onemptied(self : Self) -> EventHandler = _
  set_onemptied(self : Self, onemptied : (Event) -> JsValue) -> Unit = _
  onended(self : Self) -> EventHandler = _
  set_onended(self : Self, onended : (Event) -> JsValue) -> Unit = _
  onerror(self : Self) -> OnErrorEventHandler = _
  set_onerror(
    self : Self,
    onerror : (OnErrorEventHandlerNonNullEvent, String, UInt, UInt, JsValue) -> JsValue,
  ) -> Unit = _
  onfocus(self : Self) -> EventHandler = _
  set_onfocus(self : Self, onfocus : (Event) -> JsValue) -> Unit = _
  onformdata(self : Self) -> EventHandler = _
  set_onformdata(self : Self, onformdata : (Event) -> JsValue) -> Unit = _
  oninput(self : Self) -> EventHandler = _
  set_oninput(self : Self, oninput : (Event) -> JsValue) -> Unit = _
  oninvalid(self : Self) -> EventHandler = _
  set_oninvalid(self : Self, oninvalid : (Event) -> JsValue) -> Unit = _
  onkeydown(self : Self) -> EventHandler = _
  set_onkeydown(self : Self, onkeydown : (Event) -> JsValue) -> Unit = _
  onkeypress(self : Self) -> EventHandler = _
  set_onkeypress(self : Self, onkeypress : (Event) -> JsValue) -> Unit = _
  onkeyup(self : Self) -> EventHandler = _
  set_onkeyup(self : Self, onkeyup : (Event) -> JsValue) -> Unit = _
  onload(self : Self) -> EventHandler = _
  set_onload(self : Self, onload : (Event) -> JsValue) -> Unit = _
  onloadeddata(self : Self) -> EventHandler = _
  set_onloadeddata(self : Self, onloadeddata : (Event) -> JsValue) -> Unit = _
  onloadedmetadata(self : Self) -> EventHandler = _
  set_onloadedmetadata(self : Self, onloadedmetadata : (Event) -> JsValue) -> Unit = _
  onloadstart(self : Self) -> EventHandler = _
  set_onloadstart(self : Self, onloadstart : (Event) -> JsValue) -> Unit = _
  onmousedown(self : Self) -> EventHandler = _
  set_onmousedown(self : Self, onmousedown : (Event) -> JsValue) -> Unit = _
  onmouseenter(self : Self) -> EventHandler = _
  set_onmouseenter(self : Self, onmouseenter : (Event) -> JsValue) -> Unit = _
  onmouseleave(self : Self) -> EventHandler = _
  set_onmouseleave(self : Self, onmouseleave : (Event) -> JsValue) -> Unit = _
  onmousemove(self : Self) -> EventHandler = _
  set_onmousemove(self : Self, onmousemove : (Event) -> JsValue) -> Unit = _
  onmouseout(self : Self) -> EventHandler = _
  set_onmouseout(self : Self, onmouseout : (Event) -> JsValue) -> Unit = _
  onmouseover(self : Self) -> EventHandler = _
  set_onmouseover(self : Self, onmouseover : (Event) -> JsValue) -> Unit = _
  onmouseup(self : Self) -> EventHandler = _
  set_onmouseup(self : Self, onmouseup : (Event) -> JsValue) -> Unit = _
  onpaste(self : Self) -> EventHandler = _
  set_onpaste(self : Self, onpaste : (Event) -> JsValue) -> Unit = _
  onpause(self : Self) -> EventHandler = _
  set_onpause(self : Self, onpause : (Event) -> JsValue) -> Unit = _
  onplay(self : Self) -> EventHandler = _
  set_onplay(self : Self, onplay : (Event) -> JsValue) -> Unit = _
  onplaying(self : Self) -> EventHandler = _
  set_onplaying(self : Self, onplaying : (Event) -> JsValue) -> Unit = _
  onprogress(self : Self) -> EventHandler = _
  set_onprogress(self : Self, onprogress : (Event) -> JsValue) -> Unit = _
  onratechange(self : Self) -> EventHandler = _
  set_onratechange(self : Self, onratechange : (Event) -> JsValue) -> Unit = _
  onreset(self : Self) -> EventHandler = _
  set_onreset(self : Self, onreset : (Event) -> JsValue) -> Unit = _
  onresize(self : Self) -> EventHandler = _
  set_onresize(self : Self, onresize : (Event) -> JsValue) -> Unit = _
  onscroll(self : Self) -> EventHandler = _
  set_onscroll(self : Self, onscroll : (Event) -> JsValue) -> Unit = _
  onscrollend(self : Self) -> EventHandler = _
  set_onscrollend(self : Self, onscrollend : (Event) -> JsValue) -> Unit = _
  onsecuritypolicyviolation(self : Self) -> EventHandler = _
  set_onsecuritypolicyviolation(
    self : Self,
    onsecuritypolicyviolation : (Event) -> JsValue,
  ) -> Unit = _
  onseeked(self : Self) -> EventHandler = _
  set_onseeked(self : Self, onseeked : (Event) -> JsValue) -> Unit = _
  onseeking(self : Self) -> EventHandler = _
  set_onseeking(self : Self, onseeking : (Event) -> JsValue) -> Unit = _
  onselect(self : Self) -> EventHandler = _
  set_onselect(self : Self, onselect : (Event) -> JsValue) -> Unit = _
  onslotchange(self : Self) -> EventHandler = _
  set_onslotchange(self : Self, onslotchange : (Event) -> JsValue) -> Unit = _
  onstalled(self : Self) -> EventHandler = _
  set_onstalled(self : Self, onstalled : (Event) -> JsValue) -> Unit = _
  onsubmit(self : Self) -> EventHandler = _
  set_onsubmit(self : Self, onsubmit : (Event) -> JsValue) -> Unit = _
  onsuspend(self : Self) -> EventHandler = _
  set_onsuspend(self : Self, onsuspend : (Event) -> JsValue) -> Unit = _
  ontimeupdate(self : Self) -> EventHandler = _
  set_ontimeupdate(self : Self, ontimeupdate : (Event) -> JsValue) -> Unit = _
  ontoggle(self : Self) -> EventHandler = _
  set_ontoggle(self : Self, ontoggle : (Event) -> JsValue) -> Unit = _
  onvolumechange(self : Self) -> EventHandler = _
  set_onvolumechange(self : Self, onvolumechange : (Event) -> JsValue) -> Unit = _
  onwaiting(self : Self) -> EventHandler = _
  set_onwaiting(self : Self, onwaiting : (Event) -> JsValue) -> Unit = _
  onwebkitanimationend(self : Self) -> EventHandler = _
  set_onwebkitanimationend(
    self : Self,
    onwebkitanimationend : (Event) -> JsValue,
  ) -> Unit = _
  onwebkitanimationiteration(self : Self) -> EventHandler = _
  set_onwebkitanimationiteration(
    self : Self,
    onwebkitanimationiteration : (Event) -> JsValue,
  ) -> Unit = _
  onwebkitanimationstart(self : Self) -> EventHandler = _
  set_onwebkitanimationstart(
    self : Self,
    onwebkitanimationstart : (Event) -> JsValue,
  ) -> Unit = _
  onwebkittransitionend(self : Self) -> EventHandler = _
  set_onwebkittransitionend(
    self : Self,
    onwebkittransitionend : (Event) -> JsValue,
  ) -> Unit = _
  onwheel(self : Self) -> EventHandler = _
  set_onwheel(self : Self, onwheel : (Event) -> JsValue) -> Unit = _
  ontouchstart(self : Self) -> EventHandler = _
  set_ontouchstart(self : Self, ontouchstart : (Event) -> JsValue) -> Unit = _
  ontouchend(self : Self) -> EventHandler = _
  set_ontouchend(self : Self, ontouchend : (Event) -> JsValue) -> Unit = _
  ontouchmove(self : Self) -> EventHandler = _
  set_ontouchmove(self : Self, ontouchmove : (Event) -> JsValue) -> Unit = _
  ontouchcancel(self : Self) -> EventHandler = _
  set_ontouchcancel(self : Self, ontouchcancel : (Event) -> JsValue) -> Unit = _
  onpointerover(self : Self) -> EventHandler = _
  set_onpointerover(self : Self, onpointerover : (Event) -> JsValue) -> Unit = _
  onpointerenter(self : Self) -> EventHandler = _
  set_onpointerenter(self : Self, onpointerenter : (Event) -> JsValue) -> Unit = _
  onpointerdown(self : Self) -> EventHandler = _
  set_onpointerdown(self : Self, onpointerdown : (Event) -> JsValue) -> Unit = _
  onpointermove(self : Self) -> EventHandler = _
  set_onpointermove(self : Self, onpointermove : (Event) -> JsValue) -> Unit = _
  onpointerrawupdate(self : Self) -> EventHandler = _
  set_onpointerrawupdate(self : Self, onpointerrawupdate : (Event) -> JsValue) -> Unit = _
  onpointerup(self : Self) -> EventHandler = _
  set_onpointerup(self : Self, onpointerup : (Event) -> JsValue) -> Unit = _
  onpointercancel(self : Self) -> EventHandler = _
  set_onpointercancel(self : Self, onpointercancel : (Event) -> JsValue) -> Unit = _
  onpointerout(self : Self) -> EventHandler = _
  set_onpointerout(self : Self, onpointerout : (Event) -> JsValue) -> Unit = _
  onpointerleave(self : Self) -> EventHandler = _
  set_onpointerleave(self : Self, onpointerleave : (Event) -> JsValue) -> Unit = _
  ongotpointercapture(self : Self) -> EventHandler = _
  set_ongotpointercapture(self : Self, ongotpointercapture : (Event) -> JsValue) -> Unit = _
  onlostpointercapture(self : Self) -> EventHandler = _
  set_onlostpointercapture(
    self : Self,
    onlostpointercapture : (Event) -> JsValue,
  ) -> Unit = _
  onselectstart(self : Self) -> EventHandler = _
  set_onselectstart(self : Self, onselectstart : (Event) -> JsValue) -> Unit = _
  onselectionchange(self : Self) -> EventHandler = _
  set_onselectionchange(self : Self, onselectionchange : (Event) -> JsValue) -> Unit = _
  get_box_quads(self : Self, options? : BoxQuadOptions) -> Array[DOMQuad] = _
  convert_quad_from_node(
    self : Self,
    quad : DOMQuadInit,
    from : &TGeometryNode,
    options? : ConvertCoordinateOptions,
  ) -> DOMQuad = _
  convert_rect_from_node(
    self : Self,
    rect : &TDOMRectReadOnly,
    from : &TGeometryNode,
    options? : ConvertCoordinateOptions,
  ) -> DOMQuad = _
  convert_point_from_node(
    self : Self,
    point : DOMPointInit,
    from : &TGeometryNode,
    options? : ConvertCoordinateOptions,
  ) -> DOMPoint = _
  element_from_point(self : Self, x : Double, y : Double) -> Element = _
  caret_position_from_point(
    self : Self,
    x : Double,
    y : Double,
    options? : CaretPositionFromPointOptions,
  ) -> CaretPosition = _
  get_selection(self : Self) -> Selection = _
  get_element_by_id(self : Self, element_id : String) -> Element = _
  query_selector(self : Self, selectors : String) -> Element = _
}

///|
/// [Document.rootElement](https://developer.mozilla.org/en-US/docs/Web/API/Document/rootElement)
impl TDocument with root_element(self : Self) -> SVGSVGElement {
  document_root_element_ffi(TJsValue::to_js(self))
}

///|
/// [Document.implementation](https://developer.mozilla.org/en-US/docs/Web/API/Document/implementation)
impl TDocument with implementation(self : Self) -> DOMImplementation {
  document_implementation_ffi(TJsValue::to_js(self))
}

///|
/// [Document.URL](https://developer.mozilla.org/en-US/docs/Web/API/Document/URL)
impl TDocument with url(self : Self) -> String {
  document_url_ffi(TJsValue::to_js(self))
}

///|
/// [Document.documentURI](https://developer.mozilla.org/en-US/docs/Web/API/Document/documentURI)
impl TDocument with document_uri(self : Self) -> String {
  document_document_uri_ffi(TJsValue::to_js(self))
}

///|
/// [Document.compatMode](https://developer.mozilla.org/en-US/docs/Web/API/Document/compatMode)
impl TDocument with compat_mode(self : Self) -> String {
  document_compat_mode_ffi(TJsValue::to_js(self))
}

///|
/// [Document.characterSet](https://developer.mozilla.org/en-US/docs/Web/API/Document/characterSet)
impl TDocument with character_set(self : Self) -> String {
  document_character_set_ffi(TJsValue::to_js(self))
}

///|
/// [Document.charset](https://developer.mozilla.org/en-US/docs/Web/API/Document/charset)
impl TDocument with charset(self : Self) -> String {
  document_charset_ffi(TJsValue::to_js(self))
}

///|
/// [Document.inputEncoding](https://developer.mozilla.org/en-US/docs/Web/API/Document/inputEncoding)
impl TDocument with input_encoding(self : Self) -> String {
  document_input_encoding_ffi(TJsValue::to_js(self))
}

///|
/// [Document.contentType](https://developer.mozilla.org/en-US/docs/Web/API/Document/contentType)
impl TDocument with content_type(self : Self) -> String {
  document_content_type_ffi(TJsValue::to_js(self))
}

///|
/// [Document.doctype](https://developer.mozilla.org/en-US/docs/Web/API/Document/doctype)
impl TDocument with doctype(self : Self) -> DocumentType {
  document_doctype_ffi(TJsValue::to_js(self))
}

///|
/// [Document.documentElement](https://developer.mozilla.org/en-US/docs/Web/API/Document/documentElement)
impl TDocument with document_element(self : Self) -> Element {
  document_document_element_ffi(TJsValue::to_js(self))
}

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
/// [Document.createElement](https://developer.mozilla.org/en-US/docs/Web/API/Document/createElement)
impl TDocument with create_element(
  self : Self,
  local_name : String,
  options? : &TDocumentCreateElementOptions,
) -> Element {
  document_create_element_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(local_name),
    match options {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
  )
}

///|
/// [Document.createElementNS](https://developer.mozilla.org/en-US/docs/Web/API/Document/createElementNS)
impl TDocument with create_element_ns(
  self : Self,
  namespace_ : String,
  qualified_name : String,
  options? : &TDocumentCreateElementNSOptions,
) -> Element {
  document_create_element_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
    TJsValue::to_js(qualified_name),
    match options {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
  )
}

///|
/// [Document.createDocumentFragment](https://developer.mozilla.org/en-US/docs/Web/API/Document/createDocumentFragment)
impl TDocument with create_document_fragment(self : Self) -> DocumentFragment {
  document_create_document_fragment_ffi(TJsValue::to_js(self))
}

///|
/// [Document.createTextNode](https://developer.mozilla.org/en-US/docs/Web/API/Document/createTextNode)
impl TDocument with create_text_node(self : Self, data : String) -> Text {
  document_create_text_node_ffi(TJsValue::to_js(self), TJsValue::to_js(data))
}

///|
/// [Document.createCDATASection](https://developer.mozilla.org/en-US/docs/Web/API/Document/createCDATASection)
impl TDocument with create_cdata_section(self : Self, data : String) -> CDATASection {
  document_create_cdata_section_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(data),
  )
}

///|
/// [Document.createComment](https://developer.mozilla.org/en-US/docs/Web/API/Document/createComment)
impl TDocument with create_comment(self : Self, data : String) -> Comment {
  document_create_comment_ffi(TJsValue::to_js(self), TJsValue::to_js(data))
}

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
/// [Document.importNode](https://developer.mozilla.org/en-US/docs/Web/API/Document/importNode)
impl TDocument with import_node(
  self : Self,
  node : &TNode,
  options? : &TDocumentImportNodeOptions,
) -> Node {
  document_import_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    match options {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
  )
}

///|
/// [Document.adoptNode](https://developer.mozilla.org/en-US/docs/Web/API/Document/adoptNode)
impl TDocument with adopt_node(self : Self, node : &TNode) -> Node {
  document_adopt_node_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

///|
/// [Document.createAttribute](https://developer.mozilla.org/en-US/docs/Web/API/Document/createAttribute)
impl TDocument with create_attribute(self : Self, local_name : String) -> Attr {
  document_create_attribute_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(local_name),
  )
}

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
/// [Document.createEvent](https://developer.mozilla.org/en-US/docs/Web/API/Document/createEvent)
impl TDocument with create_event(self : Self, interface : String) -> Event {
  document_create_event_ffi(TJsValue::to_js(self), TJsValue::to_js(interface))
}

///|
/// [Document.createRange](https://developer.mozilla.org/en-US/docs/Web/API/Document/createRange)
impl TDocument with create_range(self : Self) -> Range {
  document_create_range_ffi(TJsValue::to_js(self))
}

///|
/// [Document.createNodeIterator](https://developer.mozilla.org/en-US/docs/Web/API/Document/createNodeIterator)
impl TDocument with create_node_iterator(
  self : Self,
  root : &TNode,
  what_to_show? : UInt = (0xFFFFFFFF : UInt),
  filter? : (Node) -> UInt = JsValue::null(),
) -> NodeIterator {
  document_create_node_iterator_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(root),
    TJsValue::to_js(what_to_show),
    TJsValue::to_js(node_filter_ffi(filter)),
  )
}

///|
/// [Document.createTreeWalker](https://developer.mozilla.org/en-US/docs/Web/API/Document/createTreeWalker)
impl TDocument with create_tree_walker(
  self : Self,
  root : &TNode,
  what_to_show? : UInt = (0xFFFFFFFF : UInt),
  filter? : (Node) -> UInt = JsValue::null(),
) -> TreeWalker {
  document_create_tree_walker_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(root),
    TJsValue::to_js(what_to_show),
    TJsValue::to_js(node_filter_ffi(filter)),
  )
}

///|
/// [Document.parseHTMLUnsafe](https://developer.mozilla.org/en-US/docs/Web/API/Document/parseHTMLUnsafe)
pub fn Document::parse_html_unsafe(
  html : &TDocumentParseHTMLUnsafeHtml,
) -> Document {
  document_parse_html_unsafe_ffi(html.to_js())
}

///|
/// [Document.location](https://developer.mozilla.org/en-US/docs/Web/API/Document/location)
impl TDocument with location(self : Self) -> Location {
  document_location_ffi(TJsValue::to_js(self))
}

///|
/// [Document.domain](https://developer.mozilla.org/en-US/docs/Web/API/Document/domain)
impl TDocument with domain(self : Self) -> String {
  document_domain_ffi(TJsValue::to_js(self))
}

///|
/// [Document.domain](https://developer.mozilla.org/en-US/docs/Web/API/Document/domain)
impl TDocument with set_domain(self : Self, domain : String) -> Unit {
  document_set_domain_ffi(TJsValue::to_js(self), TJsValue::to_js(domain))
}

///|
/// [Document.referrer](https://developer.mozilla.org/en-US/docs/Web/API/Document/referrer)
impl TDocument with referrer(self : Self) -> String {
  document_referrer_ffi(TJsValue::to_js(self))
}

///|
/// [Document.cookie](https://developer.mozilla.org/en-US/docs/Web/API/Document/cookie)
impl TDocument with cookie(self : Self) -> String {
  document_cookie_ffi(TJsValue::to_js(self))
}

///|
/// [Document.cookie](https://developer.mozilla.org/en-US/docs/Web/API/Document/cookie)
impl TDocument with set_cookie(self : Self, cookie : String) -> Unit {
  document_set_cookie_ffi(TJsValue::to_js(self), TJsValue::to_js(cookie))
}

///|
/// [Document.lastModified](https://developer.mozilla.org/en-US/docs/Web/API/Document/lastModified)
impl TDocument with last_modified(self : Self) -> String {
  document_last_modified_ffi(TJsValue::to_js(self))
}

///|
/// [Document.readyState](https://developer.mozilla.org/en-US/docs/Web/API/Document/readyState)
impl TDocument with ready_state(self : Self) -> DocumentReadyState {
  document_ready_state_ffi(TJsValue::to_js(self))
}

///|
/// [Document.get](https://developer.mozilla.org/en-US/docs/Web/API/Document/get)
impl TDocument with get(self : Self, name : String) -> JsValue? {
  document_get_ffi(TJsValue::to_js(self), TJsValue::to_js(name)).to_option()
}

///|
/// [Document.title](https://developer.mozilla.org/en-US/docs/Web/API/Document/title)
impl TDocument with title(self : Self) -> String {
  document_title_ffi(TJsValue::to_js(self))
}

///|
/// [Document.title](https://developer.mozilla.org/en-US/docs/Web/API/Document/title)
impl TDocument with set_title(self : Self, title : String) -> Unit {
  document_set_title_ffi(TJsValue::to_js(self), TJsValue::to_js(title))
}

///|
/// [Document.dir](https://developer.mozilla.org/en-US/docs/Web/API/Document/dir)
impl TDocument with dir(self : Self) -> String {
  document_dir_ffi(TJsValue::to_js(self))
}

///|
/// [Document.dir](https://developer.mozilla.org/en-US/docs/Web/API/Document/dir)
impl TDocument with set_dir(self : Self, dir : String) -> Unit {
  document_set_dir_ffi(TJsValue::to_js(self), TJsValue::to_js(dir))
}

///|
/// [Document.body](https://developer.mozilla.org/en-US/docs/Web/API/Document/body)
impl TDocument with body(self : Self) -> HTMLElement {
  document_body_ffi(TJsValue::to_js(self))
}

///|
/// [Document.body](https://developer.mozilla.org/en-US/docs/Web/API/Document/body)
impl TDocument with set_body(self : Self, body : &THTMLElement) -> Unit {
  document_set_body_ffi(TJsValue::to_js(self), TJsValue::to_js(body))
}

///|
/// [Document.head](https://developer.mozilla.org/en-US/docs/Web/API/Document/head)
impl TDocument with head(self : Self) -> HTMLHeadElement {
  document_head_ffi(TJsValue::to_js(self))
}

///|
/// [Document.images](https://developer.mozilla.org/en-US/docs/Web/API/Document/images)
impl TDocument with images(self : Self) -> HTMLCollection {
  document_images_ffi(TJsValue::to_js(self))
}

///|
/// [Document.embeds](https://developer.mozilla.org/en-US/docs/Web/API/Document/embeds)
impl TDocument with embeds(self : Self) -> HTMLCollection {
  document_embeds_ffi(TJsValue::to_js(self))
}

///|
/// [Document.plugins](https://developer.mozilla.org/en-US/docs/Web/API/Document/plugins)
impl TDocument with plugins(self : Self) -> HTMLCollection {
  document_plugins_ffi(TJsValue::to_js(self))
}

///|
/// [Document.links](https://developer.mozilla.org/en-US/docs/Web/API/Document/links)
impl TDocument with links(self : Self) -> HTMLCollection {
  document_links_ffi(TJsValue::to_js(self))
}

///|
/// [Document.forms](https://developer.mozilla.org/en-US/docs/Web/API/Document/forms)
impl TDocument with forms(self : Self) -> HTMLCollection {
  document_forms_ffi(TJsValue::to_js(self))
}

///|
/// [Document.scripts](https://developer.mozilla.org/en-US/docs/Web/API/Document/scripts)
impl TDocument with scripts(self : Self) -> HTMLCollection {
  document_scripts_ffi(TJsValue::to_js(self))
}

///|
/// [Document.getElementsByName](https://developer.mozilla.org/en-US/docs/Web/API/Document/getElementsByName)
impl TDocument with get_elements_by_name(self : Self, element_name : String) -> NodeList {
  document_get_elements_by_name_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(element_name),
  )
}

///|
/// [Document.currentScript](https://developer.mozilla.org/en-US/docs/Web/API/Document/currentScript)
impl TDocument with current_script(self : Self) -> HTMLOrSVGScriptElement {
  document_current_script_ffi(TJsValue::to_js(self))
}

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
/// [Document.open](https://developer.mozilla.org/en-US/docs/Web/API/Document/open)
impl TDocument with open_window(
  self : Self,
  url : String,
  name : String,
  features : String,
) -> WindowProxy? {
  document_open_window_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(url),
    TJsValue::to_js(name),
    TJsValue::to_js(features),
  ).to_option()
}

///|
/// [Document.close](https://developer.mozilla.org/en-US/docs/Web/API/Document/close)
impl TDocument with close(self : Self) -> Unit {
  document_close_ffi(TJsValue::to_js(self))
}

///|
/// [Document.write](https://developer.mozilla.org/en-US/docs/Web/API/Document/write)
impl TDocument with write(self : Self, text : Array[&TDocumentWriteText]) -> Unit {
  document_write_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(
      text.map(fn(v : &TDocumentWriteText) -> JsValue { v.to_js() }),
    ),
  )
}

///|
/// [Document.writeln](https://developer.mozilla.org/en-US/docs/Web/API/Document/writeln)
impl TDocument with writeln(self : Self, text : Array[&TDocumentWritelnText]) -> Unit {
  document_writeln_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(
      text.map(fn(v : &TDocumentWritelnText) -> JsValue { v.to_js() }),
    ),
  )
}

///|
/// [Document.defaultView](https://developer.mozilla.org/en-US/docs/Web/API/Document/defaultView)
impl TDocument with default_view(self : Self) -> WindowProxy {
  document_default_view_ffi(TJsValue::to_js(self))
}

///|
/// [Document.hasFocus](https://developer.mozilla.org/en-US/docs/Web/API/Document/hasFocus)
impl TDocument with has_focus(self : Self) -> Bool {
  document_has_focus_ffi(TJsValue::to_js(self))
}

///|
/// [Document.designMode](https://developer.mozilla.org/en-US/docs/Web/API/Document/designMode)
impl TDocument with design_mode(self : Self) -> String {
  document_design_mode_ffi(TJsValue::to_js(self))
}

///|
/// [Document.designMode](https://developer.mozilla.org/en-US/docs/Web/API/Document/designMode)
impl TDocument with set_design_mode(self : Self, design_mode : String) -> Unit {
  document_set_design_mode_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(design_mode),
  )
}

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
/// [Document.queryCommandEnabled](https://developer.mozilla.org/en-US/docs/Web/API/Document/queryCommandEnabled)
impl TDocument with query_command_enabled(self : Self, command_id : String) -> Bool {
  document_query_command_enabled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(command_id),
  )
}

///|
/// [Document.queryCommandIndeterm](https://developer.mozilla.org/en-US/docs/Web/API/Document/queryCommandIndeterm)
impl TDocument with query_command_indeterm(self : Self, command_id : String) -> Bool {
  document_query_command_indeterm_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(command_id),
  )
}

///|
/// [Document.queryCommandState](https://developer.mozilla.org/en-US/docs/Web/API/Document/queryCommandState)
impl TDocument with query_command_state(self : Self, command_id : String) -> Bool {
  document_query_command_state_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(command_id),
  )
}

///|
/// [Document.queryCommandSupported](https://developer.mozilla.org/en-US/docs/Web/API/Document/queryCommandSupported)
impl TDocument with query_command_supported(self : Self, command_id : String) -> Bool {
  document_query_command_supported_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(command_id),
  )
}

///|
/// [Document.queryCommandValue](https://developer.mozilla.org/en-US/docs/Web/API/Document/queryCommandValue)
impl TDocument with query_command_value(self : Self, command_id : String) -> String {
  document_query_command_value_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(command_id),
  )
}

///|
/// [Document.hidden](https://developer.mozilla.org/en-US/docs/Web/API/Document/hidden)
impl TDocument with hidden(self : Self) -> Bool {
  document_hidden_ffi(TJsValue::to_js(self))
}

///|
/// [Document.visibilityState](https://developer.mozilla.org/en-US/docs/Web/API/Document/visibilityState)
impl TDocument with visibility_state(self : Self) -> DocumentVisibilityState {
  document_visibility_state_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onreadystatechange](https://developer.mozilla.org/en-US/docs/Web/API/Document/onreadystatechange)
impl TDocument with onreadystatechange(self : Self) -> EventHandler {
  document_onreadystatechange_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onreadystatechange](https://developer.mozilla.org/en-US/docs/Web/API/Document/onreadystatechange)
impl TDocument with set_onreadystatechange(
  self : Self,
  onreadystatechange : (Event) -> JsValue,
) -> Unit {
  document_set_onreadystatechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onreadystatechange)),
  )
}

///|
/// [Document.onvisibilitychange](https://developer.mozilla.org/en-US/docs/Web/API/Document/onvisibilitychange)
impl TDocument with onvisibilitychange(self : Self) -> EventHandler {
  document_onvisibilitychange_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onvisibilitychange](https://developer.mozilla.org/en-US/docs/Web/API/Document/onvisibilitychange)
impl TDocument with set_onvisibilitychange(
  self : Self,
  onvisibilitychange : (Event) -> JsValue,
) -> Unit {
  document_set_onvisibilitychange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onvisibilitychange)),
  )
}

///|
/// [Document.fgColor](https://developer.mozilla.org/en-US/docs/Web/API/Document/fgColor)
impl TDocument with fg_color(self : Self) -> String {
  document_fg_color_ffi(TJsValue::to_js(self))
}

///|
/// [Document.fgColor](https://developer.mozilla.org/en-US/docs/Web/API/Document/fgColor)
impl TDocument with set_fg_color(self : Self, fg_color : String) -> Unit {
  document_set_fg_color_ffi(TJsValue::to_js(self), TJsValue::to_js(fg_color))
}

///|
/// [Document.linkColor](https://developer.mozilla.org/en-US/docs/Web/API/Document/linkColor)
impl TDocument with link_color(self : Self) -> String {
  document_link_color_ffi(TJsValue::to_js(self))
}

///|
/// [Document.linkColor](https://developer.mozilla.org/en-US/docs/Web/API/Document/linkColor)
impl TDocument with set_link_color(self : Self, link_color : String) -> Unit {
  document_set_link_color_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(link_color),
  )
}

///|
/// [Document.vlinkColor](https://developer.mozilla.org/en-US/docs/Web/API/Document/vlinkColor)
impl TDocument with vlink_color(self : Self) -> String {
  document_vlink_color_ffi(TJsValue::to_js(self))
}

///|
/// [Document.vlinkColor](https://developer.mozilla.org/en-US/docs/Web/API/Document/vlinkColor)
impl TDocument with set_vlink_color(self : Self, vlink_color : String) -> Unit {
  document_set_vlink_color_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(vlink_color),
  )
}

///|
/// [Document.alinkColor](https://developer.mozilla.org/en-US/docs/Web/API/Document/alinkColor)
impl TDocument with alink_color(self : Self) -> String {
  document_alink_color_ffi(TJsValue::to_js(self))
}

///|
/// [Document.alinkColor](https://developer.mozilla.org/en-US/docs/Web/API/Document/alinkColor)
impl TDocument with set_alink_color(self : Self, alink_color : String) -> Unit {
  document_set_alink_color_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(alink_color),
  )
}

///|
/// [Document.bgColor](https://developer.mozilla.org/en-US/docs/Web/API/Document/bgColor)
impl TDocument with bg_color(self : Self) -> String {
  document_bg_color_ffi(TJsValue::to_js(self))
}

///|
/// [Document.bgColor](https://developer.mozilla.org/en-US/docs/Web/API/Document/bgColor)
impl TDocument with set_bg_color(self : Self, bg_color : String) -> Unit {
  document_set_bg_color_ffi(TJsValue::to_js(self), TJsValue::to_js(bg_color))
}

///|
/// [Document.anchors](https://developer.mozilla.org/en-US/docs/Web/API/Document/anchors)
impl TDocument with anchors(self : Self) -> HTMLCollection {
  document_anchors_ffi(TJsValue::to_js(self))
}

///|
/// [Document.applets](https://developer.mozilla.org/en-US/docs/Web/API/Document/applets)
impl TDocument with applets(self : Self) -> HTMLCollection {
  document_applets_ffi(TJsValue::to_js(self))
}

///|
/// [Document.clear](https://developer.mozilla.org/en-US/docs/Web/API/Document/clear)
impl TDocument with clear(self : Self) -> Unit {
  document_clear_ffi(TJsValue::to_js(self))
}

///|
/// [Document.captureEvents](https://developer.mozilla.org/en-US/docs/Web/API/Document/captureEvents)
impl TDocument with capture_events(self : Self) -> Unit {
  document_capture_events_ffi(TJsValue::to_js(self))
}

///|
/// [Document.releaseEvents](https://developer.mozilla.org/en-US/docs/Web/API/Document/releaseEvents)
impl TDocument with release_events(self : Self) -> Unit {
  document_release_events_ffi(TJsValue::to_js(self))
}

///|
/// [Document.all](https://developer.mozilla.org/en-US/docs/Web/API/Document/all)
impl TDocument with all(self : Self) -> HTMLAllCollection {
  document_all_ffi(TJsValue::to_js(self))
}

///|
/// [Document.elementFromPoint](https://developer.mozilla.org/en-US/docs/Web/API/Document/elementFromPoint)
impl TDocument with element_from_point_opt(self : Self, x : Double, y : Double) -> Element? {
  document_element_from_point_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  ).to_option()
}

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
/// [Document.caretPositionFromPoint](https://developer.mozilla.org/en-US/docs/Web/API/Document/caretPositionFromPoint)
impl TDocument with caret_position_from_point_opt(
  self : Self,
  x : Double,
  y : Double,
  options? : CaretPositionFromPointOptions = CaretPositionFromPointOptions::empty(),
) -> CaretPosition? {
  document_caret_position_from_point_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(options),
  ).to_option()
}

///|
/// [Document.scrollingElement](https://developer.mozilla.org/en-US/docs/Web/API/Document/scrollingElement)
impl TDocument with scrolling_element(self : Self) -> Element {
  document_scrolling_element_ffi(TJsValue::to_js(self))
}

///|
/// [Document.fullscreenEnabled](https://developer.mozilla.org/en-US/docs/Web/API/Document/fullscreenEnabled)
impl TDocument with fullscreen_enabled(self : Self) -> Bool {
  document_fullscreen_enabled_ffi(TJsValue::to_js(self))
}

///|
/// [Document.fullscreen](https://developer.mozilla.org/en-US/docs/Web/API/Document/fullscreen)
impl TDocument with fullscreen(self : Self) -> Bool {
  document_fullscreen_ffi(TJsValue::to_js(self))
}

///|
/// [Document.exitFullscreen](https://developer.mozilla.org/en-US/docs/Web/API/Document/exitFullscreen)
impl TDocument with exit_fullscreen(self : Self) -> JsPromise[JsValue] {
  document_exit_fullscreen_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onfullscreenchange](https://developer.mozilla.org/en-US/docs/Web/API/Document/onfullscreenchange)
impl TDocument with onfullscreenchange(self : Self) -> EventHandler {
  document_onfullscreenchange_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onfullscreenchange](https://developer.mozilla.org/en-US/docs/Web/API/Document/onfullscreenchange)
impl TDocument with set_onfullscreenchange(
  self : Self,
  onfullscreenchange : (Event) -> JsValue,
) -> Unit {
  document_set_onfullscreenchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onfullscreenchange)),
  )
}

///|
/// [Document.onfullscreenerror](https://developer.mozilla.org/en-US/docs/Web/API/Document/onfullscreenerror)
impl TDocument with onfullscreenerror(self : Self) -> EventHandler {
  document_onfullscreenerror_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onfullscreenerror](https://developer.mozilla.org/en-US/docs/Web/API/Document/onfullscreenerror)
impl TDocument with set_onfullscreenerror(
  self : Self,
  onfullscreenerror : (Event) -> JsValue,
) -> Unit {
  document_set_onfullscreenerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onfullscreenerror)),
  )
}

///|
/// [Document.getSelection](https://developer.mozilla.org/en-US/docs/Web/API/Document/getSelection)
impl TDocument with get_selection_opt(self : Self) -> Selection? {
  document_get_selection_ffi(TJsValue::to_js(self)).to_option()
}

///|
/// [Document.timeline](https://developer.mozilla.org/en-US/docs/Web/API/Document/timeline)
impl TDocument with timeline(self : Self) -> DocumentTimeline {
  document_timeline_ffi(TJsValue::to_js(self))
}

///|
/// [Document.getElementById](https://developer.mozilla.org/en-US/docs/Web/API/Document/getElementById)
impl TDocument with get_element_by_id_opt(self : Self, element_id : String) -> Element? {
  document_get_element_by_id_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(element_id),
  ).to_option()
}

///|
/// [Document.customElementRegistry](https://developer.mozilla.org/en-US/docs/Web/API/Document/customElementRegistry)
impl TDocument with custom_element_registry(self : Self) -> CustomElementRegistry {
  document_custom_element_registry_ffi(TJsValue::to_js(self))
}

///|
/// [Document.activeElement](https://developer.mozilla.org/en-US/docs/Web/API/Document/activeElement)
impl TDocument with active_element(self : Self) -> Element {
  document_active_element_ffi(TJsValue::to_js(self))
}

///|
/// [Document.styleSheets](https://developer.mozilla.org/en-US/docs/Web/API/Document/styleSheets)
impl TDocument with style_sheets(self : Self) -> StyleSheetList {
  document_style_sheets_ffi(TJsValue::to_js(self))
}

///|
/// [Document.adoptedStyleSheets](https://developer.mozilla.org/en-US/docs/Web/API/Document/adoptedStyleSheets)
impl TDocument with adopted_style_sheets(self : Self) -> Array[CSSStyleSheet] {
  document_adopted_style_sheets_ffi(TJsValue::to_js(self))
}

///|
/// [Document.adoptedStyleSheets](https://developer.mozilla.org/en-US/docs/Web/API/Document/adoptedStyleSheets)
impl TDocument with set_adopted_style_sheets(
  self : Self,
  adopted_style_sheets : Array[CSSStyleSheet],
) -> Unit {
  document_set_adopted_style_sheets_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(adopted_style_sheets),
  )
}

///|
/// [Document.fullscreenElement](https://developer.mozilla.org/en-US/docs/Web/API/Document/fullscreenElement)
impl TDocument with fullscreen_element(self : Self) -> Element {
  document_fullscreen_element_ffi(TJsValue::to_js(self))
}

///|
/// [Document.getAnimations](https://developer.mozilla.org/en-US/docs/Web/API/Document/getAnimations)
impl TDocument with get_animations(self : Self) -> Array[Animation] {
  document_get_animations_ffi(TJsValue::to_js(self))
}

///|
/// [Document.children](https://developer.mozilla.org/en-US/docs/Web/API/Document/children)
impl TDocument with children(self : Self) -> HTMLCollection {
  document_children_ffi(TJsValue::to_js(self))
}

///|
/// [Document.firstElementChild](https://developer.mozilla.org/en-US/docs/Web/API/Document/firstElementChild)
impl TDocument with first_element_child(self : Self) -> Element {
  document_first_element_child_ffi(TJsValue::to_js(self))
}

///|
/// [Document.lastElementChild](https://developer.mozilla.org/en-US/docs/Web/API/Document/lastElementChild)
impl TDocument with last_element_child(self : Self) -> Element {
  document_last_element_child_ffi(TJsValue::to_js(self))
}

///|
/// [Document.childElementCount](https://developer.mozilla.org/en-US/docs/Web/API/Document/childElementCount)
impl TDocument with child_element_count(self : Self) -> UInt {
  document_child_element_count_ffi(TJsValue::to_js(self))
}

///|
/// [Document.prepend](https://developer.mozilla.org/en-US/docs/Web/API/Document/prepend)
impl TDocument with prepend(self : Self, nodes : Array[&TDocumentPrependNodes]) -> Unit {
  document_prepend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(
      nodes.map(fn(v : &TDocumentPrependNodes) -> JsValue { v.to_js() }),
    ),
  )
}

///|
/// [Document.append](https://developer.mozilla.org/en-US/docs/Web/API/Document/append)
impl TDocument with append(self : Self, nodes : Array[&TDocumentAppendNodes]) -> Unit {
  document_append_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(
      nodes.map(fn(v : &TDocumentAppendNodes) -> JsValue { v.to_js() }),
    ),
  )
}

///|
/// [Document.replaceChildren](https://developer.mozilla.org/en-US/docs/Web/API/Document/replaceChildren)
impl TDocument with replace_children(
  self : Self,
  nodes : Array[&TDocumentReplaceChildrenNodes],
) -> Unit {
  document_replace_children_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(
      nodes.map(fn(v : &TDocumentReplaceChildrenNodes) -> JsValue { v.to_js() }),
    ),
  )
}

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
/// [Document.querySelector](https://developer.mozilla.org/en-US/docs/Web/API/Document/querySelector)
impl TDocument with query_selector_opt(self : Self, selectors : String) -> Element? {
  document_query_selector_ffi(TJsValue::to_js(self), TJsValue::to_js(selectors)).to_option()
}

///|
/// [Document.querySelectorAll](https://developer.mozilla.org/en-US/docs/Web/API/Document/querySelectorAll)
impl TDocument with query_selector_all(self : Self, selectors : String) -> NodeList {
  document_query_selector_all_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(selectors),
  )
}

///|
/// [Document.createExpression](https://developer.mozilla.org/en-US/docs/Web/API/Document/createExpression)
impl TDocument with create_expression(
  self : Self,
  expression : String,
  resolver? : (String) -> String = JsValue::null(),
) -> XPathExpression {
  document_create_expression_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(expression),
    TJsValue::to_js(x_path_ns_resolver_ffi(resolver)),
  )
}

///|
/// [Document.createNSResolver](https://developer.mozilla.org/en-US/docs/Web/API/Document/createNSResolver)
impl TDocument with create_ns_resolver(self : Self, node_resolver : &TNode) -> Node {
  document_create_ns_resolver_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node_resolver),
  )
}

///|
/// [Document.evaluate](https://developer.mozilla.org/en-US/docs/Web/API/Document/evaluate)
impl TDocument with evaluate(
  self : Self,
  expression : String,
  context_node : &TNode,
  resolver? : (String) -> String = JsValue::null(),
  type_? : UInt = (0 : UInt),
  result? : &TXPathResult,
) -> XPathResult {
  document_evaluate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(expression),
    TJsValue::to_js(context_node),
    TJsValue::to_js(x_path_ns_resolver_ffi(resolver)),
    TJsValue::to_js(type_),
    opt_to_js(result),
  )
}

///|
/// [Document.onabort](https://developer.mozilla.org/en-US/docs/Web/API/Document/onabort)
impl TDocument with onabort(self : Self) -> EventHandler {
  document_onabort_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onabort](https://developer.mozilla.org/en-US/docs/Web/API/Document/onabort)
impl TDocument with set_onabort(self : Self, onabort : (Event) -> JsValue) -> Unit {
  document_set_onabort_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onabort)),
  )
}

///|
/// [Document.onauxclick](https://developer.mozilla.org/en-US/docs/Web/API/Document/onauxclick)
impl TDocument with onauxclick(self : Self) -> EventHandler {
  document_onauxclick_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onauxclick](https://developer.mozilla.org/en-US/docs/Web/API/Document/onauxclick)
impl TDocument with set_onauxclick(self : Self, onauxclick : (Event) -> JsValue) -> Unit {
  document_set_onauxclick_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onauxclick)),
  )
}

///|
/// [Document.onbeforeinput](https://developer.mozilla.org/en-US/docs/Web/API/Document/onbeforeinput)
impl TDocument with onbeforeinput(self : Self) -> EventHandler {
  document_onbeforeinput_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onbeforeinput](https://developer.mozilla.org/en-US/docs/Web/API/Document/onbeforeinput)
impl TDocument with set_onbeforeinput(
  self : Self,
  onbeforeinput : (Event) -> JsValue,
) -> Unit {
  document_set_onbeforeinput_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onbeforeinput)),
  )
}

///|
/// [Document.onbeforematch](https://developer.mozilla.org/en-US/docs/Web/API/Document/onbeforematch)
impl TDocument with onbeforematch(self : Self) -> EventHandler {
  document_onbeforematch_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onbeforematch](https://developer.mozilla.org/en-US/docs/Web/API/Document/onbeforematch)
impl TDocument with set_onbeforematch(
  self : Self,
  onbeforematch : (Event) -> JsValue,
) -> Unit {
  document_set_onbeforematch_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onbeforematch)),
  )
}

///|
/// [Document.onbeforetoggle](https://developer.mozilla.org/en-US/docs/Web/API/Document/onbeforetoggle)
impl TDocument with onbeforetoggle(self : Self) -> EventHandler {
  document_onbeforetoggle_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onbeforetoggle](https://developer.mozilla.org/en-US/docs/Web/API/Document/onbeforetoggle)
impl TDocument with set_onbeforetoggle(
  self : Self,
  onbeforetoggle : (Event) -> JsValue,
) -> Unit {
  document_set_onbeforetoggle_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onbeforetoggle)),
  )
}

///|
/// [Document.onblur](https://developer.mozilla.org/en-US/docs/Web/API/Document/onblur)
impl TDocument with onblur(self : Self) -> EventHandler {
  document_onblur_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onblur](https://developer.mozilla.org/en-US/docs/Web/API/Document/onblur)
impl TDocument with set_onblur(self : Self, onblur : (Event) -> JsValue) -> Unit {
  document_set_onblur_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onblur)),
  )
}

///|
/// [Document.oncancel](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncancel)
impl TDocument with oncancel(self : Self) -> EventHandler {
  document_oncancel_ffi(TJsValue::to_js(self))
}

///|
/// [Document.oncancel](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncancel)
impl TDocument with set_oncancel(self : Self, oncancel : (Event) -> JsValue) -> Unit {
  document_set_oncancel_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncancel)),
  )
}

///|
/// [Document.oncanplay](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncanplay)
impl TDocument with oncanplay(self : Self) -> EventHandler {
  document_oncanplay_ffi(TJsValue::to_js(self))
}

///|
/// [Document.oncanplay](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncanplay)
impl TDocument with set_oncanplay(self : Self, oncanplay : (Event) -> JsValue) -> Unit {
  document_set_oncanplay_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncanplay)),
  )
}

///|
/// [Document.oncanplaythrough](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncanplaythrough)
impl TDocument with oncanplaythrough(self : Self) -> EventHandler {
  document_oncanplaythrough_ffi(TJsValue::to_js(self))
}

///|
/// [Document.oncanplaythrough](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncanplaythrough)
impl TDocument with set_oncanplaythrough(
  self : Self,
  oncanplaythrough : (Event) -> JsValue,
) -> Unit {
  document_set_oncanplaythrough_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncanplaythrough)),
  )
}

///|
/// [Document.onchange](https://developer.mozilla.org/en-US/docs/Web/API/Document/onchange)
impl TDocument with onchange(self : Self) -> EventHandler {
  document_onchange_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onchange](https://developer.mozilla.org/en-US/docs/Web/API/Document/onchange)
impl TDocument with set_onchange(self : Self, onchange : (Event) -> JsValue) -> Unit {
  document_set_onchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onchange)),
  )
}

///|
/// [Document.onclick](https://developer.mozilla.org/en-US/docs/Web/API/Document/onclick)
impl TDocument with onclick(self : Self) -> EventHandler {
  document_onclick_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onclick](https://developer.mozilla.org/en-US/docs/Web/API/Document/onclick)
impl TDocument with set_onclick(self : Self, onclick : (Event) -> JsValue) -> Unit {
  document_set_onclick_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onclick)),
  )
}

///|
/// [Document.onclose](https://developer.mozilla.org/en-US/docs/Web/API/Document/onclose)
impl TDocument with onclose(self : Self) -> EventHandler {
  document_onclose_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onclose](https://developer.mozilla.org/en-US/docs/Web/API/Document/onclose)
impl TDocument with set_onclose(self : Self, onclose : (Event) -> JsValue) -> Unit {
  document_set_onclose_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onclose)),
  )
}

///|
/// [Document.oncommand](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncommand)
impl TDocument with oncommand(self : Self) -> EventHandler {
  document_oncommand_ffi(TJsValue::to_js(self))
}

///|
/// [Document.oncommand](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncommand)
impl TDocument with set_oncommand(self : Self, oncommand : (Event) -> JsValue) -> Unit {
  document_set_oncommand_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncommand)),
  )
}

///|
/// [Document.oncontextlost](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncontextlost)
impl TDocument with oncontextlost(self : Self) -> EventHandler {
  document_oncontextlost_ffi(TJsValue::to_js(self))
}

///|
/// [Document.oncontextlost](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncontextlost)
impl TDocument with set_oncontextlost(
  self : Self,
  oncontextlost : (Event) -> JsValue,
) -> Unit {
  document_set_oncontextlost_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncontextlost)),
  )
}

///|
/// [Document.oncontextmenu](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncontextmenu)
impl TDocument with oncontextmenu(self : Self) -> EventHandler {
  document_oncontextmenu_ffi(TJsValue::to_js(self))
}

///|
/// [Document.oncontextmenu](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncontextmenu)
impl TDocument with set_oncontextmenu(
  self : Self,
  oncontextmenu : (Event) -> JsValue,
) -> Unit {
  document_set_oncontextmenu_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncontextmenu)),
  )
}

///|
/// [Document.oncontextrestored](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncontextrestored)
impl TDocument with oncontextrestored(self : Self) -> EventHandler {
  document_oncontextrestored_ffi(TJsValue::to_js(self))
}

///|
/// [Document.oncontextrestored](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncontextrestored)
impl TDocument with set_oncontextrestored(
  self : Self,
  oncontextrestored : (Event) -> JsValue,
) -> Unit {
  document_set_oncontextrestored_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncontextrestored)),
  )
}

///|
/// [Document.oncopy](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncopy)
impl TDocument with oncopy(self : Self) -> EventHandler {
  document_oncopy_ffi(TJsValue::to_js(self))
}

///|
/// [Document.oncopy](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncopy)
impl TDocument with set_oncopy(self : Self, oncopy : (Event) -> JsValue) -> Unit {
  document_set_oncopy_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncopy)),
  )
}

///|
/// [Document.oncuechange](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncuechange)
impl TDocument with oncuechange(self : Self) -> EventHandler {
  document_oncuechange_ffi(TJsValue::to_js(self))
}

///|
/// [Document.oncuechange](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncuechange)
impl TDocument with set_oncuechange(
  self : Self,
  oncuechange : (Event) -> JsValue,
) -> Unit {
  document_set_oncuechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncuechange)),
  )
}

///|
/// [Document.oncut](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncut)
impl TDocument with oncut(self : Self) -> EventHandler {
  document_oncut_ffi(TJsValue::to_js(self))
}

///|
/// [Document.oncut](https://developer.mozilla.org/en-US/docs/Web/API/Document/oncut)
impl TDocument with set_oncut(self : Self, oncut : (Event) -> JsValue) -> Unit {
  document_set_oncut_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncut)),
  )
}

///|
/// [Document.ondblclick](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondblclick)
impl TDocument with ondblclick(self : Self) -> EventHandler {
  document_ondblclick_ffi(TJsValue::to_js(self))
}

///|
/// [Document.ondblclick](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondblclick)
impl TDocument with set_ondblclick(self : Self, ondblclick : (Event) -> JsValue) -> Unit {
  document_set_ondblclick_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondblclick)),
  )
}

///|
/// [Document.ondrag](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondrag)
impl TDocument with ondrag(self : Self) -> EventHandler {
  document_ondrag_ffi(TJsValue::to_js(self))
}

///|
/// [Document.ondrag](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondrag)
impl TDocument with set_ondrag(self : Self, ondrag : (Event) -> JsValue) -> Unit {
  document_set_ondrag_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondrag)),
  )
}

///|
/// [Document.ondragend](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondragend)
impl TDocument with ondragend(self : Self) -> EventHandler {
  document_ondragend_ffi(TJsValue::to_js(self))
}

///|
/// [Document.ondragend](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondragend)
impl TDocument with set_ondragend(self : Self, ondragend : (Event) -> JsValue) -> Unit {
  document_set_ondragend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondragend)),
  )
}

///|
/// [Document.ondragenter](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondragenter)
impl TDocument with ondragenter(self : Self) -> EventHandler {
  document_ondragenter_ffi(TJsValue::to_js(self))
}

///|
/// [Document.ondragenter](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondragenter)
impl TDocument with set_ondragenter(
  self : Self,
  ondragenter : (Event) -> JsValue,
) -> Unit {
  document_set_ondragenter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondragenter)),
  )
}

///|
/// [Document.ondragleave](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondragleave)
impl TDocument with ondragleave(self : Self) -> EventHandler {
  document_ondragleave_ffi(TJsValue::to_js(self))
}

///|
/// [Document.ondragleave](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondragleave)
impl TDocument with set_ondragleave(
  self : Self,
  ondragleave : (Event) -> JsValue,
) -> Unit {
  document_set_ondragleave_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondragleave)),
  )
}

///|
/// [Document.ondragover](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondragover)
impl TDocument with ondragover(self : Self) -> EventHandler {
  document_ondragover_ffi(TJsValue::to_js(self))
}

///|
/// [Document.ondragover](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondragover)
impl TDocument with set_ondragover(self : Self, ondragover : (Event) -> JsValue) -> Unit {
  document_set_ondragover_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondragover)),
  )
}

///|
/// [Document.ondragstart](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondragstart)
impl TDocument with ondragstart(self : Self) -> EventHandler {
  document_ondragstart_ffi(TJsValue::to_js(self))
}

///|
/// [Document.ondragstart](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondragstart)
impl TDocument with set_ondragstart(
  self : Self,
  ondragstart : (Event) -> JsValue,
) -> Unit {
  document_set_ondragstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondragstart)),
  )
}

///|
/// [Document.ondrop](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondrop)
impl TDocument with ondrop(self : Self) -> EventHandler {
  document_ondrop_ffi(TJsValue::to_js(self))
}

///|
/// [Document.ondrop](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondrop)
impl TDocument with set_ondrop(self : Self, ondrop : (Event) -> JsValue) -> Unit {
  document_set_ondrop_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondrop)),
  )
}

///|
/// [Document.ondurationchange](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondurationchange)
impl TDocument with ondurationchange(self : Self) -> EventHandler {
  document_ondurationchange_ffi(TJsValue::to_js(self))
}

///|
/// [Document.ondurationchange](https://developer.mozilla.org/en-US/docs/Web/API/Document/ondurationchange)
impl TDocument with set_ondurationchange(
  self : Self,
  ondurationchange : (Event) -> JsValue,
) -> Unit {
  document_set_ondurationchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondurationchange)),
  )
}

///|
/// [Document.onemptied](https://developer.mozilla.org/en-US/docs/Web/API/Document/onemptied)
impl TDocument with onemptied(self : Self) -> EventHandler {
  document_onemptied_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onemptied](https://developer.mozilla.org/en-US/docs/Web/API/Document/onemptied)
impl TDocument with set_onemptied(self : Self, onemptied : (Event) -> JsValue) -> Unit {
  document_set_onemptied_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onemptied)),
  )
}

///|
/// [Document.onended](https://developer.mozilla.org/en-US/docs/Web/API/Document/onended)
impl TDocument with onended(self : Self) -> EventHandler {
  document_onended_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onended](https://developer.mozilla.org/en-US/docs/Web/API/Document/onended)
impl TDocument with set_onended(self : Self, onended : (Event) -> JsValue) -> Unit {
  document_set_onended_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onended)),
  )
}

///|
/// [Document.onerror](https://developer.mozilla.org/en-US/docs/Web/API/Document/onerror)
impl TDocument with onerror(self : Self) -> OnErrorEventHandler {
  document_onerror_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onerror](https://developer.mozilla.org/en-US/docs/Web/API/Document/onerror)
impl TDocument with set_onerror(
  self : Self,
  onerror : (OnErrorEventHandlerNonNullEvent, String, UInt, UInt, JsValue) -> JsValue,
) -> Unit {
  document_set_onerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(on_error_event_handler_non_null_ffi(onerror)),
  )
}

///|
/// [Document.onfocus](https://developer.mozilla.org/en-US/docs/Web/API/Document/onfocus)
impl TDocument with onfocus(self : Self) -> EventHandler {
  document_onfocus_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onfocus](https://developer.mozilla.org/en-US/docs/Web/API/Document/onfocus)
impl TDocument with set_onfocus(self : Self, onfocus : (Event) -> JsValue) -> Unit {
  document_set_onfocus_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onfocus)),
  )
}

///|
/// [Document.onformdata](https://developer.mozilla.org/en-US/docs/Web/API/Document/onformdata)
impl TDocument with onformdata(self : Self) -> EventHandler {
  document_onformdata_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onformdata](https://developer.mozilla.org/en-US/docs/Web/API/Document/onformdata)
impl TDocument with set_onformdata(self : Self, onformdata : (Event) -> JsValue) -> Unit {
  document_set_onformdata_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onformdata)),
  )
}

///|
/// [Document.oninput](https://developer.mozilla.org/en-US/docs/Web/API/Document/oninput)
impl TDocument with oninput(self : Self) -> EventHandler {
  document_oninput_ffi(TJsValue::to_js(self))
}

///|
/// [Document.oninput](https://developer.mozilla.org/en-US/docs/Web/API/Document/oninput)
impl TDocument with set_oninput(self : Self, oninput : (Event) -> JsValue) -> Unit {
  document_set_oninput_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oninput)),
  )
}

///|
/// [Document.oninvalid](https://developer.mozilla.org/en-US/docs/Web/API/Document/oninvalid)
impl TDocument with oninvalid(self : Self) -> EventHandler {
  document_oninvalid_ffi(TJsValue::to_js(self))
}

///|
/// [Document.oninvalid](https://developer.mozilla.org/en-US/docs/Web/API/Document/oninvalid)
impl TDocument with set_oninvalid(self : Self, oninvalid : (Event) -> JsValue) -> Unit {
  document_set_oninvalid_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oninvalid)),
  )
}

///|
/// [Document.onkeydown](https://developer.mozilla.org/en-US/docs/Web/API/Document/onkeydown)
impl TDocument with onkeydown(self : Self) -> EventHandler {
  document_onkeydown_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onkeydown](https://developer.mozilla.org/en-US/docs/Web/API/Document/onkeydown)
impl TDocument with set_onkeydown(self : Self, onkeydown : (Event) -> JsValue) -> Unit {
  document_set_onkeydown_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onkeydown)),
  )
}

///|
/// [Document.onkeypress](https://developer.mozilla.org/en-US/docs/Web/API/Document/onkeypress)
impl TDocument with onkeypress(self : Self) -> EventHandler {
  document_onkeypress_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onkeypress](https://developer.mozilla.org/en-US/docs/Web/API/Document/onkeypress)
impl TDocument with set_onkeypress(self : Self, onkeypress : (Event) -> JsValue) -> Unit {
  document_set_onkeypress_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onkeypress)),
  )
}

///|
/// [Document.onkeyup](https://developer.mozilla.org/en-US/docs/Web/API/Document/onkeyup)
impl TDocument with onkeyup(self : Self) -> EventHandler {
  document_onkeyup_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onkeyup](https://developer.mozilla.org/en-US/docs/Web/API/Document/onkeyup)
impl TDocument with set_onkeyup(self : Self, onkeyup : (Event) -> JsValue) -> Unit {
  document_set_onkeyup_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onkeyup)),
  )
}

///|
/// [Document.onload](https://developer.mozilla.org/en-US/docs/Web/API/Document/onload)
impl TDocument with onload(self : Self) -> EventHandler {
  document_onload_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onload](https://developer.mozilla.org/en-US/docs/Web/API/Document/onload)
impl TDocument with set_onload(self : Self, onload : (Event) -> JsValue) -> Unit {
  document_set_onload_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onload)),
  )
}

///|
/// [Document.onloadeddata](https://developer.mozilla.org/en-US/docs/Web/API/Document/onloadeddata)
impl TDocument with onloadeddata(self : Self) -> EventHandler {
  document_onloadeddata_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onloadeddata](https://developer.mozilla.org/en-US/docs/Web/API/Document/onloadeddata)
impl TDocument with set_onloadeddata(
  self : Self,
  onloadeddata : (Event) -> JsValue,
) -> Unit {
  document_set_onloadeddata_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onloadeddata)),
  )
}

///|
/// [Document.onloadedmetadata](https://developer.mozilla.org/en-US/docs/Web/API/Document/onloadedmetadata)
impl TDocument with onloadedmetadata(self : Self) -> EventHandler {
  document_onloadedmetadata_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onloadedmetadata](https://developer.mozilla.org/en-US/docs/Web/API/Document/onloadedmetadata)
impl TDocument with set_onloadedmetadata(
  self : Self,
  onloadedmetadata : (Event) -> JsValue,
) -> Unit {
  document_set_onloadedmetadata_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onloadedmetadata)),
  )
}

///|
/// [Document.onloadstart](https://developer.mozilla.org/en-US/docs/Web/API/Document/onloadstart)
impl TDocument with onloadstart(self : Self) -> EventHandler {
  document_onloadstart_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onloadstart](https://developer.mozilla.org/en-US/docs/Web/API/Document/onloadstart)
impl TDocument with set_onloadstart(
  self : Self,
  onloadstart : (Event) -> JsValue,
) -> Unit {
  document_set_onloadstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onloadstart)),
  )
}

///|
/// [Document.onmousedown](https://developer.mozilla.org/en-US/docs/Web/API/Document/onmousedown)
impl TDocument with onmousedown(self : Self) -> EventHandler {
  document_onmousedown_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onmousedown](https://developer.mozilla.org/en-US/docs/Web/API/Document/onmousedown)
impl TDocument with set_onmousedown(
  self : Self,
  onmousedown : (Event) -> JsValue,
) -> Unit {
  document_set_onmousedown_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmousedown)),
  )
}

///|
/// [Document.onmouseenter](https://developer.mozilla.org/en-US/docs/Web/API/Document/onmouseenter)
impl TDocument with onmouseenter(self : Self) -> EventHandler {
  document_onmouseenter_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onmouseenter](https://developer.mozilla.org/en-US/docs/Web/API/Document/onmouseenter)
impl TDocument with set_onmouseenter(
  self : Self,
  onmouseenter : (Event) -> JsValue,
) -> Unit {
  document_set_onmouseenter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmouseenter)),
  )
}

///|
/// [Document.onmouseleave](https://developer.mozilla.org/en-US/docs/Web/API/Document/onmouseleave)
impl TDocument with onmouseleave(self : Self) -> EventHandler {
  document_onmouseleave_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onmouseleave](https://developer.mozilla.org/en-US/docs/Web/API/Document/onmouseleave)
impl TDocument with set_onmouseleave(
  self : Self,
  onmouseleave : (Event) -> JsValue,
) -> Unit {
  document_set_onmouseleave_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmouseleave)),
  )
}

///|
/// [Document.onmousemove](https://developer.mozilla.org/en-US/docs/Web/API/Document/onmousemove)
impl TDocument with onmousemove(self : Self) -> EventHandler {
  document_onmousemove_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onmousemove](https://developer.mozilla.org/en-US/docs/Web/API/Document/onmousemove)
impl TDocument with set_onmousemove(
  self : Self,
  onmousemove : (Event) -> JsValue,
) -> Unit {
  document_set_onmousemove_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmousemove)),
  )
}

///|
/// [Document.onmouseout](https://developer.mozilla.org/en-US/docs/Web/API/Document/onmouseout)
impl TDocument with onmouseout(self : Self) -> EventHandler {
  document_onmouseout_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onmouseout](https://developer.mozilla.org/en-US/docs/Web/API/Document/onmouseout)
impl TDocument with set_onmouseout(self : Self, onmouseout : (Event) -> JsValue) -> Unit {
  document_set_onmouseout_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmouseout)),
  )
}

///|
/// [Document.onmouseover](https://developer.mozilla.org/en-US/docs/Web/API/Document/onmouseover)
impl TDocument with onmouseover(self : Self) -> EventHandler {
  document_onmouseover_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onmouseover](https://developer.mozilla.org/en-US/docs/Web/API/Document/onmouseover)
impl TDocument with set_onmouseover(
  self : Self,
  onmouseover : (Event) -> JsValue,
) -> Unit {
  document_set_onmouseover_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmouseover)),
  )
}

///|
/// [Document.onmouseup](https://developer.mozilla.org/en-US/docs/Web/API/Document/onmouseup)
impl TDocument with onmouseup(self : Self) -> EventHandler {
  document_onmouseup_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onmouseup](https://developer.mozilla.org/en-US/docs/Web/API/Document/onmouseup)
impl TDocument with set_onmouseup(self : Self, onmouseup : (Event) -> JsValue) -> Unit {
  document_set_onmouseup_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmouseup)),
  )
}

///|
/// [Document.onpaste](https://developer.mozilla.org/en-US/docs/Web/API/Document/onpaste)
impl TDocument with onpaste(self : Self) -> EventHandler {
  document_onpaste_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onpaste](https://developer.mozilla.org/en-US/docs/Web/API/Document/onpaste)
impl TDocument with set_onpaste(self : Self, onpaste : (Event) -> JsValue) -> Unit {
  document_set_onpaste_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpaste)),
  )
}

///|
/// [Document.onpause](https://developer.mozilla.org/en-US/docs/Web/API/Document/onpause)
impl TDocument with onpause(self : Self) -> EventHandler {
  document_onpause_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onpause](https://developer.mozilla.org/en-US/docs/Web/API/Document/onpause)
impl TDocument with set_onpause(self : Self, onpause : (Event) -> JsValue) -> Unit {
  document_set_onpause_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpause)),
  )
}

///|
/// [Document.onplay](https://developer.mozilla.org/en-US/docs/Web/API/Document/onplay)
impl TDocument with onplay(self : Self) -> EventHandler {
  document_onplay_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onplay](https://developer.mozilla.org/en-US/docs/Web/API/Document/onplay)
impl TDocument with set_onplay(self : Self, onplay : (Event) -> JsValue) -> Unit {
  document_set_onplay_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onplay)),
  )
}

///|
/// [Document.onplaying](https://developer.mozilla.org/en-US/docs/Web/API/Document/onplaying)
impl TDocument with onplaying(self : Self) -> EventHandler {
  document_onplaying_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onplaying](https://developer.mozilla.org/en-US/docs/Web/API/Document/onplaying)
impl TDocument with set_onplaying(self : Self, onplaying : (Event) -> JsValue) -> Unit {
  document_set_onplaying_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onplaying)),
  )
}

///|
/// [Document.onprogress](https://developer.mozilla.org/en-US/docs/Web/API/Document/onprogress)
impl TDocument with onprogress(self : Self) -> EventHandler {
  document_onprogress_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onprogress](https://developer.mozilla.org/en-US/docs/Web/API/Document/onprogress)
impl TDocument with set_onprogress(self : Self, onprogress : (Event) -> JsValue) -> Unit {
  document_set_onprogress_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onprogress)),
  )
}

///|
/// [Document.onratechange](https://developer.mozilla.org/en-US/docs/Web/API/Document/onratechange)
impl TDocument with onratechange(self : Self) -> EventHandler {
  document_onratechange_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onratechange](https://developer.mozilla.org/en-US/docs/Web/API/Document/onratechange)
impl TDocument with set_onratechange(
  self : Self,
  onratechange : (Event) -> JsValue,
) -> Unit {
  document_set_onratechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onratechange)),
  )
}

///|
/// [Document.onreset](https://developer.mozilla.org/en-US/docs/Web/API/Document/onreset)
impl TDocument with onreset(self : Self) -> EventHandler {
  document_onreset_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onreset](https://developer.mozilla.org/en-US/docs/Web/API/Document/onreset)
impl TDocument with set_onreset(self : Self, onreset : (Event) -> JsValue) -> Unit {
  document_set_onreset_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onreset)),
  )
}

///|
/// [Document.onresize](https://developer.mozilla.org/en-US/docs/Web/API/Document/onresize)
impl TDocument with onresize(self : Self) -> EventHandler {
  document_onresize_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onresize](https://developer.mozilla.org/en-US/docs/Web/API/Document/onresize)
impl TDocument with set_onresize(self : Self, onresize : (Event) -> JsValue) -> Unit {
  document_set_onresize_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onresize)),
  )
}

///|
/// [Document.onscroll](https://developer.mozilla.org/en-US/docs/Web/API/Document/onscroll)
impl TDocument with onscroll(self : Self) -> EventHandler {
  document_onscroll_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onscroll](https://developer.mozilla.org/en-US/docs/Web/API/Document/onscroll)
impl TDocument with set_onscroll(self : Self, onscroll : (Event) -> JsValue) -> Unit {
  document_set_onscroll_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onscroll)),
  )
}

///|
/// [Document.onscrollend](https://developer.mozilla.org/en-US/docs/Web/API/Document/onscrollend)
impl TDocument with onscrollend(self : Self) -> EventHandler {
  document_onscrollend_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onscrollend](https://developer.mozilla.org/en-US/docs/Web/API/Document/onscrollend)
impl TDocument with set_onscrollend(
  self : Self,
  onscrollend : (Event) -> JsValue,
) -> Unit {
  document_set_onscrollend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onscrollend)),
  )
}

///|
/// [Document.onsecuritypolicyviolation](https://developer.mozilla.org/en-US/docs/Web/API/Document/onsecuritypolicyviolation)
impl TDocument with onsecuritypolicyviolation(self : Self) -> EventHandler {
  document_onsecuritypolicyviolation_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onsecuritypolicyviolation](https://developer.mozilla.org/en-US/docs/Web/API/Document/onsecuritypolicyviolation)
impl TDocument with set_onsecuritypolicyviolation(
  self : Self,
  onsecuritypolicyviolation : (Event) -> JsValue,
) -> Unit {
  document_set_onsecuritypolicyviolation_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onsecuritypolicyviolation)),
  )
}

///|
/// [Document.onseeked](https://developer.mozilla.org/en-US/docs/Web/API/Document/onseeked)
impl TDocument with onseeked(self : Self) -> EventHandler {
  document_onseeked_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onseeked](https://developer.mozilla.org/en-US/docs/Web/API/Document/onseeked)
impl TDocument with set_onseeked(self : Self, onseeked : (Event) -> JsValue) -> Unit {
  document_set_onseeked_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onseeked)),
  )
}

///|
/// [Document.onseeking](https://developer.mozilla.org/en-US/docs/Web/API/Document/onseeking)
impl TDocument with onseeking(self : Self) -> EventHandler {
  document_onseeking_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onseeking](https://developer.mozilla.org/en-US/docs/Web/API/Document/onseeking)
impl TDocument with set_onseeking(self : Self, onseeking : (Event) -> JsValue) -> Unit {
  document_set_onseeking_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onseeking)),
  )
}

///|
/// [Document.onselect](https://developer.mozilla.org/en-US/docs/Web/API/Document/onselect)
impl TDocument with onselect(self : Self) -> EventHandler {
  document_onselect_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onselect](https://developer.mozilla.org/en-US/docs/Web/API/Document/onselect)
impl TDocument with set_onselect(self : Self, onselect : (Event) -> JsValue) -> Unit {
  document_set_onselect_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onselect)),
  )
}

///|
/// [Document.onslotchange](https://developer.mozilla.org/en-US/docs/Web/API/Document/onslotchange)
impl TDocument with onslotchange(self : Self) -> EventHandler {
  document_onslotchange_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onslotchange](https://developer.mozilla.org/en-US/docs/Web/API/Document/onslotchange)
impl TDocument with set_onslotchange(
  self : Self,
  onslotchange : (Event) -> JsValue,
) -> Unit {
  document_set_onslotchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onslotchange)),
  )
}

///|
/// [Document.onstalled](https://developer.mozilla.org/en-US/docs/Web/API/Document/onstalled)
impl TDocument with onstalled(self : Self) -> EventHandler {
  document_onstalled_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onstalled](https://developer.mozilla.org/en-US/docs/Web/API/Document/onstalled)
impl TDocument with set_onstalled(self : Self, onstalled : (Event) -> JsValue) -> Unit {
  document_set_onstalled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onstalled)),
  )
}

///|
/// [Document.onsubmit](https://developer.mozilla.org/en-US/docs/Web/API/Document/onsubmit)
impl TDocument with onsubmit(self : Self) -> EventHandler {
  document_onsubmit_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onsubmit](https://developer.mozilla.org/en-US/docs/Web/API/Document/onsubmit)
impl TDocument with set_onsubmit(self : Self, onsubmit : (Event) -> JsValue) -> Unit {
  document_set_onsubmit_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onsubmit)),
  )
}

///|
/// [Document.onsuspend](https://developer.mozilla.org/en-US/docs/Web/API/Document/onsuspend)
impl TDocument with onsuspend(self : Self) -> EventHandler {
  document_onsuspend_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onsuspend](https://developer.mozilla.org/en-US/docs/Web/API/Document/onsuspend)
impl TDocument with set_onsuspend(self : Self, onsuspend : (Event) -> JsValue) -> Unit {
  document_set_onsuspend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onsuspend)),
  )
}

///|
/// [Document.ontimeupdate](https://developer.mozilla.org/en-US/docs/Web/API/Document/ontimeupdate)
impl TDocument with ontimeupdate(self : Self) -> EventHandler {
  document_ontimeupdate_ffi(TJsValue::to_js(self))
}

///|
/// [Document.ontimeupdate](https://developer.mozilla.org/en-US/docs/Web/API/Document/ontimeupdate)
impl TDocument with set_ontimeupdate(
  self : Self,
  ontimeupdate : (Event) -> JsValue,
) -> Unit {
  document_set_ontimeupdate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ontimeupdate)),
  )
}

///|
/// [Document.ontoggle](https://developer.mozilla.org/en-US/docs/Web/API/Document/ontoggle)
impl TDocument with ontoggle(self : Self) -> EventHandler {
  document_ontoggle_ffi(TJsValue::to_js(self))
}

///|
/// [Document.ontoggle](https://developer.mozilla.org/en-US/docs/Web/API/Document/ontoggle)
impl TDocument with set_ontoggle(self : Self, ontoggle : (Event) -> JsValue) -> Unit {
  document_set_ontoggle_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ontoggle)),
  )
}

///|
/// [Document.onvolumechange](https://developer.mozilla.org/en-US/docs/Web/API/Document/onvolumechange)
impl TDocument with onvolumechange(self : Self) -> EventHandler {
  document_onvolumechange_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onvolumechange](https://developer.mozilla.org/en-US/docs/Web/API/Document/onvolumechange)
impl TDocument with set_onvolumechange(
  self : Self,
  onvolumechange : (Event) -> JsValue,
) -> Unit {
  document_set_onvolumechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onvolumechange)),
  )
}

///|
/// [Document.onwaiting](https://developer.mozilla.org/en-US/docs/Web/API/Document/onwaiting)
impl TDocument with onwaiting(self : Self) -> EventHandler {
  document_onwaiting_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onwaiting](https://developer.mozilla.org/en-US/docs/Web/API/Document/onwaiting)
impl TDocument with set_onwaiting(self : Self, onwaiting : (Event) -> JsValue) -> Unit {
  document_set_onwaiting_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onwaiting)),
  )
}

///|
/// [Document.onwebkitanimationend](https://developer.mozilla.org/en-US/docs/Web/API/Document/onwebkitanimationend)
impl TDocument with onwebkitanimationend(self : Self) -> EventHandler {
  document_onwebkitanimationend_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onwebkitanimationend](https://developer.mozilla.org/en-US/docs/Web/API/Document/onwebkitanimationend)
impl TDocument with set_onwebkitanimationend(
  self : Self,
  onwebkitanimationend : (Event) -> JsValue,
) -> Unit {
  document_set_onwebkitanimationend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onwebkitanimationend)),
  )
}

///|
/// [Document.onwebkitanimationiteration](https://developer.mozilla.org/en-US/docs/Web/API/Document/onwebkitanimationiteration)
impl TDocument with onwebkitanimationiteration(self : Self) -> EventHandler {
  document_onwebkitanimationiteration_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onwebkitanimationiteration](https://developer.mozilla.org/en-US/docs/Web/API/Document/onwebkitanimationiteration)
impl TDocument with set_onwebkitanimationiteration(
  self : Self,
  onwebkitanimationiteration : (Event) -> JsValue,
) -> Unit {
  document_set_onwebkitanimationiteration_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onwebkitanimationiteration)),
  )
}

///|
/// [Document.onwebkitanimationstart](https://developer.mozilla.org/en-US/docs/Web/API/Document/onwebkitanimationstart)
impl TDocument with onwebkitanimationstart(self : Self) -> EventHandler {
  document_onwebkitanimationstart_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onwebkitanimationstart](https://developer.mozilla.org/en-US/docs/Web/API/Document/onwebkitanimationstart)
impl TDocument with set_onwebkitanimationstart(
  self : Self,
  onwebkitanimationstart : (Event) -> JsValue,
) -> Unit {
  document_set_onwebkitanimationstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onwebkitanimationstart)),
  )
}

///|
/// [Document.onwebkittransitionend](https://developer.mozilla.org/en-US/docs/Web/API/Document/onwebkittransitionend)
impl TDocument with onwebkittransitionend(self : Self) -> EventHandler {
  document_onwebkittransitionend_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onwebkittransitionend](https://developer.mozilla.org/en-US/docs/Web/API/Document/onwebkittransitionend)
impl TDocument with set_onwebkittransitionend(
  self : Self,
  onwebkittransitionend : (Event) -> JsValue,
) -> Unit {
  document_set_onwebkittransitionend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onwebkittransitionend)),
  )
}

///|
/// [Document.onwheel](https://developer.mozilla.org/en-US/docs/Web/API/Document/onwheel)
impl TDocument with onwheel(self : Self) -> EventHandler {
  document_onwheel_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onwheel](https://developer.mozilla.org/en-US/docs/Web/API/Document/onwheel)
impl TDocument with set_onwheel(self : Self, onwheel : (Event) -> JsValue) -> Unit {
  document_set_onwheel_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onwheel)),
  )
}

///|
/// [Document.ontouchstart](https://developer.mozilla.org/en-US/docs/Web/API/Document/ontouchstart)
impl TDocument with ontouchstart(self : Self) -> EventHandler {
  document_ontouchstart_ffi(TJsValue::to_js(self))
}

///|
/// [Document.ontouchstart](https://developer.mozilla.org/en-US/docs/Web/API/Document/ontouchstart)
impl TDocument with set_ontouchstart(
  self : Self,
  ontouchstart : (Event) -> JsValue,
) -> Unit {
  document_set_ontouchstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ontouchstart)),
  )
}

///|
/// [Document.ontouchend](https://developer.mozilla.org/en-US/docs/Web/API/Document/ontouchend)
impl TDocument with ontouchend(self : Self) -> EventHandler {
  document_ontouchend_ffi(TJsValue::to_js(self))
}

///|
/// [Document.ontouchend](https://developer.mozilla.org/en-US/docs/Web/API/Document/ontouchend)
impl TDocument with set_ontouchend(self : Self, ontouchend : (Event) -> JsValue) -> Unit {
  document_set_ontouchend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ontouchend)),
  )
}

///|
/// [Document.ontouchmove](https://developer.mozilla.org/en-US/docs/Web/API/Document/ontouchmove)
impl TDocument with ontouchmove(self : Self) -> EventHandler {
  document_ontouchmove_ffi(TJsValue::to_js(self))
}

///|
/// [Document.ontouchmove](https://developer.mozilla.org/en-US/docs/Web/API/Document/ontouchmove)
impl TDocument with set_ontouchmove(
  self : Self,
  ontouchmove : (Event) -> JsValue,
) -> Unit {
  document_set_ontouchmove_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ontouchmove)),
  )
}

///|
/// [Document.ontouchcancel](https://developer.mozilla.org/en-US/docs/Web/API/Document/ontouchcancel)
impl TDocument with ontouchcancel(self : Self) -> EventHandler {
  document_ontouchcancel_ffi(TJsValue::to_js(self))
}

///|
/// [Document.ontouchcancel](https://developer.mozilla.org/en-US/docs/Web/API/Document/ontouchcancel)
impl TDocument with set_ontouchcancel(
  self : Self,
  ontouchcancel : (Event) -> JsValue,
) -> Unit {
  document_set_ontouchcancel_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ontouchcancel)),
  )
}

///|
/// [Document.onpointerover](https://developer.mozilla.org/en-US/docs/Web/API/Document/onpointerover)
impl TDocument with onpointerover(self : Self) -> EventHandler {
  document_onpointerover_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onpointerover](https://developer.mozilla.org/en-US/docs/Web/API/Document/onpointerover)
impl TDocument with set_onpointerover(
  self : Self,
  onpointerover : (Event) -> JsValue,
) -> Unit {
  document_set_onpointerover_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointerover)),
  )
}

///|
/// [Document.onpointerenter](https://developer.mozilla.org/en-US/docs/Web/API/Document/onpointerenter)
impl TDocument with onpointerenter(self : Self) -> EventHandler {
  document_onpointerenter_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onpointerenter](https://developer.mozilla.org/en-US/docs/Web/API/Document/onpointerenter)
impl TDocument with set_onpointerenter(
  self : Self,
  onpointerenter : (Event) -> JsValue,
) -> Unit {
  document_set_onpointerenter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointerenter)),
  )
}

///|
/// [Document.onpointerdown](https://developer.mozilla.org/en-US/docs/Web/API/Document/onpointerdown)
impl TDocument with onpointerdown(self : Self) -> EventHandler {
  document_onpointerdown_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onpointerdown](https://developer.mozilla.org/en-US/docs/Web/API/Document/onpointerdown)
impl TDocument with set_onpointerdown(
  self : Self,
  onpointerdown : (Event) -> JsValue,
) -> Unit {
  document_set_onpointerdown_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointerdown)),
  )
}

///|
/// [Document.onpointermove](https://developer.mozilla.org/en-US/docs/Web/API/Document/onpointermove)
impl TDocument with onpointermove(self : Self) -> EventHandler {
  document_onpointermove_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onpointermove](https://developer.mozilla.org/en-US/docs/Web/API/Document/onpointermove)
impl TDocument with set_onpointermove(
  self : Self,
  onpointermove : (Event) -> JsValue,
) -> Unit {
  document_set_onpointermove_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointermove)),
  )
}

///|
/// [Document.onpointerrawupdate](https://developer.mozilla.org/en-US/docs/Web/API/Document/onpointerrawupdate)
impl TDocument with onpointerrawupdate(self : Self) -> EventHandler {
  document_onpointerrawupdate_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onpointerrawupdate](https://developer.mozilla.org/en-US/docs/Web/API/Document/onpointerrawupdate)
impl TDocument with set_onpointerrawupdate(
  self : Self,
  onpointerrawupdate : (Event) -> JsValue,
) -> Unit {
  document_set_onpointerrawupdate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointerrawupdate)),
  )
}

///|
/// [Document.onpointerup](https://developer.mozilla.org/en-US/docs/Web/API/Document/onpointerup)
impl TDocument with onpointerup(self : Self) -> EventHandler {
  document_onpointerup_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onpointerup](https://developer.mozilla.org/en-US/docs/Web/API/Document/onpointerup)
impl TDocument with set_onpointerup(
  self : Self,
  onpointerup : (Event) -> JsValue,
) -> Unit {
  document_set_onpointerup_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointerup)),
  )
}

///|
/// [Document.onpointercancel](https://developer.mozilla.org/en-US/docs/Web/API/Document/onpointercancel)
impl TDocument with onpointercancel(self : Self) -> EventHandler {
  document_onpointercancel_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onpointercancel](https://developer.mozilla.org/en-US/docs/Web/API/Document/onpointercancel)
impl TDocument with set_onpointercancel(
  self : Self,
  onpointercancel : (Event) -> JsValue,
) -> Unit {
  document_set_onpointercancel_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointercancel)),
  )
}

///|
/// [Document.onpointerout](https://developer.mozilla.org/en-US/docs/Web/API/Document/onpointerout)
impl TDocument with onpointerout(self : Self) -> EventHandler {
  document_onpointerout_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onpointerout](https://developer.mozilla.org/en-US/docs/Web/API/Document/onpointerout)
impl TDocument with set_onpointerout(
  self : Self,
  onpointerout : (Event) -> JsValue,
) -> Unit {
  document_set_onpointerout_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointerout)),
  )
}

///|
/// [Document.onpointerleave](https://developer.mozilla.org/en-US/docs/Web/API/Document/onpointerleave)
impl TDocument with onpointerleave(self : Self) -> EventHandler {
  document_onpointerleave_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onpointerleave](https://developer.mozilla.org/en-US/docs/Web/API/Document/onpointerleave)
impl TDocument with set_onpointerleave(
  self : Self,
  onpointerleave : (Event) -> JsValue,
) -> Unit {
  document_set_onpointerleave_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointerleave)),
  )
}

///|
/// [Document.ongotpointercapture](https://developer.mozilla.org/en-US/docs/Web/API/Document/ongotpointercapture)
impl TDocument with ongotpointercapture(self : Self) -> EventHandler {
  document_ongotpointercapture_ffi(TJsValue::to_js(self))
}

///|
/// [Document.ongotpointercapture](https://developer.mozilla.org/en-US/docs/Web/API/Document/ongotpointercapture)
impl TDocument with set_ongotpointercapture(
  self : Self,
  ongotpointercapture : (Event) -> JsValue,
) -> Unit {
  document_set_ongotpointercapture_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ongotpointercapture)),
  )
}

///|
/// [Document.onlostpointercapture](https://developer.mozilla.org/en-US/docs/Web/API/Document/onlostpointercapture)
impl TDocument with onlostpointercapture(self : Self) -> EventHandler {
  document_onlostpointercapture_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onlostpointercapture](https://developer.mozilla.org/en-US/docs/Web/API/Document/onlostpointercapture)
impl TDocument with set_onlostpointercapture(
  self : Self,
  onlostpointercapture : (Event) -> JsValue,
) -> Unit {
  document_set_onlostpointercapture_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onlostpointercapture)),
  )
}

///|
/// [Document.onselectstart](https://developer.mozilla.org/en-US/docs/Web/API/Document/onselectstart)
impl TDocument with onselectstart(self : Self) -> EventHandler {
  document_onselectstart_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onselectstart](https://developer.mozilla.org/en-US/docs/Web/API/Document/onselectstart)
impl TDocument with set_onselectstart(
  self : Self,
  onselectstart : (Event) -> JsValue,
) -> Unit {
  document_set_onselectstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onselectstart)),
  )
}

///|
/// [Document.onselectionchange](https://developer.mozilla.org/en-US/docs/Web/API/Document/onselectionchange)
impl TDocument with onselectionchange(self : Self) -> EventHandler {
  document_onselectionchange_ffi(TJsValue::to_js(self))
}

///|
/// [Document.onselectionchange](https://developer.mozilla.org/en-US/docs/Web/API/Document/onselectionchange)
impl TDocument with set_onselectionchange(
  self : Self,
  onselectionchange : (Event) -> JsValue,
) -> Unit {
  document_set_onselectionchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onselectionchange)),
  )
}

///|
/// [Document.getBoxQuads](https://developer.mozilla.org/en-US/docs/Web/API/Document/getBoxQuads)
impl TDocument with get_box_quads(
  self : Self,
  options? : BoxQuadOptions = BoxQuadOptions::empty(),
) -> Array[DOMQuad] {
  document_get_box_quads_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
/// [Document.convertQuadFromNode](https://developer.mozilla.org/en-US/docs/Web/API/Document/convertQuadFromNode)
impl TDocument with convert_quad_from_node(
  self : Self,
  quad : DOMQuadInit,
  from : &TGeometryNode,
  options? : ConvertCoordinateOptions = ConvertCoordinateOptions::empty(),
) -> DOMQuad {
  document_convert_quad_from_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(quad),
    from.to_js(),
    TJsValue::to_js(options),
  )
}

///|
/// [Document.convertRectFromNode](https://developer.mozilla.org/en-US/docs/Web/API/Document/convertRectFromNode)
impl TDocument with convert_rect_from_node(
  self : Self,
  rect : &TDOMRectReadOnly,
  from : &TGeometryNode,
  options? : ConvertCoordinateOptions = ConvertCoordinateOptions::empty(),
) -> DOMQuad {
  document_convert_rect_from_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(rect),
    from.to_js(),
    TJsValue::to_js(options),
  )
}

///|
/// [Document.convertPointFromNode](https://developer.mozilla.org/en-US/docs/Web/API/Document/convertPointFromNode)
impl TDocument with convert_point_from_node(
  self : Self,
  point : DOMPointInit,
  from : &TGeometryNode,
  options? : ConvertCoordinateOptions = ConvertCoordinateOptions::empty(),
) -> DOMPoint {
  document_convert_point_from_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(point),
    from.to_js(),
    TJsValue::to_js(options),
  )
}

///|
impl TDocument with element_from_point(self : Self, x : Double, y : Double) -> Element {
  self.element_from_point_opt(x, y).unwrap()
}

///|
impl TDocument with caret_position_from_point(
  self : Self,
  x : Double,
  y : Double,
  options? : CaretPositionFromPointOptions = CaretPositionFromPointOptions::empty(),
) -> CaretPosition {
  self.caret_position_from_point_opt(x, y, options~).unwrap()
}

///|
impl TDocument with get_selection(self : Self) -> Selection {
  self.get_selection_opt().unwrap()
}

///|
impl TDocument with get_element_by_id(self : Self, element_id : String) -> Element {
  self.get_element_by_id_opt(element_id).unwrap()
}

///|
impl TDocument with query_selector(self : Self, selectors : String) -> Element {
  self.query_selector_opt(selectors).unwrap()
}
