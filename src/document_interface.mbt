// Do not edit. This file is generated.
// MoonBit type: Document
// Specifications: selection-api.idl, html.idl, dom.idl, fullscreen.idl, web-animations.idl, SVG.idl, cssom-view.idl

///|
/// [Document](https://developer.mozilla.org/en-US/docs/Web/API/Document)
#external
pub type Document

///|
pub impl TJsValue for Document with to_js(self : Document) -> JsValue = "%identity"

///|
pub impl FromJsAny for Document with from_js_any(value : JsAny) -> Document = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TDocument] Document::into(self : Document) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TDocument] Document::unsafe_into(self : Document) -> T = "%identity"

///|
pub impl HasConstructor for Document with constructor_name() {
  "Document"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TDocument + HasConstructor] Document::try_into(
  self : Document,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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
  what_to_show? : UInt,
  filter? : (Node) -> UInt,
) -> NodeIterator {
  document_create_node_iterator_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(root),
    opt_to_js(what_to_show),
    match filter {
      Some(v) => TJsValue::to_js(node_filter_ffi(v))
      None => JsValue::undefined()
    },
  )
}

///|
/// [Document.createTreeWalker](https://developer.mozilla.org/en-US/docs/Web/API/Document/createTreeWalker)
impl TDocument with create_tree_walker(
  self : Self,
  root : &TNode,
  what_to_show? : UInt,
  filter? : (Node) -> UInt,
) -> TreeWalker {
  document_create_tree_walker_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(root),
    opt_to_js(what_to_show),
    match filter {
      Some(v) => TJsValue::to_js(node_filter_ffi(v))
      None => JsValue::undefined()
    },
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
  show_ui? : Bool,
  value? : String,
) -> Bool {
  document_exec_command_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(command_id),
    opt_to_js(show_ui),
    opt_to_js(value),
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
  options? : CaretPositionFromPointOptions,
) -> CaretPosition? {
  document_caret_position_from_point_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    opt_to_js(options),
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
  resolver? : (String) -> String,
) -> XPathExpression {
  document_create_expression_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(expression),
    match resolver {
      Some(v) => TJsValue::to_js(x_path_ns_resolver_ffi(v))
      None => JsValue::undefined()
    },
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
  resolver? : (String) -> String,
  type_? : UInt,
  result? : &TXPathResult,
) -> XPathResult {
  document_evaluate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(expression),
    TJsValue::to_js(context_node),
    match resolver {
      Some(v) => TJsValue::to_js(x_path_ns_resolver_ffi(v))
      None => JsValue::undefined()
    },
    opt_to_js(type_),
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
impl TDocument with get_box_quads(self : Self, options? : BoxQuadOptions) -> Array[
  DOMQuad,
] {
  document_get_box_quads_ffi(TJsValue::to_js(self), opt_to_js(options))
}

///|
/// [Document.convertQuadFromNode](https://developer.mozilla.org/en-US/docs/Web/API/Document/convertQuadFromNode)
impl TDocument with convert_quad_from_node(
  self : Self,
  quad : DOMQuadInit,
  from : &TGeometryNode,
  options? : ConvertCoordinateOptions,
) -> DOMQuad {
  document_convert_quad_from_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(quad),
    from.to_js(),
    opt_to_js(options),
  )
}

///|
/// [Document.convertRectFromNode](https://developer.mozilla.org/en-US/docs/Web/API/Document/convertRectFromNode)
impl TDocument with convert_rect_from_node(
  self : Self,
  rect : &TDOMRectReadOnly,
  from : &TGeometryNode,
  options? : ConvertCoordinateOptions,
) -> DOMQuad {
  document_convert_rect_from_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(rect),
    from.to_js(),
    opt_to_js(options),
  )
}

///|
/// [Document.convertPointFromNode](https://developer.mozilla.org/en-US/docs/Web/API/Document/convertPointFromNode)
impl TDocument with convert_point_from_node(
  self : Self,
  point : DOMPointInit,
  from : &TGeometryNode,
  options? : ConvertCoordinateOptions,
) -> DOMPoint {
  document_convert_point_from_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(point),
    from.to_js(),
    opt_to_js(options),
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
  options? : CaretPositionFromPointOptions,
) -> CaretPosition {
  let result = match options {
    Some(options) => self.caret_position_from_point_opt(x, y, options~)
    None => self.caret_position_from_point_opt(x, y)
  }
  result.unwrap()
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

///|
#cfg(target="js")
extern "js" fn document_new_ffi() -> Document = "() => new Document()"

///|
#cfg(target="js")
extern "js" fn document_root_element_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.rootElement"

///|
#cfg(target="js")
fn document_root_element_ffi(obj : JsValue) -> SVGSVGElement {
  document_root_element_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_implementation_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.implementation"

///|
#cfg(target="js")
fn document_implementation_ffi(obj : JsValue) -> DOMImplementation {
  document_implementation_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_url_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.URL"

///|
#cfg(target="js")
fn document_url_ffi(obj : JsValue) -> String {
  document_url_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_document_uri_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.documentURI"

///|
#cfg(target="js")
fn document_document_uri_ffi(obj : JsValue) -> String {
  document_document_uri_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_compat_mode_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.compatMode"

///|
#cfg(target="js")
fn document_compat_mode_ffi(obj : JsValue) -> String {
  document_compat_mode_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_character_set_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.characterSet"

///|
#cfg(target="js")
fn document_character_set_ffi(obj : JsValue) -> String {
  document_character_set_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_charset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.charset"

///|
#cfg(target="js")
fn document_charset_ffi(obj : JsValue) -> String {
  document_charset_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_input_encoding_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.inputEncoding"

///|
#cfg(target="js")
fn document_input_encoding_ffi(obj : JsValue) -> String {
  document_input_encoding_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_content_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.contentType"

///|
#cfg(target="js")
fn document_content_type_ffi(obj : JsValue) -> String {
  document_content_type_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_doctype_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.doctype"

///|
#cfg(target="js")
fn document_doctype_ffi(obj : JsValue) -> DocumentType {
  document_doctype_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_document_element_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.documentElement"

///|
#cfg(target="js")
fn document_document_element_ffi(obj : JsValue) -> Element {
  document_document_element_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_get_elements_by_tag_name_ffi_js(
  obj : JsValue,
  qualified_name : JsValue,
) -> JsValue = "(obj, qualified_name) => obj.getElementsByTagName(qualified_name)"

///|
#cfg(target="js")
fn document_get_elements_by_tag_name_ffi(
  obj : JsValue,
  qualified_name : JsValue,
) -> HTMLCollection {
  document_get_elements_by_tag_name_ffi_js(obj, qualified_name).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_get_elements_by_tag_name_ns_ffi_js(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> JsValue = "(obj, namespace_, local_name) => obj.getElementsByTagNameNS(namespace_, local_name)"

///|
#cfg(target="js")
fn document_get_elements_by_tag_name_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> HTMLCollection {
  document_get_elements_by_tag_name_ns_ffi_js(obj, namespace_, local_name).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_get_elements_by_class_name_ffi_js(
  obj : JsValue,
  class_names : JsValue,
) -> JsValue = "(obj, class_names) => obj.getElementsByClassName(class_names)"

///|
#cfg(target="js")
fn document_get_elements_by_class_name_ffi(
  obj : JsValue,
  class_names : JsValue,
) -> HTMLCollection {
  document_get_elements_by_class_name_ffi_js(obj, class_names).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_create_element_ffi_js(
  obj : JsValue,
  local_name : JsValue,
  options : JsValue,
) -> JsValue = "(obj, local_name, options) => obj.createElement(local_name, options)"

///|
#cfg(target="js")
fn document_create_element_ffi(
  obj : JsValue,
  local_name : JsValue,
  options : JsValue,
) -> Element {
  document_create_element_ffi_js(obj, local_name, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_create_element_ns_ffi_js(
  obj : JsValue,
  namespace_ : JsValue,
  qualified_name : JsValue,
  options : JsValue,
) -> JsValue = "(obj, namespace_, qualified_name, options) => obj.createElementNS(namespace_, qualified_name, options)"

///|
#cfg(target="js")
fn document_create_element_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  qualified_name : JsValue,
  options : JsValue,
) -> Element {
  document_create_element_ns_ffi_js(obj, namespace_, qualified_name, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_create_document_fragment_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.createDocumentFragment()"

///|
#cfg(target="js")
fn document_create_document_fragment_ffi(obj : JsValue) -> DocumentFragment {
  document_create_document_fragment_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_create_text_node_ffi_js(
  obj : JsValue,
  data : JsValue,
) -> JsValue = "(obj, data) => obj.createTextNode(data)"

///|
#cfg(target="js")
fn document_create_text_node_ffi(obj : JsValue, data : JsValue) -> Text {
  document_create_text_node_ffi_js(obj, data).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_create_cdata_section_ffi_js(
  obj : JsValue,
  data : JsValue,
) -> JsValue = "(obj, data) => obj.createCDATASection(data)"

///|
#cfg(target="js")
fn document_create_cdata_section_ffi(
  obj : JsValue,
  data : JsValue,
) -> CDATASection {
  document_create_cdata_section_ffi_js(obj, data).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_create_comment_ffi_js(
  obj : JsValue,
  data : JsValue,
) -> JsValue = "(obj, data) => obj.createComment(data)"

///|
#cfg(target="js")
fn document_create_comment_ffi(obj : JsValue, data : JsValue) -> Comment {
  document_create_comment_ffi_js(obj, data).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_create_processing_instruction_ffi_js(
  obj : JsValue,
  target : JsValue,
  data : JsValue,
) -> JsValue = "(obj, target, data) => obj.createProcessingInstruction(target, data)"

///|
#cfg(target="js")
fn document_create_processing_instruction_ffi(
  obj : JsValue,
  target : JsValue,
  data : JsValue,
) -> ProcessingInstruction {
  document_create_processing_instruction_ffi_js(obj, target, data).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_import_node_ffi_js(
  obj : JsValue,
  node : JsValue,
  options : JsValue,
) -> JsValue = "(obj, node, options) => obj.importNode(node, options)"

///|
#cfg(target="js")
fn document_import_node_ffi(
  obj : JsValue,
  node : JsValue,
  options : JsValue,
) -> Node {
  document_import_node_ffi_js(obj, node, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_adopt_node_ffi_js(
  obj : JsValue,
  node : JsValue,
) -> JsValue = "(obj, node) => obj.adoptNode(node)"

///|
#cfg(target="js")
fn document_adopt_node_ffi(obj : JsValue, node : JsValue) -> Node {
  document_adopt_node_ffi_js(obj, node).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_create_attribute_ffi_js(
  obj : JsValue,
  local_name : JsValue,
) -> JsValue = "(obj, local_name) => obj.createAttribute(local_name)"

///|
#cfg(target="js")
fn document_create_attribute_ffi(obj : JsValue, local_name : JsValue) -> Attr {
  document_create_attribute_ffi_js(obj, local_name).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_create_attribute_ns_ffi_js(
  obj : JsValue,
  namespace_ : JsValue,
  qualified_name : JsValue,
) -> JsValue = "(obj, namespace_, qualified_name) => obj.createAttributeNS(namespace_, qualified_name)"

///|
#cfg(target="js")
fn document_create_attribute_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  qualified_name : JsValue,
) -> Attr {
  document_create_attribute_ns_ffi_js(obj, namespace_, qualified_name).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_create_event_ffi_js(
  obj : JsValue,
  interface : JsValue,
) -> JsValue = "(obj, _interface) => obj.createEvent(_interface)"

///|
#cfg(target="js")
fn document_create_event_ffi(obj : JsValue, interface : JsValue) -> Event {
  document_create_event_ffi_js(obj, interface).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_create_range_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.createRange()"

///|
#cfg(target="js")
fn document_create_range_ffi(obj : JsValue) -> Range {
  document_create_range_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_create_node_iterator_ffi_js(
  obj : JsValue,
  root : JsValue,
  what_to_show : JsValue,
  filter : JsValue,
) -> JsValue = "(obj, root, what_to_show, filter) => obj.createNodeIterator(root, what_to_show, filter)"

///|
#cfg(target="js")
fn document_create_node_iterator_ffi(
  obj : JsValue,
  root : JsValue,
  what_to_show : JsValue,
  filter : JsValue,
) -> NodeIterator {
  document_create_node_iterator_ffi_js(obj, root, what_to_show, filter).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_create_tree_walker_ffi_js(
  obj : JsValue,
  root : JsValue,
  what_to_show : JsValue,
  filter : JsValue,
) -> JsValue = "(obj, root, what_to_show, filter) => obj.createTreeWalker(root, what_to_show, filter)"

///|
#cfg(target="js")
fn document_create_tree_walker_ffi(
  obj : JsValue,
  root : JsValue,
  what_to_show : JsValue,
  filter : JsValue,
) -> TreeWalker {
  document_create_tree_walker_ffi_js(obj, root, what_to_show, filter).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_parse_html_unsafe_ffi_js(html : JsValue) -> JsValue = "(html) => Document.parseHTMLUnsafe(html)"

///|
#cfg(target="js")
fn document_parse_html_unsafe_ffi(html : JsValue) -> Document {
  document_parse_html_unsafe_ffi_js(html).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_location_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.location"

///|
#cfg(target="js")
fn document_location_ffi(obj : JsValue) -> Location {
  document_location_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_domain_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.domain"

///|
#cfg(target="js")
fn document_domain_ffi(obj : JsValue) -> String {
  document_domain_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_domain_ffi(obj : JsValue, domain : JsValue) -> Unit = "(obj, domain) => { obj.domain = domain; }"

///|
#cfg(target="js")
extern "js" fn document_referrer_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.referrer"

///|
#cfg(target="js")
fn document_referrer_ffi(obj : JsValue) -> String {
  document_referrer_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_cookie_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cookie"

///|
#cfg(target="js")
fn document_cookie_ffi(obj : JsValue) -> String {
  document_cookie_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_cookie_ffi(obj : JsValue, cookie : JsValue) -> Unit = "(obj, cookie) => { obj.cookie = cookie; }"

///|
#cfg(target="js")
extern "js" fn document_last_modified_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.lastModified"

///|
#cfg(target="js")
fn document_last_modified_ffi(obj : JsValue) -> String {
  document_last_modified_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_ready_state_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.readyState"

///|
#cfg(target="js")
fn document_ready_state_ffi(obj : JsValue) -> DocumentReadyState {
  DocumentReadyState::from_unchecked(
    document_ready_state_ffi_js(obj).unsafe_cast(),
  )
}

///|
#cfg(target="js")
extern "js" fn document_get_ffi(obj : JsValue, name : JsValue) -> JsValue = "(obj, name) => obj[name]"

///|
#cfg(target="js")
extern "js" fn document_title_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.title"

///|
#cfg(target="js")
fn document_title_ffi(obj : JsValue) -> String {
  document_title_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_title_ffi(obj : JsValue, title : JsValue) -> Unit = "(obj, title) => { obj.title = title; }"

///|
#cfg(target="js")
extern "js" fn document_dir_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.dir"

///|
#cfg(target="js")
fn document_dir_ffi(obj : JsValue) -> String {
  document_dir_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_dir_ffi(obj : JsValue, dir : JsValue) -> Unit = "(obj, dir) => { obj.dir = dir; }"

///|
#cfg(target="js")
extern "js" fn document_body_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.body"

///|
#cfg(target="js")
fn document_body_ffi(obj : JsValue) -> HTMLElement {
  document_body_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_body_ffi(obj : JsValue, body : JsValue) -> Unit = "(obj, body) => { obj.body = body; }"

///|
#cfg(target="js")
extern "js" fn document_head_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.head"

///|
#cfg(target="js")
fn document_head_ffi(obj : JsValue) -> HTMLHeadElement {
  document_head_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_images_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.images"

///|
#cfg(target="js")
fn document_images_ffi(obj : JsValue) -> HTMLCollection {
  document_images_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_embeds_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.embeds"

///|
#cfg(target="js")
fn document_embeds_ffi(obj : JsValue) -> HTMLCollection {
  document_embeds_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_plugins_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.plugins"

///|
#cfg(target="js")
fn document_plugins_ffi(obj : JsValue) -> HTMLCollection {
  document_plugins_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_links_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.links"

///|
#cfg(target="js")
fn document_links_ffi(obj : JsValue) -> HTMLCollection {
  document_links_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_forms_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.forms"

///|
#cfg(target="js")
fn document_forms_ffi(obj : JsValue) -> HTMLCollection {
  document_forms_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_scripts_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.scripts"

///|
#cfg(target="js")
fn document_scripts_ffi(obj : JsValue) -> HTMLCollection {
  document_scripts_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_get_elements_by_name_ffi_js(
  obj : JsValue,
  element_name : JsValue,
) -> JsValue = "(obj, element_name) => obj.getElementsByName(element_name)"

///|
#cfg(target="js")
fn document_get_elements_by_name_ffi(
  obj : JsValue,
  element_name : JsValue,
) -> NodeList {
  document_get_elements_by_name_ffi_js(obj, element_name).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_current_script_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.currentScript"

///|
#cfg(target="js")
fn document_current_script_ffi(obj : JsValue) -> HTMLOrSVGScriptElement {
  document_current_script_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_open_ffi_js(
  obj : JsValue,
  unused1 : JsValue,
  unused2 : JsValue,
) -> JsValue = "(obj, unused1, unused2) => obj.open(unused1, unused2)"

///|
#cfg(target="js")
fn document_open_ffi(
  obj : JsValue,
  unused1 : JsValue,
  unused2 : JsValue,
) -> Document {
  document_open_ffi_js(obj, unused1, unused2).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_open_window_ffi(
  obj : JsValue,
  url : JsValue,
  name : JsValue,
  features : JsValue,
) -> JsValue = "(obj, url, name, features) => obj.open(url, name, features)"

///|
#cfg(target="js")
extern "js" fn document_close_ffi(obj : JsValue) -> Unit = "(obj) => obj.close()"

///|
#cfg(target="js")
extern "js" fn document_write_ffi(obj : JsValue, text : JsValue) -> Unit = "(obj, text) => obj.write(...text)"

///|
#cfg(target="js")
extern "js" fn document_writeln_ffi(obj : JsValue, text : JsValue) -> Unit = "(obj, text) => obj.writeln(...text)"

///|
#cfg(target="js")
extern "js" fn document_default_view_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.defaultView"

///|
#cfg(target="js")
fn document_default_view_ffi(obj : JsValue) -> WindowProxy {
  document_default_view_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_has_focus_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.hasFocus()"

///|
#cfg(target="js")
fn document_has_focus_ffi(obj : JsValue) -> Bool {
  document_has_focus_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_design_mode_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.designMode"

///|
#cfg(target="js")
fn document_design_mode_ffi(obj : JsValue) -> String {
  document_design_mode_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_design_mode_ffi(
  obj : JsValue,
  design_mode : JsValue,
) -> Unit = "(obj, designMode) => { obj.designMode = designMode; }"

///|
#cfg(target="js")
extern "js" fn document_exec_command_ffi_js(
  obj : JsValue,
  command_id : JsValue,
  show_ui : JsValue,
  value : JsValue,
) -> JsValue = "(obj, command_id, show_ui, value) => obj.execCommand(command_id, show_ui, value)"

///|
#cfg(target="js")
fn document_exec_command_ffi(
  obj : JsValue,
  command_id : JsValue,
  show_ui : JsValue,
  value : JsValue,
) -> Bool {
  document_exec_command_ffi_js(obj, command_id, show_ui, value).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_query_command_enabled_ffi_js(
  obj : JsValue,
  command_id : JsValue,
) -> JsValue = "(obj, command_id) => obj.queryCommandEnabled(command_id)"

///|
#cfg(target="js")
fn document_query_command_enabled_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> Bool {
  document_query_command_enabled_ffi_js(obj, command_id).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_query_command_indeterm_ffi_js(
  obj : JsValue,
  command_id : JsValue,
) -> JsValue = "(obj, command_id) => obj.queryCommandIndeterm(command_id)"

///|
#cfg(target="js")
fn document_query_command_indeterm_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> Bool {
  document_query_command_indeterm_ffi_js(obj, command_id).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_query_command_state_ffi_js(
  obj : JsValue,
  command_id : JsValue,
) -> JsValue = "(obj, command_id) => obj.queryCommandState(command_id)"

///|
#cfg(target="js")
fn document_query_command_state_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> Bool {
  document_query_command_state_ffi_js(obj, command_id).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_query_command_supported_ffi_js(
  obj : JsValue,
  command_id : JsValue,
) -> JsValue = "(obj, command_id) => obj.queryCommandSupported(command_id)"

///|
#cfg(target="js")
fn document_query_command_supported_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> Bool {
  document_query_command_supported_ffi_js(obj, command_id).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_query_command_value_ffi_js(
  obj : JsValue,
  command_id : JsValue,
) -> JsValue = "(obj, command_id) => obj.queryCommandValue(command_id)"

///|
#cfg(target="js")
fn document_query_command_value_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> String {
  document_query_command_value_ffi_js(obj, command_id).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_hidden_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.hidden"

///|
#cfg(target="js")
fn document_hidden_ffi(obj : JsValue) -> Bool {
  document_hidden_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_visibility_state_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.visibilityState"

///|
#cfg(target="js")
fn document_visibility_state_ffi(obj : JsValue) -> DocumentVisibilityState {
  DocumentVisibilityState::from_unchecked(
    document_visibility_state_ffi_js(obj).unsafe_cast(),
  )
}

///|
#cfg(target="js")
extern "js" fn document_onreadystatechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onreadystatechange"

///|
#cfg(target="js")
fn document_onreadystatechange_ffi(obj : JsValue) -> EventHandler {
  document_onreadystatechange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onreadystatechange_ffi(
  obj : JsValue,
  onreadystatechange : JsValue,
) -> Unit = "(obj, onreadystatechange) => { obj.onreadystatechange = onreadystatechange; }"

///|
#cfg(target="js")
extern "js" fn document_onvisibilitychange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onvisibilitychange"

///|
#cfg(target="js")
fn document_onvisibilitychange_ffi(obj : JsValue) -> EventHandler {
  document_onvisibilitychange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onvisibilitychange_ffi(
  obj : JsValue,
  onvisibilitychange : JsValue,
) -> Unit = "(obj, onvisibilitychange) => { obj.onvisibilitychange = onvisibilitychange; }"

///|
#cfg(target="js")
extern "js" fn document_fg_color_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.fgColor"

///|
#cfg(target="js")
fn document_fg_color_ffi(obj : JsValue) -> String {
  document_fg_color_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_fg_color_ffi(
  obj : JsValue,
  fg_color : JsValue,
) -> Unit = "(obj, fgColor) => { obj.fgColor = fgColor; }"

///|
#cfg(target="js")
extern "js" fn document_link_color_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.linkColor"

///|
#cfg(target="js")
fn document_link_color_ffi(obj : JsValue) -> String {
  document_link_color_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_link_color_ffi(
  obj : JsValue,
  link_color : JsValue,
) -> Unit = "(obj, linkColor) => { obj.linkColor = linkColor; }"

///|
#cfg(target="js")
extern "js" fn document_vlink_color_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.vlinkColor"

///|
#cfg(target="js")
fn document_vlink_color_ffi(obj : JsValue) -> String {
  document_vlink_color_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_vlink_color_ffi(
  obj : JsValue,
  vlink_color : JsValue,
) -> Unit = "(obj, vlinkColor) => { obj.vlinkColor = vlinkColor; }"

///|
#cfg(target="js")
extern "js" fn document_alink_color_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.alinkColor"

///|
#cfg(target="js")
fn document_alink_color_ffi(obj : JsValue) -> String {
  document_alink_color_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_alink_color_ffi(
  obj : JsValue,
  alink_color : JsValue,
) -> Unit = "(obj, alinkColor) => { obj.alinkColor = alinkColor; }"

///|
#cfg(target="js")
extern "js" fn document_bg_color_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.bgColor"

///|
#cfg(target="js")
fn document_bg_color_ffi(obj : JsValue) -> String {
  document_bg_color_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_bg_color_ffi(
  obj : JsValue,
  bg_color : JsValue,
) -> Unit = "(obj, bgColor) => { obj.bgColor = bgColor; }"

///|
#cfg(target="js")
extern "js" fn document_anchors_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.anchors"

///|
#cfg(target="js")
fn document_anchors_ffi(obj : JsValue) -> HTMLCollection {
  document_anchors_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_applets_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.applets"

///|
#cfg(target="js")
fn document_applets_ffi(obj : JsValue) -> HTMLCollection {
  document_applets_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_clear_ffi(obj : JsValue) -> Unit = "(obj) => obj.clear()"

///|
#cfg(target="js")
extern "js" fn document_capture_events_ffi(obj : JsValue) -> Unit = "(obj) => obj.captureEvents()"

///|
#cfg(target="js")
extern "js" fn document_release_events_ffi(obj : JsValue) -> Unit = "(obj) => obj.releaseEvents()"

///|
#cfg(target="js")
extern "js" fn document_all_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.all"

///|
#cfg(target="js")
fn document_all_ffi(obj : JsValue) -> HTMLAllCollection {
  document_all_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_element_from_point_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "(obj, x, y) => obj.elementFromPoint(x, y)"

///|
#cfg(target="js")
extern "js" fn document_elements_from_point_ffi_js(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "(obj, x, y) => obj.elementsFromPoint(x, y)"

///|
#cfg(target="js")
fn document_elements_from_point_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Array[Element] {
  document_elements_from_point_ffi_js(obj, x, y).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_caret_position_from_point_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  options : JsValue,
) -> JsValue = "(obj, x, y, options) => obj.caretPositionFromPoint(x, y, options)"

///|
#cfg(target="js")
extern "js" fn document_scrolling_element_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.scrollingElement"

///|
#cfg(target="js")
fn document_scrolling_element_ffi(obj : JsValue) -> Element {
  document_scrolling_element_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_fullscreen_enabled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.fullscreenEnabled"

///|
#cfg(target="js")
fn document_fullscreen_enabled_ffi(obj : JsValue) -> Bool {
  document_fullscreen_enabled_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_fullscreen_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.fullscreen"

///|
#cfg(target="js")
fn document_fullscreen_ffi(obj : JsValue) -> Bool {
  document_fullscreen_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_exit_fullscreen_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.exitFullscreen()"

///|
#cfg(target="js")
fn document_exit_fullscreen_ffi(obj : JsValue) -> JsPromise[JsValue] {
  document_exit_fullscreen_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_onfullscreenchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onfullscreenchange"

///|
#cfg(target="js")
fn document_onfullscreenchange_ffi(obj : JsValue) -> EventHandler {
  document_onfullscreenchange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onfullscreenchange_ffi(
  obj : JsValue,
  onfullscreenchange : JsValue,
) -> Unit = "(obj, onfullscreenchange) => { obj.onfullscreenchange = onfullscreenchange; }"

///|
#cfg(target="js")
extern "js" fn document_onfullscreenerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onfullscreenerror"

///|
#cfg(target="js")
fn document_onfullscreenerror_ffi(obj : JsValue) -> EventHandler {
  document_onfullscreenerror_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onfullscreenerror_ffi(
  obj : JsValue,
  onfullscreenerror : JsValue,
) -> Unit = "(obj, onfullscreenerror) => { obj.onfullscreenerror = onfullscreenerror; }"

///|
#cfg(target="js")
extern "js" fn document_get_selection_ffi(obj : JsValue) -> JsValue = "(obj) => obj.getSelection()"

///|
#cfg(target="js")
extern "js" fn document_timeline_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.timeline"

///|
#cfg(target="js")
fn document_timeline_ffi(obj : JsValue) -> DocumentTimeline {
  document_timeline_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_get_element_by_id_ffi(
  obj : JsValue,
  element_id : JsValue,
) -> JsValue = "(obj, element_id) => obj.getElementById(element_id)"

///|
#cfg(target="js")
extern "js" fn document_custom_element_registry_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.customElementRegistry"

///|
#cfg(target="js")
fn document_custom_element_registry_ffi(obj : JsValue) -> CustomElementRegistry {
  document_custom_element_registry_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_active_element_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.activeElement"

///|
#cfg(target="js")
fn document_active_element_ffi(obj : JsValue) -> Element {
  document_active_element_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_style_sheets_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.styleSheets"

///|
#cfg(target="js")
fn document_style_sheets_ffi(obj : JsValue) -> StyleSheetList {
  document_style_sheets_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_adopted_style_sheets_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.adoptedStyleSheets"

///|
#cfg(target="js")
fn document_adopted_style_sheets_ffi(obj : JsValue) -> Array[CSSStyleSheet] {
  document_adopted_style_sheets_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_adopted_style_sheets_ffi(
  obj : JsValue,
  adopted_style_sheets : JsValue,
) -> Unit = "(obj, adoptedStyleSheets) => { obj.adoptedStyleSheets = adoptedStyleSheets; }"

///|
#cfg(target="js")
extern "js" fn document_fullscreen_element_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.fullscreenElement"

///|
#cfg(target="js")
fn document_fullscreen_element_ffi(obj : JsValue) -> Element {
  document_fullscreen_element_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_get_animations_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.getAnimations()"

///|
#cfg(target="js")
fn document_get_animations_ffi(obj : JsValue) -> Array[Animation] {
  document_get_animations_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_children_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.children"

///|
#cfg(target="js")
fn document_children_ffi(obj : JsValue) -> HTMLCollection {
  document_children_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_first_element_child_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.firstElementChild"

///|
#cfg(target="js")
fn document_first_element_child_ffi(obj : JsValue) -> Element {
  document_first_element_child_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_last_element_child_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.lastElementChild"

///|
#cfg(target="js")
fn document_last_element_child_ffi(obj : JsValue) -> Element {
  document_last_element_child_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_child_element_count_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.childElementCount"

///|
#cfg(target="js")
fn document_child_element_count_ffi(obj : JsValue) -> UInt {
  document_child_element_count_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_prepend_ffi(obj : JsValue, nodes : JsValue) -> Unit = "(obj, nodes) => obj.prepend(...nodes)"

///|
#cfg(target="js")
extern "js" fn document_append_ffi(obj : JsValue, nodes : JsValue) -> Unit = "(obj, nodes) => obj.append(...nodes)"

///|
#cfg(target="js")
extern "js" fn document_replace_children_ffi(
  obj : JsValue,
  nodes : JsValue,
) -> Unit = "(obj, nodes) => obj.replaceChildren(...nodes)"

///|
#cfg(target="js")
extern "js" fn document_move_before_ffi(
  obj : JsValue,
  node : JsValue,
  child : JsValue,
) -> Unit = "(obj, node, child) => obj.moveBefore(node, child)"

///|
#cfg(target="js")
extern "js" fn document_query_selector_ffi(
  obj : JsValue,
  selectors : JsValue,
) -> JsValue = "(obj, selectors) => obj.querySelector(selectors)"

///|
#cfg(target="js")
extern "js" fn document_query_selector_all_ffi_js(
  obj : JsValue,
  selectors : JsValue,
) -> JsValue = "(obj, selectors) => obj.querySelectorAll(selectors)"

///|
#cfg(target="js")
fn document_query_selector_all_ffi(
  obj : JsValue,
  selectors : JsValue,
) -> NodeList {
  document_query_selector_all_ffi_js(obj, selectors).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_create_expression_ffi_js(
  obj : JsValue,
  expression : JsValue,
  resolver : JsValue,
) -> JsValue = "(obj, expression, resolver) => obj.createExpression(expression, resolver)"

///|
#cfg(target="js")
fn document_create_expression_ffi(
  obj : JsValue,
  expression : JsValue,
  resolver : JsValue,
) -> XPathExpression {
  document_create_expression_ffi_js(obj, expression, resolver).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_create_ns_resolver_ffi_js(
  obj : JsValue,
  node_resolver : JsValue,
) -> JsValue = "(obj, node_resolver) => obj.createNSResolver(node_resolver)"

///|
#cfg(target="js")
fn document_create_ns_resolver_ffi(
  obj : JsValue,
  node_resolver : JsValue,
) -> Node {
  document_create_ns_resolver_ffi_js(obj, node_resolver).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_evaluate_ffi_js(
  obj : JsValue,
  expression : JsValue,
  context_node : JsValue,
  resolver : JsValue,
  type_ : JsValue,
  result : JsValue,
) -> JsValue = "(obj, expression, context_node, resolver, type_, result) => obj.evaluate(expression, context_node, resolver, type_, result)"

///|
#cfg(target="js")
fn document_evaluate_ffi(
  obj : JsValue,
  expression : JsValue,
  context_node : JsValue,
  resolver : JsValue,
  type_ : JsValue,
  result : JsValue,
) -> XPathResult {
  document_evaluate_ffi_js(
    obj, expression, context_node, resolver, type_, result,
  ).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_onabort_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onabort"

///|
#cfg(target="js")
fn document_onabort_ffi(obj : JsValue) -> EventHandler {
  document_onabort_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onabort_ffi(
  obj : JsValue,
  onabort : JsValue,
) -> Unit = "(obj, onabort) => { obj.onabort = onabort; }"

///|
#cfg(target="js")
extern "js" fn document_onauxclick_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onauxclick"

///|
#cfg(target="js")
fn document_onauxclick_ffi(obj : JsValue) -> EventHandler {
  document_onauxclick_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onauxclick_ffi(
  obj : JsValue,
  onauxclick : JsValue,
) -> Unit = "(obj, onauxclick) => { obj.onauxclick = onauxclick; }"

///|
#cfg(target="js")
extern "js" fn document_onbeforeinput_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforeinput"

///|
#cfg(target="js")
fn document_onbeforeinput_ffi(obj : JsValue) -> EventHandler {
  document_onbeforeinput_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onbeforeinput_ffi(
  obj : JsValue,
  onbeforeinput : JsValue,
) -> Unit = "(obj, onbeforeinput) => { obj.onbeforeinput = onbeforeinput; }"

///|
#cfg(target="js")
extern "js" fn document_onbeforematch_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforematch"

///|
#cfg(target="js")
fn document_onbeforematch_ffi(obj : JsValue) -> EventHandler {
  document_onbeforematch_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onbeforematch_ffi(
  obj : JsValue,
  onbeforematch : JsValue,
) -> Unit = "(obj, onbeforematch) => { obj.onbeforematch = onbeforematch; }"

///|
#cfg(target="js")
extern "js" fn document_onbeforetoggle_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforetoggle"

///|
#cfg(target="js")
fn document_onbeforetoggle_ffi(obj : JsValue) -> EventHandler {
  document_onbeforetoggle_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onbeforetoggle_ffi(
  obj : JsValue,
  onbeforetoggle : JsValue,
) -> Unit = "(obj, onbeforetoggle) => { obj.onbeforetoggle = onbeforetoggle; }"

///|
#cfg(target="js")
extern "js" fn document_onblur_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onblur"

///|
#cfg(target="js")
fn document_onblur_ffi(obj : JsValue) -> EventHandler {
  document_onblur_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onblur_ffi(obj : JsValue, onblur : JsValue) -> Unit = "(obj, onblur) => { obj.onblur = onblur; }"

///|
#cfg(target="js")
extern "js" fn document_oncancel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncancel"

///|
#cfg(target="js")
fn document_oncancel_ffi(obj : JsValue) -> EventHandler {
  document_oncancel_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_oncancel_ffi(
  obj : JsValue,
  oncancel : JsValue,
) -> Unit = "(obj, oncancel) => { obj.oncancel = oncancel; }"

///|
#cfg(target="js")
extern "js" fn document_oncanplay_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncanplay"

///|
#cfg(target="js")
fn document_oncanplay_ffi(obj : JsValue) -> EventHandler {
  document_oncanplay_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_oncanplay_ffi(
  obj : JsValue,
  oncanplay : JsValue,
) -> Unit = "(obj, oncanplay) => { obj.oncanplay = oncanplay; }"

///|
#cfg(target="js")
extern "js" fn document_oncanplaythrough_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncanplaythrough"

///|
#cfg(target="js")
fn document_oncanplaythrough_ffi(obj : JsValue) -> EventHandler {
  document_oncanplaythrough_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_oncanplaythrough_ffi(
  obj : JsValue,
  oncanplaythrough : JsValue,
) -> Unit = "(obj, oncanplaythrough) => { obj.oncanplaythrough = oncanplaythrough; }"

///|
#cfg(target="js")
extern "js" fn document_onchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onchange"

///|
#cfg(target="js")
fn document_onchange_ffi(obj : JsValue) -> EventHandler {
  document_onchange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onchange_ffi(
  obj : JsValue,
  onchange : JsValue,
) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"

///|
#cfg(target="js")
extern "js" fn document_onclick_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onclick"

///|
#cfg(target="js")
fn document_onclick_ffi(obj : JsValue) -> EventHandler {
  document_onclick_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onclick_ffi(
  obj : JsValue,
  onclick : JsValue,
) -> Unit = "(obj, onclick) => { obj.onclick = onclick; }"

///|
#cfg(target="js")
extern "js" fn document_onclose_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onclose"

///|
#cfg(target="js")
fn document_onclose_ffi(obj : JsValue) -> EventHandler {
  document_onclose_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onclose_ffi(
  obj : JsValue,
  onclose : JsValue,
) -> Unit = "(obj, onclose) => { obj.onclose = onclose; }"

///|
#cfg(target="js")
extern "js" fn document_oncommand_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncommand"

///|
#cfg(target="js")
fn document_oncommand_ffi(obj : JsValue) -> EventHandler {
  document_oncommand_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_oncommand_ffi(
  obj : JsValue,
  oncommand : JsValue,
) -> Unit = "(obj, oncommand) => { obj.oncommand = oncommand; }"

///|
#cfg(target="js")
extern "js" fn document_oncontextlost_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncontextlost"

///|
#cfg(target="js")
fn document_oncontextlost_ffi(obj : JsValue) -> EventHandler {
  document_oncontextlost_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_oncontextlost_ffi(
  obj : JsValue,
  oncontextlost : JsValue,
) -> Unit = "(obj, oncontextlost) => { obj.oncontextlost = oncontextlost; }"

///|
#cfg(target="js")
extern "js" fn document_oncontextmenu_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncontextmenu"

///|
#cfg(target="js")
fn document_oncontextmenu_ffi(obj : JsValue) -> EventHandler {
  document_oncontextmenu_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_oncontextmenu_ffi(
  obj : JsValue,
  oncontextmenu : JsValue,
) -> Unit = "(obj, oncontextmenu) => { obj.oncontextmenu = oncontextmenu; }"

///|
#cfg(target="js")
extern "js" fn document_oncontextrestored_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncontextrestored"

///|
#cfg(target="js")
fn document_oncontextrestored_ffi(obj : JsValue) -> EventHandler {
  document_oncontextrestored_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_oncontextrestored_ffi(
  obj : JsValue,
  oncontextrestored : JsValue,
) -> Unit = "(obj, oncontextrestored) => { obj.oncontextrestored = oncontextrestored; }"

///|
#cfg(target="js")
extern "js" fn document_oncopy_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncopy"

///|
#cfg(target="js")
fn document_oncopy_ffi(obj : JsValue) -> EventHandler {
  document_oncopy_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_oncopy_ffi(obj : JsValue, oncopy : JsValue) -> Unit = "(obj, oncopy) => { obj.oncopy = oncopy; }"

///|
#cfg(target="js")
extern "js" fn document_oncuechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncuechange"

///|
#cfg(target="js")
fn document_oncuechange_ffi(obj : JsValue) -> EventHandler {
  document_oncuechange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_oncuechange_ffi(
  obj : JsValue,
  oncuechange : JsValue,
) -> Unit = "(obj, oncuechange) => { obj.oncuechange = oncuechange; }"

///|
#cfg(target="js")
extern "js" fn document_oncut_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncut"

///|
#cfg(target="js")
fn document_oncut_ffi(obj : JsValue) -> EventHandler {
  document_oncut_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_oncut_ffi(obj : JsValue, oncut : JsValue) -> Unit = "(obj, oncut) => { obj.oncut = oncut; }"

///|
#cfg(target="js")
extern "js" fn document_ondblclick_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondblclick"

///|
#cfg(target="js")
fn document_ondblclick_ffi(obj : JsValue) -> EventHandler {
  document_ondblclick_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_ondblclick_ffi(
  obj : JsValue,
  ondblclick : JsValue,
) -> Unit = "(obj, ondblclick) => { obj.ondblclick = ondblclick; }"

///|
#cfg(target="js")
extern "js" fn document_ondrag_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondrag"

///|
#cfg(target="js")
fn document_ondrag_ffi(obj : JsValue) -> EventHandler {
  document_ondrag_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_ondrag_ffi(obj : JsValue, ondrag : JsValue) -> Unit = "(obj, ondrag) => { obj.ondrag = ondrag; }"

///|
#cfg(target="js")
extern "js" fn document_ondragend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragend"

///|
#cfg(target="js")
fn document_ondragend_ffi(obj : JsValue) -> EventHandler {
  document_ondragend_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_ondragend_ffi(
  obj : JsValue,
  ondragend : JsValue,
) -> Unit = "(obj, ondragend) => { obj.ondragend = ondragend; }"

///|
#cfg(target="js")
extern "js" fn document_ondragenter_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragenter"

///|
#cfg(target="js")
fn document_ondragenter_ffi(obj : JsValue) -> EventHandler {
  document_ondragenter_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_ondragenter_ffi(
  obj : JsValue,
  ondragenter : JsValue,
) -> Unit = "(obj, ondragenter) => { obj.ondragenter = ondragenter; }"

///|
#cfg(target="js")
extern "js" fn document_ondragleave_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragleave"

///|
#cfg(target="js")
fn document_ondragleave_ffi(obj : JsValue) -> EventHandler {
  document_ondragleave_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_ondragleave_ffi(
  obj : JsValue,
  ondragleave : JsValue,
) -> Unit = "(obj, ondragleave) => { obj.ondragleave = ondragleave; }"

///|
#cfg(target="js")
extern "js" fn document_ondragover_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragover"

///|
#cfg(target="js")
fn document_ondragover_ffi(obj : JsValue) -> EventHandler {
  document_ondragover_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_ondragover_ffi(
  obj : JsValue,
  ondragover : JsValue,
) -> Unit = "(obj, ondragover) => { obj.ondragover = ondragover; }"

///|
#cfg(target="js")
extern "js" fn document_ondragstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragstart"

///|
#cfg(target="js")
fn document_ondragstart_ffi(obj : JsValue) -> EventHandler {
  document_ondragstart_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_ondragstart_ffi(
  obj : JsValue,
  ondragstart : JsValue,
) -> Unit = "(obj, ondragstart) => { obj.ondragstart = ondragstart; }"

///|
#cfg(target="js")
extern "js" fn document_ondrop_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondrop"

///|
#cfg(target="js")
fn document_ondrop_ffi(obj : JsValue) -> EventHandler {
  document_ondrop_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_ondrop_ffi(obj : JsValue, ondrop : JsValue) -> Unit = "(obj, ondrop) => { obj.ondrop = ondrop; }"

///|
#cfg(target="js")
extern "js" fn document_ondurationchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondurationchange"

///|
#cfg(target="js")
fn document_ondurationchange_ffi(obj : JsValue) -> EventHandler {
  document_ondurationchange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_ondurationchange_ffi(
  obj : JsValue,
  ondurationchange : JsValue,
) -> Unit = "(obj, ondurationchange) => { obj.ondurationchange = ondurationchange; }"

///|
#cfg(target="js")
extern "js" fn document_onemptied_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onemptied"

///|
#cfg(target="js")
fn document_onemptied_ffi(obj : JsValue) -> EventHandler {
  document_onemptied_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onemptied_ffi(
  obj : JsValue,
  onemptied : JsValue,
) -> Unit = "(obj, onemptied) => { obj.onemptied = onemptied; }"

///|
#cfg(target="js")
extern "js" fn document_onended_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onended"

///|
#cfg(target="js")
fn document_onended_ffi(obj : JsValue) -> EventHandler {
  document_onended_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onended_ffi(
  obj : JsValue,
  onended : JsValue,
) -> Unit = "(obj, onended) => { obj.onended = onended; }"

///|
#cfg(target="js")
extern "js" fn document_onerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onerror"

///|
#cfg(target="js")
fn document_onerror_ffi(obj : JsValue) -> OnErrorEventHandler {
  document_onerror_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onerror_ffi(
  obj : JsValue,
  onerror : JsValue,
) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
#cfg(target="js")
extern "js" fn document_onfocus_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onfocus"

///|
#cfg(target="js")
fn document_onfocus_ffi(obj : JsValue) -> EventHandler {
  document_onfocus_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onfocus_ffi(
  obj : JsValue,
  onfocus : JsValue,
) -> Unit = "(obj, onfocus) => { obj.onfocus = onfocus; }"

///|
#cfg(target="js")
extern "js" fn document_onformdata_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onformdata"

///|
#cfg(target="js")
fn document_onformdata_ffi(obj : JsValue) -> EventHandler {
  document_onformdata_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onformdata_ffi(
  obj : JsValue,
  onformdata : JsValue,
) -> Unit = "(obj, onformdata) => { obj.onformdata = onformdata; }"

///|
#cfg(target="js")
extern "js" fn document_oninput_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oninput"

///|
#cfg(target="js")
fn document_oninput_ffi(obj : JsValue) -> EventHandler {
  document_oninput_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_oninput_ffi(
  obj : JsValue,
  oninput : JsValue,
) -> Unit = "(obj, oninput) => { obj.oninput = oninput; }"

///|
#cfg(target="js")
extern "js" fn document_oninvalid_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oninvalid"

///|
#cfg(target="js")
fn document_oninvalid_ffi(obj : JsValue) -> EventHandler {
  document_oninvalid_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_oninvalid_ffi(
  obj : JsValue,
  oninvalid : JsValue,
) -> Unit = "(obj, oninvalid) => { obj.oninvalid = oninvalid; }"

///|
#cfg(target="js")
extern "js" fn document_onkeydown_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onkeydown"

///|
#cfg(target="js")
fn document_onkeydown_ffi(obj : JsValue) -> EventHandler {
  document_onkeydown_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onkeydown_ffi(
  obj : JsValue,
  onkeydown : JsValue,
) -> Unit = "(obj, onkeydown) => { obj.onkeydown = onkeydown; }"

///|
#cfg(target="js")
extern "js" fn document_onkeypress_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onkeypress"

///|
#cfg(target="js")
fn document_onkeypress_ffi(obj : JsValue) -> EventHandler {
  document_onkeypress_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onkeypress_ffi(
  obj : JsValue,
  onkeypress : JsValue,
) -> Unit = "(obj, onkeypress) => { obj.onkeypress = onkeypress; }"

///|
#cfg(target="js")
extern "js" fn document_onkeyup_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onkeyup"

///|
#cfg(target="js")
fn document_onkeyup_ffi(obj : JsValue) -> EventHandler {
  document_onkeyup_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onkeyup_ffi(
  obj : JsValue,
  onkeyup : JsValue,
) -> Unit = "(obj, onkeyup) => { obj.onkeyup = onkeyup; }"

///|
#cfg(target="js")
extern "js" fn document_onload_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onload"

///|
#cfg(target="js")
fn document_onload_ffi(obj : JsValue) -> EventHandler {
  document_onload_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onload_ffi(obj : JsValue, onload : JsValue) -> Unit = "(obj, onload) => { obj.onload = onload; }"

///|
#cfg(target="js")
extern "js" fn document_onloadeddata_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onloadeddata"

///|
#cfg(target="js")
fn document_onloadeddata_ffi(obj : JsValue) -> EventHandler {
  document_onloadeddata_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onloadeddata_ffi(
  obj : JsValue,
  onloadeddata : JsValue,
) -> Unit = "(obj, onloadeddata) => { obj.onloadeddata = onloadeddata; }"

///|
#cfg(target="js")
extern "js" fn document_onloadedmetadata_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onloadedmetadata"

///|
#cfg(target="js")
fn document_onloadedmetadata_ffi(obj : JsValue) -> EventHandler {
  document_onloadedmetadata_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onloadedmetadata_ffi(
  obj : JsValue,
  onloadedmetadata : JsValue,
) -> Unit = "(obj, onloadedmetadata) => { obj.onloadedmetadata = onloadedmetadata; }"

///|
#cfg(target="js")
extern "js" fn document_onloadstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onloadstart"

///|
#cfg(target="js")
fn document_onloadstart_ffi(obj : JsValue) -> EventHandler {
  document_onloadstart_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onloadstart_ffi(
  obj : JsValue,
  onloadstart : JsValue,
) -> Unit = "(obj, onloadstart) => { obj.onloadstart = onloadstart; }"

///|
#cfg(target="js")
extern "js" fn document_onmousedown_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmousedown"

///|
#cfg(target="js")
fn document_onmousedown_ffi(obj : JsValue) -> EventHandler {
  document_onmousedown_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onmousedown_ffi(
  obj : JsValue,
  onmousedown : JsValue,
) -> Unit = "(obj, onmousedown) => { obj.onmousedown = onmousedown; }"

///|
#cfg(target="js")
extern "js" fn document_onmouseenter_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseenter"

///|
#cfg(target="js")
fn document_onmouseenter_ffi(obj : JsValue) -> EventHandler {
  document_onmouseenter_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onmouseenter_ffi(
  obj : JsValue,
  onmouseenter : JsValue,
) -> Unit = "(obj, onmouseenter) => { obj.onmouseenter = onmouseenter; }"

///|
#cfg(target="js")
extern "js" fn document_onmouseleave_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseleave"

///|
#cfg(target="js")
fn document_onmouseleave_ffi(obj : JsValue) -> EventHandler {
  document_onmouseleave_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onmouseleave_ffi(
  obj : JsValue,
  onmouseleave : JsValue,
) -> Unit = "(obj, onmouseleave) => { obj.onmouseleave = onmouseleave; }"

///|
#cfg(target="js")
extern "js" fn document_onmousemove_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmousemove"

///|
#cfg(target="js")
fn document_onmousemove_ffi(obj : JsValue) -> EventHandler {
  document_onmousemove_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onmousemove_ffi(
  obj : JsValue,
  onmousemove : JsValue,
) -> Unit = "(obj, onmousemove) => { obj.onmousemove = onmousemove; }"

///|
#cfg(target="js")
extern "js" fn document_onmouseout_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseout"

///|
#cfg(target="js")
fn document_onmouseout_ffi(obj : JsValue) -> EventHandler {
  document_onmouseout_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onmouseout_ffi(
  obj : JsValue,
  onmouseout : JsValue,
) -> Unit = "(obj, onmouseout) => { obj.onmouseout = onmouseout; }"

///|
#cfg(target="js")
extern "js" fn document_onmouseover_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseover"

///|
#cfg(target="js")
fn document_onmouseover_ffi(obj : JsValue) -> EventHandler {
  document_onmouseover_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onmouseover_ffi(
  obj : JsValue,
  onmouseover : JsValue,
) -> Unit = "(obj, onmouseover) => { obj.onmouseover = onmouseover; }"

///|
#cfg(target="js")
extern "js" fn document_onmouseup_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseup"

///|
#cfg(target="js")
fn document_onmouseup_ffi(obj : JsValue) -> EventHandler {
  document_onmouseup_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onmouseup_ffi(
  obj : JsValue,
  onmouseup : JsValue,
) -> Unit = "(obj, onmouseup) => { obj.onmouseup = onmouseup; }"

///|
#cfg(target="js")
extern "js" fn document_onpaste_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpaste"

///|
#cfg(target="js")
fn document_onpaste_ffi(obj : JsValue) -> EventHandler {
  document_onpaste_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onpaste_ffi(
  obj : JsValue,
  onpaste : JsValue,
) -> Unit = "(obj, onpaste) => { obj.onpaste = onpaste; }"

///|
#cfg(target="js")
extern "js" fn document_onpause_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpause"

///|
#cfg(target="js")
fn document_onpause_ffi(obj : JsValue) -> EventHandler {
  document_onpause_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onpause_ffi(
  obj : JsValue,
  onpause : JsValue,
) -> Unit = "(obj, onpause) => { obj.onpause = onpause; }"

///|
#cfg(target="js")
extern "js" fn document_onplay_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onplay"

///|
#cfg(target="js")
fn document_onplay_ffi(obj : JsValue) -> EventHandler {
  document_onplay_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onplay_ffi(obj : JsValue, onplay : JsValue) -> Unit = "(obj, onplay) => { obj.onplay = onplay; }"

///|
#cfg(target="js")
extern "js" fn document_onplaying_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onplaying"

///|
#cfg(target="js")
fn document_onplaying_ffi(obj : JsValue) -> EventHandler {
  document_onplaying_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onplaying_ffi(
  obj : JsValue,
  onplaying : JsValue,
) -> Unit = "(obj, onplaying) => { obj.onplaying = onplaying; }"

///|
#cfg(target="js")
extern "js" fn document_onprogress_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onprogress"

///|
#cfg(target="js")
fn document_onprogress_ffi(obj : JsValue) -> EventHandler {
  document_onprogress_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onprogress_ffi(
  obj : JsValue,
  onprogress : JsValue,
) -> Unit = "(obj, onprogress) => { obj.onprogress = onprogress; }"

///|
#cfg(target="js")
extern "js" fn document_onratechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onratechange"

///|
#cfg(target="js")
fn document_onratechange_ffi(obj : JsValue) -> EventHandler {
  document_onratechange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onratechange_ffi(
  obj : JsValue,
  onratechange : JsValue,
) -> Unit = "(obj, onratechange) => { obj.onratechange = onratechange; }"

///|
#cfg(target="js")
extern "js" fn document_onreset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onreset"

///|
#cfg(target="js")
fn document_onreset_ffi(obj : JsValue) -> EventHandler {
  document_onreset_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onreset_ffi(
  obj : JsValue,
  onreset : JsValue,
) -> Unit = "(obj, onreset) => { obj.onreset = onreset; }"

///|
#cfg(target="js")
extern "js" fn document_onresize_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onresize"

///|
#cfg(target="js")
fn document_onresize_ffi(obj : JsValue) -> EventHandler {
  document_onresize_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onresize_ffi(
  obj : JsValue,
  onresize : JsValue,
) -> Unit = "(obj, onresize) => { obj.onresize = onresize; }"

///|
#cfg(target="js")
extern "js" fn document_onscroll_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onscroll"

///|
#cfg(target="js")
fn document_onscroll_ffi(obj : JsValue) -> EventHandler {
  document_onscroll_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onscroll_ffi(
  obj : JsValue,
  onscroll : JsValue,
) -> Unit = "(obj, onscroll) => { obj.onscroll = onscroll; }"

///|
#cfg(target="js")
extern "js" fn document_onscrollend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onscrollend"

///|
#cfg(target="js")
fn document_onscrollend_ffi(obj : JsValue) -> EventHandler {
  document_onscrollend_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onscrollend_ffi(
  obj : JsValue,
  onscrollend : JsValue,
) -> Unit = "(obj, onscrollend) => { obj.onscrollend = onscrollend; }"

///|
#cfg(target="js")
extern "js" fn document_onsecuritypolicyviolation_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onsecuritypolicyviolation"

///|
#cfg(target="js")
fn document_onsecuritypolicyviolation_ffi(obj : JsValue) -> EventHandler {
  document_onsecuritypolicyviolation_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onsecuritypolicyviolation_ffi(
  obj : JsValue,
  onsecuritypolicyviolation : JsValue,
) -> Unit = "(obj, onsecuritypolicyviolation) => { obj.onsecuritypolicyviolation = onsecuritypolicyviolation; }"

///|
#cfg(target="js")
extern "js" fn document_onseeked_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onseeked"

///|
#cfg(target="js")
fn document_onseeked_ffi(obj : JsValue) -> EventHandler {
  document_onseeked_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onseeked_ffi(
  obj : JsValue,
  onseeked : JsValue,
) -> Unit = "(obj, onseeked) => { obj.onseeked = onseeked; }"

///|
#cfg(target="js")
extern "js" fn document_onseeking_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onseeking"

///|
#cfg(target="js")
fn document_onseeking_ffi(obj : JsValue) -> EventHandler {
  document_onseeking_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onseeking_ffi(
  obj : JsValue,
  onseeking : JsValue,
) -> Unit = "(obj, onseeking) => { obj.onseeking = onseeking; }"

///|
#cfg(target="js")
extern "js" fn document_onselect_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onselect"

///|
#cfg(target="js")
fn document_onselect_ffi(obj : JsValue) -> EventHandler {
  document_onselect_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onselect_ffi(
  obj : JsValue,
  onselect : JsValue,
) -> Unit = "(obj, onselect) => { obj.onselect = onselect; }"

///|
#cfg(target="js")
extern "js" fn document_onslotchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onslotchange"

///|
#cfg(target="js")
fn document_onslotchange_ffi(obj : JsValue) -> EventHandler {
  document_onslotchange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onslotchange_ffi(
  obj : JsValue,
  onslotchange : JsValue,
) -> Unit = "(obj, onslotchange) => { obj.onslotchange = onslotchange; }"

///|
#cfg(target="js")
extern "js" fn document_onstalled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onstalled"

///|
#cfg(target="js")
fn document_onstalled_ffi(obj : JsValue) -> EventHandler {
  document_onstalled_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onstalled_ffi(
  obj : JsValue,
  onstalled : JsValue,
) -> Unit = "(obj, onstalled) => { obj.onstalled = onstalled; }"

///|
#cfg(target="js")
extern "js" fn document_onsubmit_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onsubmit"

///|
#cfg(target="js")
fn document_onsubmit_ffi(obj : JsValue) -> EventHandler {
  document_onsubmit_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onsubmit_ffi(
  obj : JsValue,
  onsubmit : JsValue,
) -> Unit = "(obj, onsubmit) => { obj.onsubmit = onsubmit; }"

///|
#cfg(target="js")
extern "js" fn document_onsuspend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onsuspend"

///|
#cfg(target="js")
fn document_onsuspend_ffi(obj : JsValue) -> EventHandler {
  document_onsuspend_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onsuspend_ffi(
  obj : JsValue,
  onsuspend : JsValue,
) -> Unit = "(obj, onsuspend) => { obj.onsuspend = onsuspend; }"

///|
#cfg(target="js")
extern "js" fn document_ontimeupdate_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontimeupdate"

///|
#cfg(target="js")
fn document_ontimeupdate_ffi(obj : JsValue) -> EventHandler {
  document_ontimeupdate_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_ontimeupdate_ffi(
  obj : JsValue,
  ontimeupdate : JsValue,
) -> Unit = "(obj, ontimeupdate) => { obj.ontimeupdate = ontimeupdate; }"

///|
#cfg(target="js")
extern "js" fn document_ontoggle_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontoggle"

///|
#cfg(target="js")
fn document_ontoggle_ffi(obj : JsValue) -> EventHandler {
  document_ontoggle_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_ontoggle_ffi(
  obj : JsValue,
  ontoggle : JsValue,
) -> Unit = "(obj, ontoggle) => { obj.ontoggle = ontoggle; }"

///|
#cfg(target="js")
extern "js" fn document_onvolumechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onvolumechange"

///|
#cfg(target="js")
fn document_onvolumechange_ffi(obj : JsValue) -> EventHandler {
  document_onvolumechange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onvolumechange_ffi(
  obj : JsValue,
  onvolumechange : JsValue,
) -> Unit = "(obj, onvolumechange) => { obj.onvolumechange = onvolumechange; }"

///|
#cfg(target="js")
extern "js" fn document_onwaiting_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onwaiting"

///|
#cfg(target="js")
fn document_onwaiting_ffi(obj : JsValue) -> EventHandler {
  document_onwaiting_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onwaiting_ffi(
  obj : JsValue,
  onwaiting : JsValue,
) -> Unit = "(obj, onwaiting) => { obj.onwaiting = onwaiting; }"

///|
#cfg(target="js")
extern "js" fn document_onwebkitanimationend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onwebkitanimationend"

///|
#cfg(target="js")
fn document_onwebkitanimationend_ffi(obj : JsValue) -> EventHandler {
  document_onwebkitanimationend_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onwebkitanimationend_ffi(
  obj : JsValue,
  onwebkitanimationend : JsValue,
) -> Unit = "(obj, onwebkitanimationend) => { obj.onwebkitanimationend = onwebkitanimationend; }"

///|
#cfg(target="js")
extern "js" fn document_onwebkitanimationiteration_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onwebkitanimationiteration"

///|
#cfg(target="js")
fn document_onwebkitanimationiteration_ffi(obj : JsValue) -> EventHandler {
  document_onwebkitanimationiteration_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onwebkitanimationiteration_ffi(
  obj : JsValue,
  onwebkitanimationiteration : JsValue,
) -> Unit = "(obj, onwebkitanimationiteration) => { obj.onwebkitanimationiteration = onwebkitanimationiteration; }"

///|
#cfg(target="js")
extern "js" fn document_onwebkitanimationstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onwebkitanimationstart"

///|
#cfg(target="js")
fn document_onwebkitanimationstart_ffi(obj : JsValue) -> EventHandler {
  document_onwebkitanimationstart_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onwebkitanimationstart_ffi(
  obj : JsValue,
  onwebkitanimationstart : JsValue,
) -> Unit = "(obj, onwebkitanimationstart) => { obj.onwebkitanimationstart = onwebkitanimationstart; }"

///|
#cfg(target="js")
extern "js" fn document_onwebkittransitionend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onwebkittransitionend"

///|
#cfg(target="js")
fn document_onwebkittransitionend_ffi(obj : JsValue) -> EventHandler {
  document_onwebkittransitionend_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onwebkittransitionend_ffi(
  obj : JsValue,
  onwebkittransitionend : JsValue,
) -> Unit = "(obj, onwebkittransitionend) => { obj.onwebkittransitionend = onwebkittransitionend; }"

///|
#cfg(target="js")
extern "js" fn document_onwheel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onwheel"

///|
#cfg(target="js")
fn document_onwheel_ffi(obj : JsValue) -> EventHandler {
  document_onwheel_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onwheel_ffi(
  obj : JsValue,
  onwheel : JsValue,
) -> Unit = "(obj, onwheel) => { obj.onwheel = onwheel; }"

///|
#cfg(target="js")
extern "js" fn document_ontouchstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontouchstart"

///|
#cfg(target="js")
fn document_ontouchstart_ffi(obj : JsValue) -> EventHandler {
  document_ontouchstart_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_ontouchstart_ffi(
  obj : JsValue,
  ontouchstart : JsValue,
) -> Unit = "(obj, ontouchstart) => { obj.ontouchstart = ontouchstart; }"

///|
#cfg(target="js")
extern "js" fn document_ontouchend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontouchend"

///|
#cfg(target="js")
fn document_ontouchend_ffi(obj : JsValue) -> EventHandler {
  document_ontouchend_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_ontouchend_ffi(
  obj : JsValue,
  ontouchend : JsValue,
) -> Unit = "(obj, ontouchend) => { obj.ontouchend = ontouchend; }"

///|
#cfg(target="js")
extern "js" fn document_ontouchmove_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontouchmove"

///|
#cfg(target="js")
fn document_ontouchmove_ffi(obj : JsValue) -> EventHandler {
  document_ontouchmove_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_ontouchmove_ffi(
  obj : JsValue,
  ontouchmove : JsValue,
) -> Unit = "(obj, ontouchmove) => { obj.ontouchmove = ontouchmove; }"

///|
#cfg(target="js")
extern "js" fn document_ontouchcancel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontouchcancel"

///|
#cfg(target="js")
fn document_ontouchcancel_ffi(obj : JsValue) -> EventHandler {
  document_ontouchcancel_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_ontouchcancel_ffi(
  obj : JsValue,
  ontouchcancel : JsValue,
) -> Unit = "(obj, ontouchcancel) => { obj.ontouchcancel = ontouchcancel; }"

///|
#cfg(target="js")
extern "js" fn document_onpointerover_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerover"

///|
#cfg(target="js")
fn document_onpointerover_ffi(obj : JsValue) -> EventHandler {
  document_onpointerover_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onpointerover_ffi(
  obj : JsValue,
  onpointerover : JsValue,
) -> Unit = "(obj, onpointerover) => { obj.onpointerover = onpointerover; }"

///|
#cfg(target="js")
extern "js" fn document_onpointerenter_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerenter"

///|
#cfg(target="js")
fn document_onpointerenter_ffi(obj : JsValue) -> EventHandler {
  document_onpointerenter_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onpointerenter_ffi(
  obj : JsValue,
  onpointerenter : JsValue,
) -> Unit = "(obj, onpointerenter) => { obj.onpointerenter = onpointerenter; }"

///|
#cfg(target="js")
extern "js" fn document_onpointerdown_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerdown"

///|
#cfg(target="js")
fn document_onpointerdown_ffi(obj : JsValue) -> EventHandler {
  document_onpointerdown_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onpointerdown_ffi(
  obj : JsValue,
  onpointerdown : JsValue,
) -> Unit = "(obj, onpointerdown) => { obj.onpointerdown = onpointerdown; }"

///|
#cfg(target="js")
extern "js" fn document_onpointermove_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointermove"

///|
#cfg(target="js")
fn document_onpointermove_ffi(obj : JsValue) -> EventHandler {
  document_onpointermove_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onpointermove_ffi(
  obj : JsValue,
  onpointermove : JsValue,
) -> Unit = "(obj, onpointermove) => { obj.onpointermove = onpointermove; }"

///|
#cfg(target="js")
extern "js" fn document_onpointerrawupdate_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerrawupdate"

///|
#cfg(target="js")
fn document_onpointerrawupdate_ffi(obj : JsValue) -> EventHandler {
  document_onpointerrawupdate_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onpointerrawupdate_ffi(
  obj : JsValue,
  onpointerrawupdate : JsValue,
) -> Unit = "(obj, onpointerrawupdate) => { obj.onpointerrawupdate = onpointerrawupdate; }"

///|
#cfg(target="js")
extern "js" fn document_onpointerup_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerup"

///|
#cfg(target="js")
fn document_onpointerup_ffi(obj : JsValue) -> EventHandler {
  document_onpointerup_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onpointerup_ffi(
  obj : JsValue,
  onpointerup : JsValue,
) -> Unit = "(obj, onpointerup) => { obj.onpointerup = onpointerup; }"

///|
#cfg(target="js")
extern "js" fn document_onpointercancel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointercancel"

///|
#cfg(target="js")
fn document_onpointercancel_ffi(obj : JsValue) -> EventHandler {
  document_onpointercancel_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onpointercancel_ffi(
  obj : JsValue,
  onpointercancel : JsValue,
) -> Unit = "(obj, onpointercancel) => { obj.onpointercancel = onpointercancel; }"

///|
#cfg(target="js")
extern "js" fn document_onpointerout_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerout"

///|
#cfg(target="js")
fn document_onpointerout_ffi(obj : JsValue) -> EventHandler {
  document_onpointerout_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onpointerout_ffi(
  obj : JsValue,
  onpointerout : JsValue,
) -> Unit = "(obj, onpointerout) => { obj.onpointerout = onpointerout; }"

///|
#cfg(target="js")
extern "js" fn document_onpointerleave_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerleave"

///|
#cfg(target="js")
fn document_onpointerleave_ffi(obj : JsValue) -> EventHandler {
  document_onpointerleave_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onpointerleave_ffi(
  obj : JsValue,
  onpointerleave : JsValue,
) -> Unit = "(obj, onpointerleave) => { obj.onpointerleave = onpointerleave; }"

///|
#cfg(target="js")
extern "js" fn document_ongotpointercapture_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ongotpointercapture"

///|
#cfg(target="js")
fn document_ongotpointercapture_ffi(obj : JsValue) -> EventHandler {
  document_ongotpointercapture_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_ongotpointercapture_ffi(
  obj : JsValue,
  ongotpointercapture : JsValue,
) -> Unit = "(obj, ongotpointercapture) => { obj.ongotpointercapture = ongotpointercapture; }"

///|
#cfg(target="js")
extern "js" fn document_onlostpointercapture_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onlostpointercapture"

///|
#cfg(target="js")
fn document_onlostpointercapture_ffi(obj : JsValue) -> EventHandler {
  document_onlostpointercapture_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onlostpointercapture_ffi(
  obj : JsValue,
  onlostpointercapture : JsValue,
) -> Unit = "(obj, onlostpointercapture) => { obj.onlostpointercapture = onlostpointercapture; }"

///|
#cfg(target="js")
extern "js" fn document_onselectstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onselectstart"

///|
#cfg(target="js")
fn document_onselectstart_ffi(obj : JsValue) -> EventHandler {
  document_onselectstart_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onselectstart_ffi(
  obj : JsValue,
  onselectstart : JsValue,
) -> Unit = "(obj, onselectstart) => { obj.onselectstart = onselectstart; }"

///|
#cfg(target="js")
extern "js" fn document_onselectionchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onselectionchange"

///|
#cfg(target="js")
fn document_onselectionchange_ffi(obj : JsValue) -> EventHandler {
  document_onselectionchange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_set_onselectionchange_ffi(
  obj : JsValue,
  onselectionchange : JsValue,
) -> Unit = "(obj, onselectionchange) => { obj.onselectionchange = onselectionchange; }"

///|
#cfg(target="js")
extern "js" fn document_get_box_quads_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.getBoxQuads(options)"

///|
#cfg(target="js")
fn document_get_box_quads_ffi(
  obj : JsValue,
  options : JsValue,
) -> Array[DOMQuad] {
  document_get_box_quads_ffi_js(obj, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_convert_quad_from_node_ffi_js(
  obj : JsValue,
  quad : JsValue,
  from : JsValue,
  options : JsValue,
) -> JsValue = "(obj, quad, from, options) => obj.convertQuadFromNode(quad, from, options)"

///|
#cfg(target="js")
fn document_convert_quad_from_node_ffi(
  obj : JsValue,
  quad : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMQuad {
  document_convert_quad_from_node_ffi_js(obj, quad, from, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_convert_rect_from_node_ffi_js(
  obj : JsValue,
  rect : JsValue,
  from : JsValue,
  options : JsValue,
) -> JsValue = "(obj, rect, from, options) => obj.convertRectFromNode(rect, from, options)"

///|
#cfg(target="js")
fn document_convert_rect_from_node_ffi(
  obj : JsValue,
  rect : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMQuad {
  document_convert_rect_from_node_ffi_js(obj, rect, from, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn document_convert_point_from_node_ffi_js(
  obj : JsValue,
  point : JsValue,
  from : JsValue,
  options : JsValue,
) -> JsValue = "(obj, point, from, options) => obj.convertPointFromNode(point, from, options)"

///|
#cfg(target="js")
fn document_convert_point_from_node_ffi(
  obj : JsValue,
  point : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMPoint {
  document_convert_point_from_node_ffi_js(obj, point, from, options).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_new_ffi() -> Document = "webapi_Document" "new"

///|
#cfg(target="wasm-gc")
fn document_root_element_ffi(obj : JsValue) -> SVGSVGElement = "webapi_Document" "get_rootElement"

///|
#cfg(target="wasm-gc")
fn document_implementation_ffi(obj : JsValue) -> DOMImplementation = "webapi_Document" "get_implementation"

///|
#cfg(target="wasm-gc")
fn document_url_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_URL"

///|
#cfg(target="wasm-gc")
fn document_url_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_url_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn document_document_uri_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_documentURI"

///|
#cfg(target="wasm-gc")
fn document_document_uri_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_document_uri_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn document_compat_mode_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_compatMode"

///|
#cfg(target="wasm-gc")
fn document_compat_mode_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_compat_mode_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn document_character_set_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_characterSet"

///|
#cfg(target="wasm-gc")
fn document_character_set_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_character_set_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn document_charset_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_charset"

///|
#cfg(target="wasm-gc")
fn document_charset_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_charset_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn document_input_encoding_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_inputEncoding"

///|
#cfg(target="wasm-gc")
fn document_input_encoding_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_input_encoding_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn document_content_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_contentType"

///|
#cfg(target="wasm-gc")
fn document_content_type_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_content_type_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn document_doctype_ffi(obj : JsValue) -> DocumentType = "webapi_Document" "get_doctype"

///|
#cfg(target="wasm-gc")
fn document_document_element_ffi(obj : JsValue) -> Element = "webapi_Document" "get_documentElement"

///|
#cfg(target="wasm-gc")
fn document_get_elements_by_tag_name_ffi(
  obj : JsValue,
  qualified_name : JsValue,
) -> HTMLCollection = "webapi_Document" "getElementsByTagName"

///|
#cfg(target="wasm-gc")
fn document_get_elements_by_tag_name_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> HTMLCollection = "webapi_Document" "getElementsByTagNameNS"

///|
#cfg(target="wasm-gc")
fn document_get_elements_by_class_name_ffi(
  obj : JsValue,
  class_names : JsValue,
) -> HTMLCollection = "webapi_Document" "getElementsByClassName"

///|
#cfg(target="wasm-gc")
fn document_create_element_ffi(
  obj : JsValue,
  local_name : JsValue,
  options : JsValue,
) -> Element = "webapi_Document" "createElement"

///|
#cfg(target="wasm-gc")
fn document_create_element_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  qualified_name : JsValue,
  options : JsValue,
) -> Element = "webapi_Document" "createElementNS"

///|
#cfg(target="wasm-gc")
fn document_create_document_fragment_ffi(obj : JsValue) -> DocumentFragment = "webapi_Document" "createDocumentFragment"

///|
#cfg(target="wasm-gc")
fn document_create_text_node_ffi(obj : JsValue, data : JsValue) -> Text = "webapi_Document" "createTextNode"

///|
#cfg(target="wasm-gc")
fn document_create_cdata_section_ffi(
  obj : JsValue,
  data : JsValue,
) -> CDATASection = "webapi_Document" "createCDATASection"

///|
#cfg(target="wasm-gc")
fn document_create_comment_ffi(obj : JsValue, data : JsValue) -> Comment = "webapi_Document" "createComment"

///|
#cfg(target="wasm-gc")
fn document_create_processing_instruction_ffi(
  obj : JsValue,
  target : JsValue,
  data : JsValue,
) -> ProcessingInstruction = "webapi_Document" "createProcessingInstruction"

///|
#cfg(target="wasm-gc")
fn document_import_node_ffi(
  obj : JsValue,
  node : JsValue,
  options : JsValue,
) -> Node = "webapi_Document" "importNode"

///|
#cfg(target="wasm-gc")
fn document_adopt_node_ffi(obj : JsValue, node : JsValue) -> Node = "webapi_Document" "adoptNode"

///|
#cfg(target="wasm-gc")
fn document_create_attribute_ffi(obj : JsValue, local_name : JsValue) -> Attr = "webapi_Document" "createAttribute"

///|
#cfg(target="wasm-gc")
fn document_create_attribute_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  qualified_name : JsValue,
) -> Attr = "webapi_Document" "createAttributeNS"

///|
#cfg(target="wasm-gc")
fn document_create_event_ffi(obj : JsValue, interface : JsValue) -> Event = "webapi_Document" "createEvent"

///|
#cfg(target="wasm-gc")
fn document_create_range_ffi(obj : JsValue) -> Range = "webapi_Document" "createRange"

///|
#cfg(target="wasm-gc")
fn document_create_node_iterator_ffi(
  obj : JsValue,
  root : JsValue,
  what_to_show : JsValue,
  filter : JsValue,
) -> NodeIterator = "webapi_Document" "createNodeIterator"

///|
#cfg(target="wasm-gc")
fn document_create_tree_walker_ffi(
  obj : JsValue,
  root : JsValue,
  what_to_show : JsValue,
  filter : JsValue,
) -> TreeWalker = "webapi_Document" "createTreeWalker"

///|
#cfg(target="wasm-gc")
fn document_parse_html_unsafe_ffi(html : JsValue) -> Document = "webapi_Document" "parseHTMLUnsafe"

///|
#cfg(target="wasm-gc")
fn document_location_ffi(obj : JsValue) -> Location = "webapi_Document" "get_location"

///|
#cfg(target="wasm-gc")
fn document_domain_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_domain"

///|
#cfg(target="wasm-gc")
fn document_domain_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_domain_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn document_set_domain_ffi(obj : JsValue, domain : JsValue) -> Unit = "webapi_Document" "set_domain"

///|
#cfg(target="wasm-gc")
fn document_referrer_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_referrer"

///|
#cfg(target="wasm-gc")
fn document_referrer_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_referrer_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn document_cookie_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_cookie"

///|
#cfg(target="wasm-gc")
fn document_cookie_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_cookie_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn document_set_cookie_ffi(obj : JsValue, cookie : JsValue) -> Unit = "webapi_Document" "set_cookie"

///|
#cfg(target="wasm-gc")
fn document_last_modified_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_lastModified"

///|
#cfg(target="wasm-gc")
fn document_last_modified_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_last_modified_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn document_ready_state_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_readyState"

///|
#cfg(target="wasm-gc")
fn document_ready_state_ffi(obj : JsValue) -> DocumentReadyState {
  DocumentReadyState::from_unchecked(
    jsvalue_to_string(document_ready_state_ffi_wasm(obj)),
  )
}

///|
#cfg(target="wasm-gc")
fn document_get_ffi(obj : JsValue, name : JsValue) -> JsValue = "webapi_Document" "get"

///|
#cfg(target="wasm-gc")
fn document_title_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_title"

///|
#cfg(target="wasm-gc")
fn document_title_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_title_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn document_set_title_ffi(obj : JsValue, title : JsValue) -> Unit = "webapi_Document" "set_title"

///|
#cfg(target="wasm-gc")
fn document_dir_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_dir"

///|
#cfg(target="wasm-gc")
fn document_dir_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_dir_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn document_set_dir_ffi(obj : JsValue, dir : JsValue) -> Unit = "webapi_Document" "set_dir"

///|
#cfg(target="wasm-gc")
fn document_body_ffi(obj : JsValue) -> HTMLElement = "webapi_Document" "get_body"

///|
#cfg(target="wasm-gc")
fn document_set_body_ffi(obj : JsValue, body : JsValue) -> Unit = "webapi_Document" "set_body"

///|
#cfg(target="wasm-gc")
fn document_head_ffi(obj : JsValue) -> HTMLHeadElement = "webapi_Document" "get_head"

///|
#cfg(target="wasm-gc")
fn document_images_ffi(obj : JsValue) -> HTMLCollection = "webapi_Document" "get_images"

///|
#cfg(target="wasm-gc")
fn document_embeds_ffi(obj : JsValue) -> HTMLCollection = "webapi_Document" "get_embeds"

///|
#cfg(target="wasm-gc")
fn document_plugins_ffi(obj : JsValue) -> HTMLCollection = "webapi_Document" "get_plugins"

///|
#cfg(target="wasm-gc")
fn document_links_ffi(obj : JsValue) -> HTMLCollection = "webapi_Document" "get_links"

///|
#cfg(target="wasm-gc")
fn document_forms_ffi(obj : JsValue) -> HTMLCollection = "webapi_Document" "get_forms"

///|
#cfg(target="wasm-gc")
fn document_scripts_ffi(obj : JsValue) -> HTMLCollection = "webapi_Document" "get_scripts"

///|
#cfg(target="wasm-gc")
fn document_get_elements_by_name_ffi(
  obj : JsValue,
  element_name : JsValue,
) -> NodeList = "webapi_Document" "getElementsByName"

///|
#cfg(target="wasm-gc")
fn document_current_script_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_currentScript"

///|
#cfg(target="wasm-gc")
fn document_current_script_ffi(obj : JsValue) -> HTMLOrSVGScriptElement {
  document_current_script_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_open_ffi(
  obj : JsValue,
  unused1 : JsValue,
  unused2 : JsValue,
) -> Document = "webapi_Document" "open"

///|
#cfg(target="wasm-gc")
fn document_open_window_ffi(
  obj : JsValue,
  url : JsValue,
  name : JsValue,
  features : JsValue,
) -> JsValue = "webapi_Document" "open_window"

///|
#cfg(target="wasm-gc")
fn document_close_ffi(obj : JsValue) -> Unit = "webapi_Document" "close"

///|
#cfg(target="wasm-gc")
fn document_write_ffi(obj : JsValue, text : JsValue) -> Unit = "webapi_Document" "write"

///|
#cfg(target="wasm-gc")
fn document_writeln_ffi(obj : JsValue, text : JsValue) -> Unit = "webapi_Document" "writeln"

///|
#cfg(target="wasm-gc")
fn document_default_view_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_defaultView"

///|
#cfg(target="wasm-gc")
fn document_default_view_ffi(obj : JsValue) -> WindowProxy {
  document_default_view_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_has_focus_ffi(obj : JsValue) -> Bool = "webapi_Document" "hasFocus"

///|
#cfg(target="wasm-gc")
fn document_design_mode_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_designMode"

///|
#cfg(target="wasm-gc")
fn document_design_mode_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_design_mode_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn document_set_design_mode_ffi(obj : JsValue, design_mode : JsValue) -> Unit = "webapi_Document" "set_designMode"

///|
#cfg(target="wasm-gc")
fn document_exec_command_ffi(
  obj : JsValue,
  command_id : JsValue,
  show_ui : JsValue,
  value : JsValue,
) -> Bool = "webapi_Document" "execCommand"

///|
#cfg(target="wasm-gc")
fn document_query_command_enabled_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> Bool = "webapi_Document" "queryCommandEnabled"

///|
#cfg(target="wasm-gc")
fn document_query_command_indeterm_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> Bool = "webapi_Document" "queryCommandIndeterm"

///|
#cfg(target="wasm-gc")
fn document_query_command_state_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> Bool = "webapi_Document" "queryCommandState"

///|
#cfg(target="wasm-gc")
fn document_query_command_supported_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> Bool = "webapi_Document" "queryCommandSupported"

///|
#cfg(target="wasm-gc")
fn document_query_command_value_ffi_wasm(
  obj : JsValue,
  command_id : JsValue,
) -> JsValue = "webapi_Document" "queryCommandValue"

///|
#cfg(target="wasm-gc")
fn document_query_command_value_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> String {
  jsvalue_to_string(document_query_command_value_ffi_wasm(obj, command_id))
}

///|
#cfg(target="wasm-gc")
fn document_hidden_ffi(obj : JsValue) -> Bool = "webapi_Document" "get_hidden"

///|
#cfg(target="wasm-gc")
fn document_visibility_state_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_visibilityState"

///|
#cfg(target="wasm-gc")
fn document_visibility_state_ffi(obj : JsValue) -> DocumentVisibilityState {
  DocumentVisibilityState::from_unchecked(
    jsvalue_to_string(document_visibility_state_ffi_wasm(obj)),
  )
}

///|
#cfg(target="wasm-gc")
fn document_onreadystatechange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onreadystatechange"

///|
#cfg(target="wasm-gc")
fn document_onreadystatechange_ffi(obj : JsValue) -> EventHandler {
  document_onreadystatechange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onreadystatechange_ffi(
  obj : JsValue,
  onreadystatechange : JsValue,
) -> Unit = "webapi_Document" "set_onreadystatechange"

///|
#cfg(target="wasm-gc")
fn document_onvisibilitychange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onvisibilitychange"

///|
#cfg(target="wasm-gc")
fn document_onvisibilitychange_ffi(obj : JsValue) -> EventHandler {
  document_onvisibilitychange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onvisibilitychange_ffi(
  obj : JsValue,
  onvisibilitychange : JsValue,
) -> Unit = "webapi_Document" "set_onvisibilitychange"

///|
#cfg(target="wasm-gc")
fn document_fg_color_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_fgColor"

///|
#cfg(target="wasm-gc")
fn document_fg_color_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_fg_color_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn document_set_fg_color_ffi(obj : JsValue, fg_color : JsValue) -> Unit = "webapi_Document" "set_fgColor"

///|
#cfg(target="wasm-gc")
fn document_link_color_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_linkColor"

///|
#cfg(target="wasm-gc")
fn document_link_color_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_link_color_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn document_set_link_color_ffi(obj : JsValue, link_color : JsValue) -> Unit = "webapi_Document" "set_linkColor"

///|
#cfg(target="wasm-gc")
fn document_vlink_color_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_vlinkColor"

///|
#cfg(target="wasm-gc")
fn document_vlink_color_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_vlink_color_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn document_set_vlink_color_ffi(obj : JsValue, vlink_color : JsValue) -> Unit = "webapi_Document" "set_vlinkColor"

///|
#cfg(target="wasm-gc")
fn document_alink_color_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_alinkColor"

///|
#cfg(target="wasm-gc")
fn document_alink_color_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_alink_color_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn document_set_alink_color_ffi(obj : JsValue, alink_color : JsValue) -> Unit = "webapi_Document" "set_alinkColor"

///|
#cfg(target="wasm-gc")
fn document_bg_color_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_bgColor"

///|
#cfg(target="wasm-gc")
fn document_bg_color_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_bg_color_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn document_set_bg_color_ffi(obj : JsValue, bg_color : JsValue) -> Unit = "webapi_Document" "set_bgColor"

///|
#cfg(target="wasm-gc")
fn document_anchors_ffi(obj : JsValue) -> HTMLCollection = "webapi_Document" "get_anchors"

///|
#cfg(target="wasm-gc")
fn document_applets_ffi(obj : JsValue) -> HTMLCollection = "webapi_Document" "get_applets"

///|
#cfg(target="wasm-gc")
fn document_clear_ffi(obj : JsValue) -> Unit = "webapi_Document" "clear"

///|
#cfg(target="wasm-gc")
fn document_capture_events_ffi(obj : JsValue) -> Unit = "webapi_Document" "captureEvents"

///|
#cfg(target="wasm-gc")
fn document_release_events_ffi(obj : JsValue) -> Unit = "webapi_Document" "releaseEvents"

///|
#cfg(target="wasm-gc")
fn document_all_ffi(obj : JsValue) -> HTMLAllCollection = "webapi_Document" "get_all"

///|
#cfg(target="wasm-gc")
fn document_element_from_point_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "webapi_Document" "elementFromPoint"

///|
#cfg(target="wasm-gc")
fn document_elements_from_point_ffi_wasm(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsArray = "webapi_Document" "elementsFromPoint"

///|
#cfg(target="wasm-gc")
fn document_elements_from_point_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Array[Element] {
  document_elements_from_point_ffi_wasm(obj, x, y).to_array()
}

///|
#cfg(target="wasm-gc")
fn document_caret_position_from_point_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  options : JsValue,
) -> JsValue = "webapi_Document" "caretPositionFromPoint"

///|
#cfg(target="wasm-gc")
fn document_scrolling_element_ffi(obj : JsValue) -> Element = "webapi_Document" "get_scrollingElement"

///|
#cfg(target="wasm-gc")
fn document_fullscreen_enabled_ffi(obj : JsValue) -> Bool = "webapi_Document" "get_fullscreenEnabled"

///|
#cfg(target="wasm-gc")
fn document_fullscreen_ffi(obj : JsValue) -> Bool = "webapi_Document" "get_fullscreen"

///|
#cfg(target="wasm-gc")
fn document_exit_fullscreen_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "exitFullscreen"

///|
#cfg(target="wasm-gc")
fn document_exit_fullscreen_ffi(obj : JsValue) -> JsPromise[JsValue] {
  document_exit_fullscreen_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_onfullscreenchange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onfullscreenchange"

///|
#cfg(target="wasm-gc")
fn document_onfullscreenchange_ffi(obj : JsValue) -> EventHandler {
  document_onfullscreenchange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onfullscreenchange_ffi(
  obj : JsValue,
  onfullscreenchange : JsValue,
) -> Unit = "webapi_Document" "set_onfullscreenchange"

///|
#cfg(target="wasm-gc")
fn document_onfullscreenerror_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onfullscreenerror"

///|
#cfg(target="wasm-gc")
fn document_onfullscreenerror_ffi(obj : JsValue) -> EventHandler {
  document_onfullscreenerror_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onfullscreenerror_ffi(
  obj : JsValue,
  onfullscreenerror : JsValue,
) -> Unit = "webapi_Document" "set_onfullscreenerror"

///|
#cfg(target="wasm-gc")
fn document_get_selection_ffi(obj : JsValue) -> JsValue = "webapi_Document" "getSelection"

///|
#cfg(target="wasm-gc")
fn document_timeline_ffi(obj : JsValue) -> DocumentTimeline = "webapi_Document" "get_timeline"

///|
#cfg(target="wasm-gc")
fn document_get_element_by_id_ffi(
  obj : JsValue,
  element_id : JsValue,
) -> JsValue = "webapi_Document" "getElementById"

///|
#cfg(target="wasm-gc")
fn document_custom_element_registry_ffi(obj : JsValue) -> CustomElementRegistry = "webapi_Document" "get_customElementRegistry"

///|
#cfg(target="wasm-gc")
fn document_active_element_ffi(obj : JsValue) -> Element = "webapi_Document" "get_activeElement"

///|
#cfg(target="wasm-gc")
fn document_style_sheets_ffi(obj : JsValue) -> StyleSheetList = "webapi_Document" "get_styleSheets"

///|
#cfg(target="wasm-gc")
fn document_adopted_style_sheets_ffi_wasm(obj : JsValue) -> JsArray = "webapi_Document" "get_adoptedStyleSheets"

///|
#cfg(target="wasm-gc")
fn document_adopted_style_sheets_ffi(obj : JsValue) -> Array[CSSStyleSheet] {
  document_adopted_style_sheets_ffi_wasm(obj).to_array()
}

///|
#cfg(target="wasm-gc")
fn document_set_adopted_style_sheets_ffi(
  obj : JsValue,
  adopted_style_sheets : JsValue,
) -> Unit = "webapi_Document" "set_adoptedStyleSheets"

///|
#cfg(target="wasm-gc")
fn document_fullscreen_element_ffi(obj : JsValue) -> Element = "webapi_Document" "get_fullscreenElement"

///|
#cfg(target="wasm-gc")
fn document_get_animations_ffi_wasm(obj : JsValue) -> JsArray = "webapi_Document" "getAnimations"

///|
#cfg(target="wasm-gc")
fn document_get_animations_ffi(obj : JsValue) -> Array[Animation] {
  document_get_animations_ffi_wasm(obj).to_array()
}

///|
#cfg(target="wasm-gc")
fn document_children_ffi(obj : JsValue) -> HTMLCollection = "webapi_Document" "get_children"

///|
#cfg(target="wasm-gc")
fn document_first_element_child_ffi(obj : JsValue) -> Element = "webapi_Document" "get_firstElementChild"

///|
#cfg(target="wasm-gc")
fn document_last_element_child_ffi(obj : JsValue) -> Element = "webapi_Document" "get_lastElementChild"

///|
#cfg(target="wasm-gc")
fn document_child_element_count_ffi(obj : JsValue) -> UInt = "webapi_Document" "get_childElementCount"

///|
#cfg(target="wasm-gc")
fn document_prepend_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_Document" "prepend"

///|
#cfg(target="wasm-gc")
fn document_append_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_Document" "append"

///|
#cfg(target="wasm-gc")
fn document_replace_children_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_Document" "replaceChildren"

///|
#cfg(target="wasm-gc")
fn document_move_before_ffi(
  obj : JsValue,
  node : JsValue,
  child : JsValue,
) -> Unit = "webapi_Document" "moveBefore"

///|
#cfg(target="wasm-gc")
fn document_query_selector_ffi(obj : JsValue, selectors : JsValue) -> JsValue = "webapi_Document" "querySelector"

///|
#cfg(target="wasm-gc")
fn document_query_selector_all_ffi(
  obj : JsValue,
  selectors : JsValue,
) -> NodeList = "webapi_Document" "querySelectorAll"

///|
#cfg(target="wasm-gc")
fn document_create_expression_ffi(
  obj : JsValue,
  expression : JsValue,
  resolver : JsValue,
) -> XPathExpression = "webapi_Document" "createExpression"

///|
#cfg(target="wasm-gc")
fn document_create_ns_resolver_ffi(
  obj : JsValue,
  node_resolver : JsValue,
) -> Node = "webapi_Document" "createNSResolver"

///|
#cfg(target="wasm-gc")
fn document_evaluate_ffi(
  obj : JsValue,
  expression : JsValue,
  context_node : JsValue,
  resolver : JsValue,
  type_ : JsValue,
  result : JsValue,
) -> XPathResult = "webapi_Document" "evaluate"

///|
#cfg(target="wasm-gc")
fn document_onabort_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onabort"

///|
#cfg(target="wasm-gc")
fn document_onabort_ffi(obj : JsValue) -> EventHandler {
  document_onabort_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onabort_ffi(obj : JsValue, onabort : JsValue) -> Unit = "webapi_Document" "set_onabort"

///|
#cfg(target="wasm-gc")
fn document_onauxclick_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onauxclick"

///|
#cfg(target="wasm-gc")
fn document_onauxclick_ffi(obj : JsValue) -> EventHandler {
  document_onauxclick_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onauxclick_ffi(obj : JsValue, onauxclick : JsValue) -> Unit = "webapi_Document" "set_onauxclick"

///|
#cfg(target="wasm-gc")
fn document_onbeforeinput_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onbeforeinput"

///|
#cfg(target="wasm-gc")
fn document_onbeforeinput_ffi(obj : JsValue) -> EventHandler {
  document_onbeforeinput_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onbeforeinput_ffi(
  obj : JsValue,
  onbeforeinput : JsValue,
) -> Unit = "webapi_Document" "set_onbeforeinput"

///|
#cfg(target="wasm-gc")
fn document_onbeforematch_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onbeforematch"

///|
#cfg(target="wasm-gc")
fn document_onbeforematch_ffi(obj : JsValue) -> EventHandler {
  document_onbeforematch_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onbeforematch_ffi(
  obj : JsValue,
  onbeforematch : JsValue,
) -> Unit = "webapi_Document" "set_onbeforematch"

///|
#cfg(target="wasm-gc")
fn document_onbeforetoggle_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onbeforetoggle"

///|
#cfg(target="wasm-gc")
fn document_onbeforetoggle_ffi(obj : JsValue) -> EventHandler {
  document_onbeforetoggle_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onbeforetoggle_ffi(
  obj : JsValue,
  onbeforetoggle : JsValue,
) -> Unit = "webapi_Document" "set_onbeforetoggle"

///|
#cfg(target="wasm-gc")
fn document_onblur_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onblur"

///|
#cfg(target="wasm-gc")
fn document_onblur_ffi(obj : JsValue) -> EventHandler {
  document_onblur_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onblur_ffi(obj : JsValue, onblur : JsValue) -> Unit = "webapi_Document" "set_onblur"

///|
#cfg(target="wasm-gc")
fn document_oncancel_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_oncancel"

///|
#cfg(target="wasm-gc")
fn document_oncancel_ffi(obj : JsValue) -> EventHandler {
  document_oncancel_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_oncancel_ffi(obj : JsValue, oncancel : JsValue) -> Unit = "webapi_Document" "set_oncancel"

///|
#cfg(target="wasm-gc")
fn document_oncanplay_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_oncanplay"

///|
#cfg(target="wasm-gc")
fn document_oncanplay_ffi(obj : JsValue) -> EventHandler {
  document_oncanplay_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_oncanplay_ffi(obj : JsValue, oncanplay : JsValue) -> Unit = "webapi_Document" "set_oncanplay"

///|
#cfg(target="wasm-gc")
fn document_oncanplaythrough_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_oncanplaythrough"

///|
#cfg(target="wasm-gc")
fn document_oncanplaythrough_ffi(obj : JsValue) -> EventHandler {
  document_oncanplaythrough_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_oncanplaythrough_ffi(
  obj : JsValue,
  oncanplaythrough : JsValue,
) -> Unit = "webapi_Document" "set_oncanplaythrough"

///|
#cfg(target="wasm-gc")
fn document_onchange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onchange"

///|
#cfg(target="wasm-gc")
fn document_onchange_ffi(obj : JsValue) -> EventHandler {
  document_onchange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onchange_ffi(obj : JsValue, onchange : JsValue) -> Unit = "webapi_Document" "set_onchange"

///|
#cfg(target="wasm-gc")
fn document_onclick_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onclick"

///|
#cfg(target="wasm-gc")
fn document_onclick_ffi(obj : JsValue) -> EventHandler {
  document_onclick_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onclick_ffi(obj : JsValue, onclick : JsValue) -> Unit = "webapi_Document" "set_onclick"

///|
#cfg(target="wasm-gc")
fn document_onclose_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onclose"

///|
#cfg(target="wasm-gc")
fn document_onclose_ffi(obj : JsValue) -> EventHandler {
  document_onclose_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onclose_ffi(obj : JsValue, onclose : JsValue) -> Unit = "webapi_Document" "set_onclose"

///|
#cfg(target="wasm-gc")
fn document_oncommand_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_oncommand"

///|
#cfg(target="wasm-gc")
fn document_oncommand_ffi(obj : JsValue) -> EventHandler {
  document_oncommand_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_oncommand_ffi(obj : JsValue, oncommand : JsValue) -> Unit = "webapi_Document" "set_oncommand"

///|
#cfg(target="wasm-gc")
fn document_oncontextlost_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_oncontextlost"

///|
#cfg(target="wasm-gc")
fn document_oncontextlost_ffi(obj : JsValue) -> EventHandler {
  document_oncontextlost_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_oncontextlost_ffi(
  obj : JsValue,
  oncontextlost : JsValue,
) -> Unit = "webapi_Document" "set_oncontextlost"

///|
#cfg(target="wasm-gc")
fn document_oncontextmenu_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_oncontextmenu"

///|
#cfg(target="wasm-gc")
fn document_oncontextmenu_ffi(obj : JsValue) -> EventHandler {
  document_oncontextmenu_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_oncontextmenu_ffi(
  obj : JsValue,
  oncontextmenu : JsValue,
) -> Unit = "webapi_Document" "set_oncontextmenu"

///|
#cfg(target="wasm-gc")
fn document_oncontextrestored_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_oncontextrestored"

///|
#cfg(target="wasm-gc")
fn document_oncontextrestored_ffi(obj : JsValue) -> EventHandler {
  document_oncontextrestored_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_oncontextrestored_ffi(
  obj : JsValue,
  oncontextrestored : JsValue,
) -> Unit = "webapi_Document" "set_oncontextrestored"

///|
#cfg(target="wasm-gc")
fn document_oncopy_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_oncopy"

///|
#cfg(target="wasm-gc")
fn document_oncopy_ffi(obj : JsValue) -> EventHandler {
  document_oncopy_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_oncopy_ffi(obj : JsValue, oncopy : JsValue) -> Unit = "webapi_Document" "set_oncopy"

///|
#cfg(target="wasm-gc")
fn document_oncuechange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_oncuechange"

///|
#cfg(target="wasm-gc")
fn document_oncuechange_ffi(obj : JsValue) -> EventHandler {
  document_oncuechange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_oncuechange_ffi(obj : JsValue, oncuechange : JsValue) -> Unit = "webapi_Document" "set_oncuechange"

///|
#cfg(target="wasm-gc")
fn document_oncut_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_oncut"

///|
#cfg(target="wasm-gc")
fn document_oncut_ffi(obj : JsValue) -> EventHandler {
  document_oncut_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_oncut_ffi(obj : JsValue, oncut : JsValue) -> Unit = "webapi_Document" "set_oncut"

///|
#cfg(target="wasm-gc")
fn document_ondblclick_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_ondblclick"

///|
#cfg(target="wasm-gc")
fn document_ondblclick_ffi(obj : JsValue) -> EventHandler {
  document_ondblclick_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_ondblclick_ffi(obj : JsValue, ondblclick : JsValue) -> Unit = "webapi_Document" "set_ondblclick"

///|
#cfg(target="wasm-gc")
fn document_ondrag_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_ondrag"

///|
#cfg(target="wasm-gc")
fn document_ondrag_ffi(obj : JsValue) -> EventHandler {
  document_ondrag_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_ondrag_ffi(obj : JsValue, ondrag : JsValue) -> Unit = "webapi_Document" "set_ondrag"

///|
#cfg(target="wasm-gc")
fn document_ondragend_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_ondragend"

///|
#cfg(target="wasm-gc")
fn document_ondragend_ffi(obj : JsValue) -> EventHandler {
  document_ondragend_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_ondragend_ffi(obj : JsValue, ondragend : JsValue) -> Unit = "webapi_Document" "set_ondragend"

///|
#cfg(target="wasm-gc")
fn document_ondragenter_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_ondragenter"

///|
#cfg(target="wasm-gc")
fn document_ondragenter_ffi(obj : JsValue) -> EventHandler {
  document_ondragenter_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_ondragenter_ffi(obj : JsValue, ondragenter : JsValue) -> Unit = "webapi_Document" "set_ondragenter"

///|
#cfg(target="wasm-gc")
fn document_ondragleave_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_ondragleave"

///|
#cfg(target="wasm-gc")
fn document_ondragleave_ffi(obj : JsValue) -> EventHandler {
  document_ondragleave_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_ondragleave_ffi(obj : JsValue, ondragleave : JsValue) -> Unit = "webapi_Document" "set_ondragleave"

///|
#cfg(target="wasm-gc")
fn document_ondragover_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_ondragover"

///|
#cfg(target="wasm-gc")
fn document_ondragover_ffi(obj : JsValue) -> EventHandler {
  document_ondragover_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_ondragover_ffi(obj : JsValue, ondragover : JsValue) -> Unit = "webapi_Document" "set_ondragover"

///|
#cfg(target="wasm-gc")
fn document_ondragstart_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_ondragstart"

///|
#cfg(target="wasm-gc")
fn document_ondragstart_ffi(obj : JsValue) -> EventHandler {
  document_ondragstart_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_ondragstart_ffi(obj : JsValue, ondragstart : JsValue) -> Unit = "webapi_Document" "set_ondragstart"

///|
#cfg(target="wasm-gc")
fn document_ondrop_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_ondrop"

///|
#cfg(target="wasm-gc")
fn document_ondrop_ffi(obj : JsValue) -> EventHandler {
  document_ondrop_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_ondrop_ffi(obj : JsValue, ondrop : JsValue) -> Unit = "webapi_Document" "set_ondrop"

///|
#cfg(target="wasm-gc")
fn document_ondurationchange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_ondurationchange"

///|
#cfg(target="wasm-gc")
fn document_ondurationchange_ffi(obj : JsValue) -> EventHandler {
  document_ondurationchange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_ondurationchange_ffi(
  obj : JsValue,
  ondurationchange : JsValue,
) -> Unit = "webapi_Document" "set_ondurationchange"

///|
#cfg(target="wasm-gc")
fn document_onemptied_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onemptied"

///|
#cfg(target="wasm-gc")
fn document_onemptied_ffi(obj : JsValue) -> EventHandler {
  document_onemptied_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onemptied_ffi(obj : JsValue, onemptied : JsValue) -> Unit = "webapi_Document" "set_onemptied"

///|
#cfg(target="wasm-gc")
fn document_onended_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onended"

///|
#cfg(target="wasm-gc")
fn document_onended_ffi(obj : JsValue) -> EventHandler {
  document_onended_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onended_ffi(obj : JsValue, onended : JsValue) -> Unit = "webapi_Document" "set_onended"

///|
#cfg(target="wasm-gc")
fn document_onerror_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onerror"

///|
#cfg(target="wasm-gc")
fn document_onerror_ffi(obj : JsValue) -> OnErrorEventHandler {
  document_onerror_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onerror_ffi(obj : JsValue, onerror : JsValue) -> Unit = "webapi_Document" "set_onerror"

///|
#cfg(target="wasm-gc")
fn document_onfocus_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onfocus"

///|
#cfg(target="wasm-gc")
fn document_onfocus_ffi(obj : JsValue) -> EventHandler {
  document_onfocus_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onfocus_ffi(obj : JsValue, onfocus : JsValue) -> Unit = "webapi_Document" "set_onfocus"

///|
#cfg(target="wasm-gc")
fn document_onformdata_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onformdata"

///|
#cfg(target="wasm-gc")
fn document_onformdata_ffi(obj : JsValue) -> EventHandler {
  document_onformdata_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onformdata_ffi(obj : JsValue, onformdata : JsValue) -> Unit = "webapi_Document" "set_onformdata"

///|
#cfg(target="wasm-gc")
fn document_oninput_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_oninput"

///|
#cfg(target="wasm-gc")
fn document_oninput_ffi(obj : JsValue) -> EventHandler {
  document_oninput_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_oninput_ffi(obj : JsValue, oninput : JsValue) -> Unit = "webapi_Document" "set_oninput"

///|
#cfg(target="wasm-gc")
fn document_oninvalid_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_oninvalid"

///|
#cfg(target="wasm-gc")
fn document_oninvalid_ffi(obj : JsValue) -> EventHandler {
  document_oninvalid_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_oninvalid_ffi(obj : JsValue, oninvalid : JsValue) -> Unit = "webapi_Document" "set_oninvalid"

///|
#cfg(target="wasm-gc")
fn document_onkeydown_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onkeydown"

///|
#cfg(target="wasm-gc")
fn document_onkeydown_ffi(obj : JsValue) -> EventHandler {
  document_onkeydown_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onkeydown_ffi(obj : JsValue, onkeydown : JsValue) -> Unit = "webapi_Document" "set_onkeydown"

///|
#cfg(target="wasm-gc")
fn document_onkeypress_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onkeypress"

///|
#cfg(target="wasm-gc")
fn document_onkeypress_ffi(obj : JsValue) -> EventHandler {
  document_onkeypress_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onkeypress_ffi(obj : JsValue, onkeypress : JsValue) -> Unit = "webapi_Document" "set_onkeypress"

///|
#cfg(target="wasm-gc")
fn document_onkeyup_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onkeyup"

///|
#cfg(target="wasm-gc")
fn document_onkeyup_ffi(obj : JsValue) -> EventHandler {
  document_onkeyup_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onkeyup_ffi(obj : JsValue, onkeyup : JsValue) -> Unit = "webapi_Document" "set_onkeyup"

///|
#cfg(target="wasm-gc")
fn document_onload_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onload"

///|
#cfg(target="wasm-gc")
fn document_onload_ffi(obj : JsValue) -> EventHandler {
  document_onload_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onload_ffi(obj : JsValue, onload : JsValue) -> Unit = "webapi_Document" "set_onload"

///|
#cfg(target="wasm-gc")
fn document_onloadeddata_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onloadeddata"

///|
#cfg(target="wasm-gc")
fn document_onloadeddata_ffi(obj : JsValue) -> EventHandler {
  document_onloadeddata_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onloadeddata_ffi(obj : JsValue, onloadeddata : JsValue) -> Unit = "webapi_Document" "set_onloadeddata"

///|
#cfg(target="wasm-gc")
fn document_onloadedmetadata_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onloadedmetadata"

///|
#cfg(target="wasm-gc")
fn document_onloadedmetadata_ffi(obj : JsValue) -> EventHandler {
  document_onloadedmetadata_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onloadedmetadata_ffi(
  obj : JsValue,
  onloadedmetadata : JsValue,
) -> Unit = "webapi_Document" "set_onloadedmetadata"

///|
#cfg(target="wasm-gc")
fn document_onloadstart_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onloadstart"

///|
#cfg(target="wasm-gc")
fn document_onloadstart_ffi(obj : JsValue) -> EventHandler {
  document_onloadstart_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onloadstart_ffi(obj : JsValue, onloadstart : JsValue) -> Unit = "webapi_Document" "set_onloadstart"

///|
#cfg(target="wasm-gc")
fn document_onmousedown_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onmousedown"

///|
#cfg(target="wasm-gc")
fn document_onmousedown_ffi(obj : JsValue) -> EventHandler {
  document_onmousedown_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onmousedown_ffi(obj : JsValue, onmousedown : JsValue) -> Unit = "webapi_Document" "set_onmousedown"

///|
#cfg(target="wasm-gc")
fn document_onmouseenter_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onmouseenter"

///|
#cfg(target="wasm-gc")
fn document_onmouseenter_ffi(obj : JsValue) -> EventHandler {
  document_onmouseenter_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onmouseenter_ffi(obj : JsValue, onmouseenter : JsValue) -> Unit = "webapi_Document" "set_onmouseenter"

///|
#cfg(target="wasm-gc")
fn document_onmouseleave_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onmouseleave"

///|
#cfg(target="wasm-gc")
fn document_onmouseleave_ffi(obj : JsValue) -> EventHandler {
  document_onmouseleave_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onmouseleave_ffi(obj : JsValue, onmouseleave : JsValue) -> Unit = "webapi_Document" "set_onmouseleave"

///|
#cfg(target="wasm-gc")
fn document_onmousemove_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onmousemove"

///|
#cfg(target="wasm-gc")
fn document_onmousemove_ffi(obj : JsValue) -> EventHandler {
  document_onmousemove_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onmousemove_ffi(obj : JsValue, onmousemove : JsValue) -> Unit = "webapi_Document" "set_onmousemove"

///|
#cfg(target="wasm-gc")
fn document_onmouseout_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onmouseout"

///|
#cfg(target="wasm-gc")
fn document_onmouseout_ffi(obj : JsValue) -> EventHandler {
  document_onmouseout_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onmouseout_ffi(obj : JsValue, onmouseout : JsValue) -> Unit = "webapi_Document" "set_onmouseout"

///|
#cfg(target="wasm-gc")
fn document_onmouseover_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onmouseover"

///|
#cfg(target="wasm-gc")
fn document_onmouseover_ffi(obj : JsValue) -> EventHandler {
  document_onmouseover_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onmouseover_ffi(obj : JsValue, onmouseover : JsValue) -> Unit = "webapi_Document" "set_onmouseover"

///|
#cfg(target="wasm-gc")
fn document_onmouseup_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onmouseup"

///|
#cfg(target="wasm-gc")
fn document_onmouseup_ffi(obj : JsValue) -> EventHandler {
  document_onmouseup_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onmouseup_ffi(obj : JsValue, onmouseup : JsValue) -> Unit = "webapi_Document" "set_onmouseup"

///|
#cfg(target="wasm-gc")
fn document_onpaste_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onpaste"

///|
#cfg(target="wasm-gc")
fn document_onpaste_ffi(obj : JsValue) -> EventHandler {
  document_onpaste_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onpaste_ffi(obj : JsValue, onpaste : JsValue) -> Unit = "webapi_Document" "set_onpaste"

///|
#cfg(target="wasm-gc")
fn document_onpause_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onpause"

///|
#cfg(target="wasm-gc")
fn document_onpause_ffi(obj : JsValue) -> EventHandler {
  document_onpause_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onpause_ffi(obj : JsValue, onpause : JsValue) -> Unit = "webapi_Document" "set_onpause"

///|
#cfg(target="wasm-gc")
fn document_onplay_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onplay"

///|
#cfg(target="wasm-gc")
fn document_onplay_ffi(obj : JsValue) -> EventHandler {
  document_onplay_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onplay_ffi(obj : JsValue, onplay : JsValue) -> Unit = "webapi_Document" "set_onplay"

///|
#cfg(target="wasm-gc")
fn document_onplaying_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onplaying"

///|
#cfg(target="wasm-gc")
fn document_onplaying_ffi(obj : JsValue) -> EventHandler {
  document_onplaying_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onplaying_ffi(obj : JsValue, onplaying : JsValue) -> Unit = "webapi_Document" "set_onplaying"

///|
#cfg(target="wasm-gc")
fn document_onprogress_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onprogress"

///|
#cfg(target="wasm-gc")
fn document_onprogress_ffi(obj : JsValue) -> EventHandler {
  document_onprogress_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onprogress_ffi(obj : JsValue, onprogress : JsValue) -> Unit = "webapi_Document" "set_onprogress"

///|
#cfg(target="wasm-gc")
fn document_onratechange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onratechange"

///|
#cfg(target="wasm-gc")
fn document_onratechange_ffi(obj : JsValue) -> EventHandler {
  document_onratechange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onratechange_ffi(obj : JsValue, onratechange : JsValue) -> Unit = "webapi_Document" "set_onratechange"

///|
#cfg(target="wasm-gc")
fn document_onreset_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onreset"

///|
#cfg(target="wasm-gc")
fn document_onreset_ffi(obj : JsValue) -> EventHandler {
  document_onreset_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onreset_ffi(obj : JsValue, onreset : JsValue) -> Unit = "webapi_Document" "set_onreset"

///|
#cfg(target="wasm-gc")
fn document_onresize_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onresize"

///|
#cfg(target="wasm-gc")
fn document_onresize_ffi(obj : JsValue) -> EventHandler {
  document_onresize_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onresize_ffi(obj : JsValue, onresize : JsValue) -> Unit = "webapi_Document" "set_onresize"

///|
#cfg(target="wasm-gc")
fn document_onscroll_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onscroll"

///|
#cfg(target="wasm-gc")
fn document_onscroll_ffi(obj : JsValue) -> EventHandler {
  document_onscroll_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onscroll_ffi(obj : JsValue, onscroll : JsValue) -> Unit = "webapi_Document" "set_onscroll"

///|
#cfg(target="wasm-gc")
fn document_onscrollend_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onscrollend"

///|
#cfg(target="wasm-gc")
fn document_onscrollend_ffi(obj : JsValue) -> EventHandler {
  document_onscrollend_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onscrollend_ffi(obj : JsValue, onscrollend : JsValue) -> Unit = "webapi_Document" "set_onscrollend"

///|
#cfg(target="wasm-gc")
fn document_onsecuritypolicyviolation_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onsecuritypolicyviolation"

///|
#cfg(target="wasm-gc")
fn document_onsecuritypolicyviolation_ffi(obj : JsValue) -> EventHandler {
  document_onsecuritypolicyviolation_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onsecuritypolicyviolation_ffi(
  obj : JsValue,
  onsecuritypolicyviolation : JsValue,
) -> Unit = "webapi_Document" "set_onsecuritypolicyviolation"

///|
#cfg(target="wasm-gc")
fn document_onseeked_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onseeked"

///|
#cfg(target="wasm-gc")
fn document_onseeked_ffi(obj : JsValue) -> EventHandler {
  document_onseeked_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onseeked_ffi(obj : JsValue, onseeked : JsValue) -> Unit = "webapi_Document" "set_onseeked"

///|
#cfg(target="wasm-gc")
fn document_onseeking_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onseeking"

///|
#cfg(target="wasm-gc")
fn document_onseeking_ffi(obj : JsValue) -> EventHandler {
  document_onseeking_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onseeking_ffi(obj : JsValue, onseeking : JsValue) -> Unit = "webapi_Document" "set_onseeking"

///|
#cfg(target="wasm-gc")
fn document_onselect_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onselect"

///|
#cfg(target="wasm-gc")
fn document_onselect_ffi(obj : JsValue) -> EventHandler {
  document_onselect_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onselect_ffi(obj : JsValue, onselect : JsValue) -> Unit = "webapi_Document" "set_onselect"

///|
#cfg(target="wasm-gc")
fn document_onslotchange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onslotchange"

///|
#cfg(target="wasm-gc")
fn document_onslotchange_ffi(obj : JsValue) -> EventHandler {
  document_onslotchange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onslotchange_ffi(obj : JsValue, onslotchange : JsValue) -> Unit = "webapi_Document" "set_onslotchange"

///|
#cfg(target="wasm-gc")
fn document_onstalled_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onstalled"

///|
#cfg(target="wasm-gc")
fn document_onstalled_ffi(obj : JsValue) -> EventHandler {
  document_onstalled_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onstalled_ffi(obj : JsValue, onstalled : JsValue) -> Unit = "webapi_Document" "set_onstalled"

///|
#cfg(target="wasm-gc")
fn document_onsubmit_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onsubmit"

///|
#cfg(target="wasm-gc")
fn document_onsubmit_ffi(obj : JsValue) -> EventHandler {
  document_onsubmit_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onsubmit_ffi(obj : JsValue, onsubmit : JsValue) -> Unit = "webapi_Document" "set_onsubmit"

///|
#cfg(target="wasm-gc")
fn document_onsuspend_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onsuspend"

///|
#cfg(target="wasm-gc")
fn document_onsuspend_ffi(obj : JsValue) -> EventHandler {
  document_onsuspend_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onsuspend_ffi(obj : JsValue, onsuspend : JsValue) -> Unit = "webapi_Document" "set_onsuspend"

///|
#cfg(target="wasm-gc")
fn document_ontimeupdate_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_ontimeupdate"

///|
#cfg(target="wasm-gc")
fn document_ontimeupdate_ffi(obj : JsValue) -> EventHandler {
  document_ontimeupdate_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_ontimeupdate_ffi(obj : JsValue, ontimeupdate : JsValue) -> Unit = "webapi_Document" "set_ontimeupdate"

///|
#cfg(target="wasm-gc")
fn document_ontoggle_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_ontoggle"

///|
#cfg(target="wasm-gc")
fn document_ontoggle_ffi(obj : JsValue) -> EventHandler {
  document_ontoggle_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_ontoggle_ffi(obj : JsValue, ontoggle : JsValue) -> Unit = "webapi_Document" "set_ontoggle"

///|
#cfg(target="wasm-gc")
fn document_onvolumechange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onvolumechange"

///|
#cfg(target="wasm-gc")
fn document_onvolumechange_ffi(obj : JsValue) -> EventHandler {
  document_onvolumechange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onvolumechange_ffi(
  obj : JsValue,
  onvolumechange : JsValue,
) -> Unit = "webapi_Document" "set_onvolumechange"

///|
#cfg(target="wasm-gc")
fn document_onwaiting_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onwaiting"

///|
#cfg(target="wasm-gc")
fn document_onwaiting_ffi(obj : JsValue) -> EventHandler {
  document_onwaiting_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onwaiting_ffi(obj : JsValue, onwaiting : JsValue) -> Unit = "webapi_Document" "set_onwaiting"

///|
#cfg(target="wasm-gc")
fn document_onwebkitanimationend_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onwebkitanimationend"

///|
#cfg(target="wasm-gc")
fn document_onwebkitanimationend_ffi(obj : JsValue) -> EventHandler {
  document_onwebkitanimationend_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onwebkitanimationend_ffi(
  obj : JsValue,
  onwebkitanimationend : JsValue,
) -> Unit = "webapi_Document" "set_onwebkitanimationend"

///|
#cfg(target="wasm-gc")
fn document_onwebkitanimationiteration_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onwebkitanimationiteration"

///|
#cfg(target="wasm-gc")
fn document_onwebkitanimationiteration_ffi(obj : JsValue) -> EventHandler {
  document_onwebkitanimationiteration_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onwebkitanimationiteration_ffi(
  obj : JsValue,
  onwebkitanimationiteration : JsValue,
) -> Unit = "webapi_Document" "set_onwebkitanimationiteration"

///|
#cfg(target="wasm-gc")
fn document_onwebkitanimationstart_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onwebkitanimationstart"

///|
#cfg(target="wasm-gc")
fn document_onwebkitanimationstart_ffi(obj : JsValue) -> EventHandler {
  document_onwebkitanimationstart_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onwebkitanimationstart_ffi(
  obj : JsValue,
  onwebkitanimationstart : JsValue,
) -> Unit = "webapi_Document" "set_onwebkitanimationstart"

///|
#cfg(target="wasm-gc")
fn document_onwebkittransitionend_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onwebkittransitionend"

///|
#cfg(target="wasm-gc")
fn document_onwebkittransitionend_ffi(obj : JsValue) -> EventHandler {
  document_onwebkittransitionend_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onwebkittransitionend_ffi(
  obj : JsValue,
  onwebkittransitionend : JsValue,
) -> Unit = "webapi_Document" "set_onwebkittransitionend"

///|
#cfg(target="wasm-gc")
fn document_onwheel_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onwheel"

///|
#cfg(target="wasm-gc")
fn document_onwheel_ffi(obj : JsValue) -> EventHandler {
  document_onwheel_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onwheel_ffi(obj : JsValue, onwheel : JsValue) -> Unit = "webapi_Document" "set_onwheel"

///|
#cfg(target="wasm-gc")
fn document_ontouchstart_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_ontouchstart"

///|
#cfg(target="wasm-gc")
fn document_ontouchstart_ffi(obj : JsValue) -> EventHandler {
  document_ontouchstart_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_ontouchstart_ffi(obj : JsValue, ontouchstart : JsValue) -> Unit = "webapi_Document" "set_ontouchstart"

///|
#cfg(target="wasm-gc")
fn document_ontouchend_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_ontouchend"

///|
#cfg(target="wasm-gc")
fn document_ontouchend_ffi(obj : JsValue) -> EventHandler {
  document_ontouchend_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_ontouchend_ffi(obj : JsValue, ontouchend : JsValue) -> Unit = "webapi_Document" "set_ontouchend"

///|
#cfg(target="wasm-gc")
fn document_ontouchmove_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_ontouchmove"

///|
#cfg(target="wasm-gc")
fn document_ontouchmove_ffi(obj : JsValue) -> EventHandler {
  document_ontouchmove_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_ontouchmove_ffi(obj : JsValue, ontouchmove : JsValue) -> Unit = "webapi_Document" "set_ontouchmove"

///|
#cfg(target="wasm-gc")
fn document_ontouchcancel_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_ontouchcancel"

///|
#cfg(target="wasm-gc")
fn document_ontouchcancel_ffi(obj : JsValue) -> EventHandler {
  document_ontouchcancel_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_ontouchcancel_ffi(
  obj : JsValue,
  ontouchcancel : JsValue,
) -> Unit = "webapi_Document" "set_ontouchcancel"

///|
#cfg(target="wasm-gc")
fn document_onpointerover_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onpointerover"

///|
#cfg(target="wasm-gc")
fn document_onpointerover_ffi(obj : JsValue) -> EventHandler {
  document_onpointerover_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onpointerover_ffi(
  obj : JsValue,
  onpointerover : JsValue,
) -> Unit = "webapi_Document" "set_onpointerover"

///|
#cfg(target="wasm-gc")
fn document_onpointerenter_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onpointerenter"

///|
#cfg(target="wasm-gc")
fn document_onpointerenter_ffi(obj : JsValue) -> EventHandler {
  document_onpointerenter_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onpointerenter_ffi(
  obj : JsValue,
  onpointerenter : JsValue,
) -> Unit = "webapi_Document" "set_onpointerenter"

///|
#cfg(target="wasm-gc")
fn document_onpointerdown_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onpointerdown"

///|
#cfg(target="wasm-gc")
fn document_onpointerdown_ffi(obj : JsValue) -> EventHandler {
  document_onpointerdown_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onpointerdown_ffi(
  obj : JsValue,
  onpointerdown : JsValue,
) -> Unit = "webapi_Document" "set_onpointerdown"

///|
#cfg(target="wasm-gc")
fn document_onpointermove_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onpointermove"

///|
#cfg(target="wasm-gc")
fn document_onpointermove_ffi(obj : JsValue) -> EventHandler {
  document_onpointermove_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onpointermove_ffi(
  obj : JsValue,
  onpointermove : JsValue,
) -> Unit = "webapi_Document" "set_onpointermove"

///|
#cfg(target="wasm-gc")
fn document_onpointerrawupdate_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onpointerrawupdate"

///|
#cfg(target="wasm-gc")
fn document_onpointerrawupdate_ffi(obj : JsValue) -> EventHandler {
  document_onpointerrawupdate_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onpointerrawupdate_ffi(
  obj : JsValue,
  onpointerrawupdate : JsValue,
) -> Unit = "webapi_Document" "set_onpointerrawupdate"

///|
#cfg(target="wasm-gc")
fn document_onpointerup_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onpointerup"

///|
#cfg(target="wasm-gc")
fn document_onpointerup_ffi(obj : JsValue) -> EventHandler {
  document_onpointerup_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onpointerup_ffi(obj : JsValue, onpointerup : JsValue) -> Unit = "webapi_Document" "set_onpointerup"

///|
#cfg(target="wasm-gc")
fn document_onpointercancel_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onpointercancel"

///|
#cfg(target="wasm-gc")
fn document_onpointercancel_ffi(obj : JsValue) -> EventHandler {
  document_onpointercancel_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onpointercancel_ffi(
  obj : JsValue,
  onpointercancel : JsValue,
) -> Unit = "webapi_Document" "set_onpointercancel"

///|
#cfg(target="wasm-gc")
fn document_onpointerout_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onpointerout"

///|
#cfg(target="wasm-gc")
fn document_onpointerout_ffi(obj : JsValue) -> EventHandler {
  document_onpointerout_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onpointerout_ffi(obj : JsValue, onpointerout : JsValue) -> Unit = "webapi_Document" "set_onpointerout"

///|
#cfg(target="wasm-gc")
fn document_onpointerleave_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onpointerleave"

///|
#cfg(target="wasm-gc")
fn document_onpointerleave_ffi(obj : JsValue) -> EventHandler {
  document_onpointerleave_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onpointerleave_ffi(
  obj : JsValue,
  onpointerleave : JsValue,
) -> Unit = "webapi_Document" "set_onpointerleave"

///|
#cfg(target="wasm-gc")
fn document_ongotpointercapture_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_ongotpointercapture"

///|
#cfg(target="wasm-gc")
fn document_ongotpointercapture_ffi(obj : JsValue) -> EventHandler {
  document_ongotpointercapture_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_ongotpointercapture_ffi(
  obj : JsValue,
  ongotpointercapture : JsValue,
) -> Unit = "webapi_Document" "set_ongotpointercapture"

///|
#cfg(target="wasm-gc")
fn document_onlostpointercapture_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onlostpointercapture"

///|
#cfg(target="wasm-gc")
fn document_onlostpointercapture_ffi(obj : JsValue) -> EventHandler {
  document_onlostpointercapture_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onlostpointercapture_ffi(
  obj : JsValue,
  onlostpointercapture : JsValue,
) -> Unit = "webapi_Document" "set_onlostpointercapture"

///|
#cfg(target="wasm-gc")
fn document_onselectstart_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onselectstart"

///|
#cfg(target="wasm-gc")
fn document_onselectstart_ffi(obj : JsValue) -> EventHandler {
  document_onselectstart_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onselectstart_ffi(
  obj : JsValue,
  onselectstart : JsValue,
) -> Unit = "webapi_Document" "set_onselectstart"

///|
#cfg(target="wasm-gc")
fn document_onselectionchange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_onselectionchange"

///|
#cfg(target="wasm-gc")
fn document_onselectionchange_ffi(obj : JsValue) -> EventHandler {
  document_onselectionchange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn document_set_onselectionchange_ffi(
  obj : JsValue,
  onselectionchange : JsValue,
) -> Unit = "webapi_Document" "set_onselectionchange"

///|
#cfg(target="wasm-gc")
fn document_get_box_quads_ffi_wasm(obj : JsValue, options : JsValue) -> JsArray = "webapi_Document" "getBoxQuads"

///|
#cfg(target="wasm-gc")
fn document_get_box_quads_ffi(
  obj : JsValue,
  options : JsValue,
) -> Array[DOMQuad] {
  document_get_box_quads_ffi_wasm(obj, options).to_array()
}

///|
#cfg(target="wasm-gc")
fn document_convert_quad_from_node_ffi(
  obj : JsValue,
  quad : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMQuad = "webapi_Document" "convertQuadFromNode"

///|
#cfg(target="wasm-gc")
fn document_convert_rect_from_node_ffi(
  obj : JsValue,
  rect : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMQuad = "webapi_Document" "convertRectFromNode"

///|
#cfg(target="wasm-gc")
fn document_convert_point_from_node_ffi(
  obj : JsValue,
  point : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMPoint = "webapi_Document" "convertPointFromNode"
