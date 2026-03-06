// Do not edit. This file is generated.
// MoonBit type: Element
// Specifications: cssom-view.idl, pointerevents.idl, fullscreen.idl, dom.idl, html.idl

///|
/// [Element](https://developer.mozilla.org/en-US/docs/Web/API/Element)
#external
pub type Element

///|
pub impl TJsValue for Element with to_js(self : Element) -> JsValue = "%identity"

///|
pub impl FromJsAny for Element with from_js_any(value : JsAny) -> Element = "%identity"

///|
pub fn[T : TElement] Element::into(self : Element) -> T = "%identity"

///|
pub impl TElement for Element

///|
pub impl TNode for Element

///|
pub impl TEventTarget for Element

///|
pub(open) trait TElementSetAttributeValue: TJsValue {}

///|
pub impl TElementSetAttributeValue for TrustedType

///|
pub impl TElementSetAttributeValue for String

///|
pub(open) trait TElementSetAttributeNSValue: TJsValue {}

///|
pub impl TElementSetAttributeNSValue for TrustedType

///|
pub impl TElementSetAttributeNSValue for String

///|
pub(open) trait TElementSetHTMLUnsafeHtml: TJsValue {}

///|
pub impl TElementSetHTMLUnsafeHtml for TrustedHTML

///|
pub impl TElementSetHTMLUnsafeHtml for String

///|
pub(open) trait TElementInnerHTML: TJsValue {}

///|
pub impl TElementInnerHTML for TrustedHTML

///|
pub impl TElementInnerHTML for String

///|
#external
pub type ElementInnerHTML

///|
pub impl TJsValue for ElementInnerHTML with to_js(self : ElementInnerHTML) -> JsValue = "%identity"

///|
pub impl FromJsAny for ElementInnerHTML with from_js_any(value : JsAny) -> ElementInnerHTML = "%identity"

///|
pub fn[T : TElementInnerHTML + FromJsAny] ElementInnerHTML::into(
  self : ElementInnerHTML,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TElementInnerHTML] ElementInnerHTML::from(
  value : T,
) -> ElementInnerHTML = "%identity"

///|
pub impl TElementInnerHTML for ElementInnerHTML

///|
pub(open) trait TElementOuterHTML: TJsValue {}

///|
pub impl TElementOuterHTML for TrustedHTML

///|
pub impl TElementOuterHTML for String

///|
#external
pub type ElementOuterHTML

///|
pub impl TJsValue for ElementOuterHTML with to_js(self : ElementOuterHTML) -> JsValue = "%identity"

///|
pub impl FromJsAny for ElementOuterHTML with from_js_any(value : JsAny) -> ElementOuterHTML = "%identity"

///|
pub fn[T : TElementOuterHTML + FromJsAny] ElementOuterHTML::into(
  self : ElementOuterHTML,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TElementOuterHTML] ElementOuterHTML::from(
  value : T,
) -> ElementOuterHTML = "%identity"

///|
pub impl TElementOuterHTML for ElementOuterHTML

///|
pub(open) trait TElementInsertAdjacentHTMLString: TJsValue {}

///|
pub impl TElementInsertAdjacentHTMLString for TrustedHTML

///|
pub impl TElementInsertAdjacentHTMLString for String

///|
pub(open) trait TElementScrollIntoViewArg: TJsValue {}

///|
pub impl TElementScrollIntoViewArg for Bool

///|
pub impl TElementScrollIntoViewArg for ScrollIntoViewOptions

///|
pub(open) trait TElementPrependNodes: TJsValue {}

///|
pub impl TElementPrependNodes for Node

///|
pub impl TElementPrependNodes for String

///|
pub(open) trait TElementAppendNodes: TJsValue {}

///|
pub impl TElementAppendNodes for Node

///|
pub impl TElementAppendNodes for String

///|
pub(open) trait TElementReplaceChildrenNodes: TJsValue {}

///|
pub impl TElementReplaceChildrenNodes for Node

///|
pub impl TElementReplaceChildrenNodes for String

///|
pub(open) trait TElementBeforeNodes: TJsValue {}

///|
pub impl TElementBeforeNodes for Node

///|
pub impl TElementBeforeNodes for String

///|
pub(open) trait TElementAfterNodes: TJsValue {}

///|
pub impl TElementAfterNodes for Node

///|
pub impl TElementAfterNodes for String

///|
pub(open) trait TElementReplaceWithNodes: TJsValue {}

///|
pub impl TElementReplaceWithNodes for Node

///|
pub impl TElementReplaceWithNodes for String

///|
pub(open) trait TElementAnimateOptions: TJsValue {}

///|
pub impl TElementAnimateOptions for Double

///|
pub impl TElementAnimateOptions for KeyframeAnimationOptions

///|
/// [Element](https://developer.mozilla.org/en-US/docs/Web/API/Element) interface.
pub trait TElement: TNode {
  namespace_uri(self : Self) -> String = _
  prefix(self : Self) -> String = _
  local_name(self : Self) -> String = _
  tag_name(self : Self) -> String = _
  id(self : Self) -> String = _
  set_id(self : Self, id : String) -> Unit = _
  class_name(self : Self) -> String = _
  set_class_name(self : Self, class_name : String) -> Unit = _
  class_list(self : Self) -> DOMTokenList = _
  slot(self : Self) -> String = _
  set_slot(self : Self, slot : String) -> Unit = _
  has_attributes(self : Self) -> Bool = _
  attributes(self : Self) -> NamedNodeMap = _
  get_attribute_names(self : Self) -> Array[String] = _
  get_attribute(self : Self, qualified_name : String) -> String? = _
  get_attribute_ns(self : Self, namespace_ : String, local_name : String) -> String? = _
  set_attribute(
    self : Self,
    qualified_name : String,
    value : &TElementSetAttributeValue,
  ) -> Unit = _
  set_attribute_ns(
    self : Self,
    namespace_ : String,
    qualified_name : String,
    value : &TElementSetAttributeNSValue,
  ) -> Unit = _
  remove_attribute(self : Self, qualified_name : String) -> Unit = _
  remove_attribute_ns(self : Self, namespace_ : String, local_name : String) -> Unit = _
  toggle_attribute(self : Self, qualified_name : String, force? : Bool) -> Bool = _
  has_attribute(self : Self, qualified_name : String) -> Bool = _
  has_attribute_ns(self : Self, namespace_ : String, local_name : String) -> Bool = _
  get_attribute_node_opt(self : Self, qualified_name : String) -> Attr? = _
  get_attribute_node_ns_opt(
    self : Self,
    namespace_ : String,
    local_name : String,
  ) -> Attr? = _
  set_attribute_node_opt(self : Self, attr : &TAttr) -> Attr? = _
  set_attribute_node_ns_opt(self : Self, attr : &TAttr) -> Attr? = _
  remove_attribute_node(self : Self, attr : &TAttr) -> Attr = _
  attach_shadow(self : Self, init : ShadowRootInit) -> ShadowRoot = _
  shadow_root(self : Self) -> ShadowRoot = _
  custom_element_registry(self : Self) -> CustomElementRegistry = _
  closest_opt(self : Self, selectors : String) -> Element? = _
  matches(self : Self, selectors : String) -> Bool = _
  webkit_matches_selector(self : Self, selectors : String) -> Bool = _
  get_elements_by_tag_name(self : Self, qualified_name : String) -> HTMLCollection = _
  get_elements_by_tag_name_ns(
    self : Self,
    namespace_ : String,
    local_name : String,
  ) -> HTMLCollection = _
  get_elements_by_class_name(self : Self, class_names : String) -> HTMLCollection = _
  insert_adjacent_element_opt(self : Self, where_ : String, element : &TElement) -> Element? = _
  insert_adjacent_text(self : Self, where_ : String, data : String) -> Unit = _
  set_html_unsafe(self : Self, html : &TElementSetHTMLUnsafeHtml) -> Unit = _
  get_html(self : Self, options? : GetHTMLOptions) -> String = _
  inner_html(self : Self) -> ElementInnerHTML = _
  set_inner_html(self : Self, inner_html : &TElementInnerHTML) -> Unit = _
  outer_html(self : Self) -> ElementOuterHTML = _
  set_outer_html(self : Self, outer_html : &TElementOuterHTML) -> Unit = _
  insert_adjacent_html(
    self : Self,
    position : String,
    string : &TElementInsertAdjacentHTMLString,
  ) -> Unit = _
  get_client_rects(self : Self) -> DOMRectList = _
  get_bounding_client_rect(self : Self) -> DOMRect = _
  check_visibility(self : Self, options? : CheckVisibilityOptions) -> Bool = _
  scroll_into_view(self : Self, arg? : &TElementScrollIntoViewArg) -> JsPromise[
    JsValue,
  ] = _
  scroll(self : Self, options? : ScrollToOptions) -> JsPromise[JsValue] = _
  scroll_xy(self : Self, x : Double, y : Double) -> JsPromise[JsValue] = _
  scroll_to(self : Self, options? : ScrollToOptions) -> JsPromise[JsValue] = _
  scroll_to_xy(self : Self, x : Double, y : Double) -> JsPromise[JsValue] = _
  scroll_by(self : Self, options? : ScrollToOptions) -> JsPromise[JsValue] = _
  scroll_by_xy(self : Self, x : Double, y : Double) -> JsPromise[JsValue] = _
  scroll_top(self : Self) -> Double = _
  set_scroll_top(self : Self, scroll_top : Double) -> Unit = _
  scroll_left(self : Self) -> Double = _
  set_scroll_left(self : Self, scroll_left : Double) -> Unit = _
  scroll_width(self : Self) -> Int = _
  scroll_height(self : Self) -> Int = _
  client_top(self : Self) -> Int = _
  client_left(self : Self) -> Int = _
  client_width(self : Self) -> Int = _
  client_height(self : Self) -> Int = _
  current_css_zoom(self : Self) -> Double = _
  request_fullscreen(self : Self, options? : FullscreenOptions) -> JsPromise[
    JsValue,
  ] = _
  onfullscreenchange(self : Self) -> EventHandler = _
  set_onfullscreenchange(self : Self, onfullscreenchange : (Event) -> JsValue) -> Unit = _
  onfullscreenerror(self : Self) -> EventHandler = _
  set_onfullscreenerror(self : Self, onfullscreenerror : (Event) -> JsValue) -> Unit = _
  set_pointer_capture(self : Self, pointer_id : Int) -> Unit = _
  release_pointer_capture(self : Self, pointer_id : Int) -> Unit = _
  has_pointer_capture(self : Self, pointer_id : Int) -> Bool = _
  children(self : Self) -> HTMLCollection = _
  first_element_child(self : Self) -> Element = _
  last_element_child(self : Self) -> Element = _
  child_element_count(self : Self) -> UInt = _
  prepend(self : Self, nodes : Array[&TElementPrependNodes]) -> Unit = _
  append(self : Self, nodes : Array[&TElementAppendNodes]) -> Unit = _
  replace_children(self : Self, nodes : Array[&TElementReplaceChildrenNodes]) -> Unit = _
  move_before(self : Self, node : &TNode, child : &TNode) -> Unit = _
  query_selector_opt(self : Self, selectors : String) -> Element? = _
  query_selector_all(self : Self, selectors : String) -> NodeList = _
  previous_element_sibling(self : Self) -> Element = _
  next_element_sibling(self : Self) -> Element = _
  before(self : Self, nodes : Array[&TElementBeforeNodes]) -> Unit = _
  after(self : Self, nodes : Array[&TElementAfterNodes]) -> Unit = _
  replace_with(self : Self, nodes : Array[&TElementReplaceWithNodes]) -> Unit = _
  remove(self : Self) -> Unit = _
  assigned_slot(self : Self) -> HTMLSlotElement = _
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
  animate(self : Self, keyframes : JsValue, options? : &TElementAnimateOptions) -> Animation = _
  get_animations(self : Self, options? : GetAnimationsOptions) -> Array[
    Animation,
  ] = _
  get_attribute_node(self : Self, qualified_name : String) -> Attr = _
  get_attribute_node_ns(self : Self, namespace_ : String, local_name : String) -> Attr = _
  set_attribute_node(self : Self, attr : &TAttr) -> Attr = _
  set_attribute_node_ns(self : Self, attr : &TAttr) -> Attr = _
  closest(self : Self, selectors : String) -> Element = _
  insert_adjacent_element(self : Self, where_ : String, element : &TElement) -> Element = _
  query_selector(self : Self, selectors : String) -> Element = _
}

///|
/// [Element.namespaceURI](https://developer.mozilla.org/en-US/docs/Web/API/Element/namespaceURI)
impl TElement with namespace_uri(self : Self) -> String {
  element_namespace_uri_ffi(TJsValue::to_js(self))
}

///|
/// [Element.prefix](https://developer.mozilla.org/en-US/docs/Web/API/Element/prefix)
impl TElement with prefix(self : Self) -> String {
  element_prefix_ffi(TJsValue::to_js(self))
}

///|
/// [Element.localName](https://developer.mozilla.org/en-US/docs/Web/API/Element/localName)
impl TElement with local_name(self : Self) -> String {
  element_local_name_ffi(TJsValue::to_js(self))
}

///|
/// [Element.tagName](https://developer.mozilla.org/en-US/docs/Web/API/Element/tagName)
impl TElement with tag_name(self : Self) -> String {
  element_tag_name_ffi(TJsValue::to_js(self))
}

///|
/// [Element.id](https://developer.mozilla.org/en-US/docs/Web/API/Element/id)
impl TElement with id(self : Self) -> String {
  element_id_ffi(TJsValue::to_js(self))
}

///|
/// [Element.id](https://developer.mozilla.org/en-US/docs/Web/API/Element/id)
impl TElement with set_id(self : Self, id : String) -> Unit {
  element_set_id_ffi(TJsValue::to_js(self), TJsValue::to_js(id))
}

///|
/// [Element.className](https://developer.mozilla.org/en-US/docs/Web/API/Element/className)
impl TElement with class_name(self : Self) -> String {
  element_class_name_ffi(TJsValue::to_js(self))
}

///|
/// [Element.className](https://developer.mozilla.org/en-US/docs/Web/API/Element/className)
impl TElement with set_class_name(self : Self, class_name : String) -> Unit {
  element_set_class_name_ffi(TJsValue::to_js(self), TJsValue::to_js(class_name))
}

///|
/// [Element.classList](https://developer.mozilla.org/en-US/docs/Web/API/Element/classList)
impl TElement with class_list(self : Self) -> DOMTokenList {
  element_class_list_ffi(TJsValue::to_js(self))
}

///|
/// [Element.slot](https://developer.mozilla.org/en-US/docs/Web/API/Element/slot)
impl TElement with slot(self : Self) -> String {
  element_slot_ffi(TJsValue::to_js(self))
}

///|
/// [Element.slot](https://developer.mozilla.org/en-US/docs/Web/API/Element/slot)
impl TElement with set_slot(self : Self, slot : String) -> Unit {
  element_set_slot_ffi(TJsValue::to_js(self), TJsValue::to_js(slot))
}

///|
/// [Element.hasAttributes](https://developer.mozilla.org/en-US/docs/Web/API/Element/hasAttributes)
impl TElement with has_attributes(self : Self) -> Bool {
  element_has_attributes_ffi(TJsValue::to_js(self))
}

///|
/// [Element.attributes](https://developer.mozilla.org/en-US/docs/Web/API/Element/attributes)
impl TElement with attributes(self : Self) -> NamedNodeMap {
  element_attributes_ffi(TJsValue::to_js(self))
}

///|
/// [Element.getAttributeNames](https://developer.mozilla.org/en-US/docs/Web/API/Element/getAttributeNames)
impl TElement with get_attribute_names(self : Self) -> Array[String] {
  element_get_attribute_names_ffi(TJsValue::to_js(self))
}

///|
/// [Element.getAttribute](https://developer.mozilla.org/en-US/docs/Web/API/Element/getAttribute)
impl TElement with get_attribute(self : Self, qualified_name : String) -> String? {
  element_get_attribute_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(qualified_name),
  ).to_option()
}

///|
/// [Element.getAttributeNS](https://developer.mozilla.org/en-US/docs/Web/API/Element/getAttributeNS)
impl TElement with get_attribute_ns(
  self : Self,
  namespace_ : String,
  local_name : String,
) -> String? {
  element_get_attribute_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
    TJsValue::to_js(local_name),
  ).to_option()
}

///|
/// [Element.setAttribute](https://developer.mozilla.org/en-US/docs/Web/API/Element/setAttribute)
impl TElement with set_attribute(
  self : Self,
  qualified_name : String,
  value : &TElementSetAttributeValue,
) -> Unit {
  element_set_attribute_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(qualified_name),
    value.to_js(),
  )
}

///|
/// [Element.setAttributeNS](https://developer.mozilla.org/en-US/docs/Web/API/Element/setAttributeNS)
impl TElement with set_attribute_ns(
  self : Self,
  namespace_ : String,
  qualified_name : String,
  value : &TElementSetAttributeNSValue,
) -> Unit {
  element_set_attribute_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
    TJsValue::to_js(qualified_name),
    value.to_js(),
  )
}

///|
/// [Element.removeAttribute](https://developer.mozilla.org/en-US/docs/Web/API/Element/removeAttribute)
impl TElement with remove_attribute(self : Self, qualified_name : String) -> Unit {
  element_remove_attribute_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(qualified_name),
  )
}

///|
/// [Element.removeAttributeNS](https://developer.mozilla.org/en-US/docs/Web/API/Element/removeAttributeNS)
impl TElement with remove_attribute_ns(
  self : Self,
  namespace_ : String,
  local_name : String,
) -> Unit {
  element_remove_attribute_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
    TJsValue::to_js(local_name),
  )
}

///|
/// [Element.toggleAttribute](https://developer.mozilla.org/en-US/docs/Web/API/Element/toggleAttribute)
impl TElement with toggle_attribute(
  self : Self,
  qualified_name : String,
  force? : Bool,
) -> Bool {
  element_toggle_attribute_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(qualified_name),
    opt_to_js(force),
  )
}

///|
/// [Element.hasAttribute](https://developer.mozilla.org/en-US/docs/Web/API/Element/hasAttribute)
impl TElement with has_attribute(self : Self, qualified_name : String) -> Bool {
  element_has_attribute_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(qualified_name),
  )
}

///|
/// [Element.hasAttributeNS](https://developer.mozilla.org/en-US/docs/Web/API/Element/hasAttributeNS)
impl TElement with has_attribute_ns(
  self : Self,
  namespace_ : String,
  local_name : String,
) -> Bool {
  element_has_attribute_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
    TJsValue::to_js(local_name),
  )
}

///|
/// [Element.getAttributeNode](https://developer.mozilla.org/en-US/docs/Web/API/Element/getAttributeNode)
impl TElement with get_attribute_node_opt(self : Self, qualified_name : String) -> Attr? {
  element_get_attribute_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(qualified_name),
  ).to_option()
}

///|
/// [Element.getAttributeNodeNS](https://developer.mozilla.org/en-US/docs/Web/API/Element/getAttributeNodeNS)
impl TElement with get_attribute_node_ns_opt(
  self : Self,
  namespace_ : String,
  local_name : String,
) -> Attr? {
  element_get_attribute_node_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
    TJsValue::to_js(local_name),
  ).to_option()
}

///|
/// [Element.setAttributeNode](https://developer.mozilla.org/en-US/docs/Web/API/Element/setAttributeNode)
impl TElement with set_attribute_node_opt(self : Self, attr : &TAttr) -> Attr? {
  element_set_attribute_node_ffi(TJsValue::to_js(self), TJsValue::to_js(attr)).to_option()
}

///|
/// [Element.setAttributeNodeNS](https://developer.mozilla.org/en-US/docs/Web/API/Element/setAttributeNodeNS)
impl TElement with set_attribute_node_ns_opt(self : Self, attr : &TAttr) -> Attr? {
  element_set_attribute_node_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(attr),
  ).to_option()
}

///|
/// [Element.removeAttributeNode](https://developer.mozilla.org/en-US/docs/Web/API/Element/removeAttributeNode)
impl TElement with remove_attribute_node(self : Self, attr : &TAttr) -> Attr {
  element_remove_attribute_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(attr),
  )
}

///|
/// [Element.attachShadow](https://developer.mozilla.org/en-US/docs/Web/API/Element/attachShadow)
impl TElement with attach_shadow(self : Self, init : ShadowRootInit) -> ShadowRoot {
  element_attach_shadow_ffi(TJsValue::to_js(self), TJsValue::to_js(init))
}

///|
/// [Element.shadowRoot](https://developer.mozilla.org/en-US/docs/Web/API/Element/shadowRoot)
impl TElement with shadow_root(self : Self) -> ShadowRoot {
  element_shadow_root_ffi(TJsValue::to_js(self))
}

///|
/// [Element.customElementRegistry](https://developer.mozilla.org/en-US/docs/Web/API/Element/customElementRegistry)
impl TElement with custom_element_registry(self : Self) -> CustomElementRegistry {
  element_custom_element_registry_ffi(TJsValue::to_js(self))
}

///|
/// [Element.closest](https://developer.mozilla.org/en-US/docs/Web/API/Element/closest)
impl TElement with closest_opt(self : Self, selectors : String) -> Element? {
  element_closest_ffi(TJsValue::to_js(self), TJsValue::to_js(selectors)).to_option()
}

///|
/// [Element.matches](https://developer.mozilla.org/en-US/docs/Web/API/Element/matches)
impl TElement with matches(self : Self, selectors : String) -> Bool {
  element_matches_ffi(TJsValue::to_js(self), TJsValue::to_js(selectors))
}

///|
/// [Element.webkitMatchesSelector](https://developer.mozilla.org/en-US/docs/Web/API/Element/webkitMatchesSelector)
impl TElement with webkit_matches_selector(self : Self, selectors : String) -> Bool {
  element_webkit_matches_selector_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(selectors),
  )
}

///|
/// [Element.getElementsByTagName](https://developer.mozilla.org/en-US/docs/Web/API/Element/getElementsByTagName)
impl TElement with get_elements_by_tag_name(
  self : Self,
  qualified_name : String,
) -> HTMLCollection {
  element_get_elements_by_tag_name_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(qualified_name),
  )
}

///|
/// [Element.getElementsByTagNameNS](https://developer.mozilla.org/en-US/docs/Web/API/Element/getElementsByTagNameNS)
impl TElement with get_elements_by_tag_name_ns(
  self : Self,
  namespace_ : String,
  local_name : String,
) -> HTMLCollection {
  element_get_elements_by_tag_name_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
    TJsValue::to_js(local_name),
  )
}

///|
/// [Element.getElementsByClassName](https://developer.mozilla.org/en-US/docs/Web/API/Element/getElementsByClassName)
impl TElement with get_elements_by_class_name(self : Self, class_names : String) -> HTMLCollection {
  element_get_elements_by_class_name_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(class_names),
  )
}

///|
/// [Element.insertAdjacentElement](https://developer.mozilla.org/en-US/docs/Web/API/Element/insertAdjacentElement)
impl TElement with insert_adjacent_element_opt(
  self : Self,
  where_ : String,
  element : &TElement,
) -> Element? {
  element_insert_adjacent_element_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(where_),
    TJsValue::to_js(element),
  ).to_option()
}

///|
/// [Element.insertAdjacentText](https://developer.mozilla.org/en-US/docs/Web/API/Element/insertAdjacentText)
impl TElement with insert_adjacent_text(
  self : Self,
  where_ : String,
  data : String,
) -> Unit {
  element_insert_adjacent_text_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(where_),
    TJsValue::to_js(data),
  )
}

///|
/// [Element.setHTMLUnsafe](https://developer.mozilla.org/en-US/docs/Web/API/Element/setHTMLUnsafe)
impl TElement with set_html_unsafe(
  self : Self,
  html : &TElementSetHTMLUnsafeHtml,
) -> Unit {
  element_set_html_unsafe_ffi(TJsValue::to_js(self), html.to_js())
}

///|
/// [Element.getHTML](https://developer.mozilla.org/en-US/docs/Web/API/Element/getHTML)
impl TElement with get_html(self : Self, options? : GetHTMLOptions) -> String {
  element_get_html_ffi(TJsValue::to_js(self), opt_to_js(options))
}

///|
/// [Element.innerHTML](https://developer.mozilla.org/en-US/docs/Web/API/Element/innerHTML)
impl TElement with inner_html(self : Self) -> ElementInnerHTML {
  element_inner_html_ffi(TJsValue::to_js(self))
}

///|
/// [Element.innerHTML](https://developer.mozilla.org/en-US/docs/Web/API/Element/innerHTML)
impl TElement with set_inner_html(self : Self, inner_html : &TElementInnerHTML) -> Unit {
  element_set_inner_html_ffi(TJsValue::to_js(self), inner_html.to_js())
}

///|
/// [Element.outerHTML](https://developer.mozilla.org/en-US/docs/Web/API/Element/outerHTML)
impl TElement with outer_html(self : Self) -> ElementOuterHTML {
  element_outer_html_ffi(TJsValue::to_js(self))
}

///|
/// [Element.outerHTML](https://developer.mozilla.org/en-US/docs/Web/API/Element/outerHTML)
impl TElement with set_outer_html(self : Self, outer_html : &TElementOuterHTML) -> Unit {
  element_set_outer_html_ffi(TJsValue::to_js(self), outer_html.to_js())
}

///|
/// [Element.insertAdjacentHTML](https://developer.mozilla.org/en-US/docs/Web/API/Element/insertAdjacentHTML)
impl TElement with insert_adjacent_html(
  self : Self,
  position : String,
  string : &TElementInsertAdjacentHTMLString,
) -> Unit {
  element_insert_adjacent_html_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(position),
    string.to_js(),
  )
}

///|
/// [Element.getClientRects](https://developer.mozilla.org/en-US/docs/Web/API/Element/getClientRects)
impl TElement with get_client_rects(self : Self) -> DOMRectList {
  element_get_client_rects_ffi(TJsValue::to_js(self))
}

///|
/// [Element.getBoundingClientRect](https://developer.mozilla.org/en-US/docs/Web/API/Element/getBoundingClientRect)
impl TElement with get_bounding_client_rect(self : Self) -> DOMRect {
  element_get_bounding_client_rect_ffi(TJsValue::to_js(self))
}

///|
/// [Element.checkVisibility](https://developer.mozilla.org/en-US/docs/Web/API/Element/checkVisibility)
impl TElement with check_visibility(
  self : Self,
  options? : CheckVisibilityOptions,
) -> Bool {
  element_check_visibility_ffi(TJsValue::to_js(self), opt_to_js(options))
}

///|
/// [Element.scrollIntoView](https://developer.mozilla.org/en-US/docs/Web/API/Element/scrollIntoView)
impl TElement with scroll_into_view(
  self : Self,
  arg? : &TElementScrollIntoViewArg,
) -> JsPromise[JsValue] {
  element_scroll_into_view_ffi(
    TJsValue::to_js(self),
    match arg {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
  )
}

///|
/// [Element.scroll](https://developer.mozilla.org/en-US/docs/Web/API/Element/scroll)
impl TElement with scroll(self : Self, options? : ScrollToOptions) -> JsPromise[
  JsValue,
] {
  element_scroll_ffi(TJsValue::to_js(self), opt_to_js(options))
}

///|
/// [Element.scroll](https://developer.mozilla.org/en-US/docs/Web/API/Element/scroll)
impl TElement with scroll_xy(self : Self, x : Double, y : Double) -> JsPromise[
  JsValue,
] {
  element_scroll_xy_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
/// [Element.scrollTo](https://developer.mozilla.org/en-US/docs/Web/API/Element/scrollTo)
impl TElement with scroll_to(self : Self, options? : ScrollToOptions) -> JsPromise[
  JsValue,
] {
  element_scroll_to_ffi(TJsValue::to_js(self), opt_to_js(options))
}

///|
/// [Element.scrollTo](https://developer.mozilla.org/en-US/docs/Web/API/Element/scrollTo)
impl TElement with scroll_to_xy(self : Self, x : Double, y : Double) -> JsPromise[
  JsValue,
] {
  element_scroll_to_xy_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
/// [Element.scrollBy](https://developer.mozilla.org/en-US/docs/Web/API/Element/scrollBy)
impl TElement with scroll_by(self : Self, options? : ScrollToOptions) -> JsPromise[
  JsValue,
] {
  element_scroll_by_ffi(TJsValue::to_js(self), opt_to_js(options))
}

///|
/// [Element.scrollBy](https://developer.mozilla.org/en-US/docs/Web/API/Element/scrollBy)
impl TElement with scroll_by_xy(self : Self, x : Double, y : Double) -> JsPromise[
  JsValue,
] {
  element_scroll_by_xy_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
/// [Element.scrollTop](https://developer.mozilla.org/en-US/docs/Web/API/Element/scrollTop)
impl TElement with scroll_top(self : Self) -> Double {
  element_scroll_top_ffi(TJsValue::to_js(self))
}

///|
/// [Element.scrollTop](https://developer.mozilla.org/en-US/docs/Web/API/Element/scrollTop)
impl TElement with set_scroll_top(self : Self, scroll_top : Double) -> Unit {
  element_set_scroll_top_ffi(TJsValue::to_js(self), TJsValue::to_js(scroll_top))
}

///|
/// [Element.scrollLeft](https://developer.mozilla.org/en-US/docs/Web/API/Element/scrollLeft)
impl TElement with scroll_left(self : Self) -> Double {
  element_scroll_left_ffi(TJsValue::to_js(self))
}

///|
/// [Element.scrollLeft](https://developer.mozilla.org/en-US/docs/Web/API/Element/scrollLeft)
impl TElement with set_scroll_left(self : Self, scroll_left : Double) -> Unit {
  element_set_scroll_left_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(scroll_left),
  )
}

///|
/// [Element.scrollWidth](https://developer.mozilla.org/en-US/docs/Web/API/Element/scrollWidth)
impl TElement with scroll_width(self : Self) -> Int {
  element_scroll_width_ffi(TJsValue::to_js(self))
}

///|
/// [Element.scrollHeight](https://developer.mozilla.org/en-US/docs/Web/API/Element/scrollHeight)
impl TElement with scroll_height(self : Self) -> Int {
  element_scroll_height_ffi(TJsValue::to_js(self))
}

///|
/// [Element.clientTop](https://developer.mozilla.org/en-US/docs/Web/API/Element/clientTop)
impl TElement with client_top(self : Self) -> Int {
  element_client_top_ffi(TJsValue::to_js(self))
}

///|
/// [Element.clientLeft](https://developer.mozilla.org/en-US/docs/Web/API/Element/clientLeft)
impl TElement with client_left(self : Self) -> Int {
  element_client_left_ffi(TJsValue::to_js(self))
}

///|
/// [Element.clientWidth](https://developer.mozilla.org/en-US/docs/Web/API/Element/clientWidth)
impl TElement with client_width(self : Self) -> Int {
  element_client_width_ffi(TJsValue::to_js(self))
}

///|
/// [Element.clientHeight](https://developer.mozilla.org/en-US/docs/Web/API/Element/clientHeight)
impl TElement with client_height(self : Self) -> Int {
  element_client_height_ffi(TJsValue::to_js(self))
}

///|
/// [Element.currentCSSZoom](https://developer.mozilla.org/en-US/docs/Web/API/Element/currentCSSZoom)
impl TElement with current_css_zoom(self : Self) -> Double {
  element_current_css_zoom_ffi(TJsValue::to_js(self))
}

///|
/// [Element.requestFullscreen](https://developer.mozilla.org/en-US/docs/Web/API/Element/requestFullscreen)
impl TElement with request_fullscreen(self : Self, options? : FullscreenOptions) -> JsPromise[
  JsValue,
] {
  element_request_fullscreen_ffi(TJsValue::to_js(self), opt_to_js(options))
}

///|
/// [Element.onfullscreenchange](https://developer.mozilla.org/en-US/docs/Web/API/Element/onfullscreenchange)
impl TElement with onfullscreenchange(self : Self) -> EventHandler {
  element_onfullscreenchange_ffi(TJsValue::to_js(self))
}

///|
/// [Element.onfullscreenchange](https://developer.mozilla.org/en-US/docs/Web/API/Element/onfullscreenchange)
impl TElement with set_onfullscreenchange(
  self : Self,
  onfullscreenchange : (Event) -> JsValue,
) -> Unit {
  element_set_onfullscreenchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onfullscreenchange)),
  )
}

///|
/// [Element.onfullscreenerror](https://developer.mozilla.org/en-US/docs/Web/API/Element/onfullscreenerror)
impl TElement with onfullscreenerror(self : Self) -> EventHandler {
  element_onfullscreenerror_ffi(TJsValue::to_js(self))
}

///|
/// [Element.onfullscreenerror](https://developer.mozilla.org/en-US/docs/Web/API/Element/onfullscreenerror)
impl TElement with set_onfullscreenerror(
  self : Self,
  onfullscreenerror : (Event) -> JsValue,
) -> Unit {
  element_set_onfullscreenerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onfullscreenerror)),
  )
}

///|
/// [Element.setPointerCapture](https://developer.mozilla.org/en-US/docs/Web/API/Element/setPointerCapture)
impl TElement with set_pointer_capture(self : Self, pointer_id : Int) -> Unit {
  element_set_pointer_capture_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(pointer_id),
  )
}

///|
/// [Element.releasePointerCapture](https://developer.mozilla.org/en-US/docs/Web/API/Element/releasePointerCapture)
impl TElement with release_pointer_capture(self : Self, pointer_id : Int) -> Unit {
  element_release_pointer_capture_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(pointer_id),
  )
}

///|
/// [Element.hasPointerCapture](https://developer.mozilla.org/en-US/docs/Web/API/Element/hasPointerCapture)
impl TElement with has_pointer_capture(self : Self, pointer_id : Int) -> Bool {
  element_has_pointer_capture_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(pointer_id),
  )
}

///|
/// [Element.children](https://developer.mozilla.org/en-US/docs/Web/API/Element/children)
impl TElement with children(self : Self) -> HTMLCollection {
  element_children_ffi(TJsValue::to_js(self))
}

///|
/// [Element.firstElementChild](https://developer.mozilla.org/en-US/docs/Web/API/Element/firstElementChild)
impl TElement with first_element_child(self : Self) -> Element {
  element_first_element_child_ffi(TJsValue::to_js(self))
}

///|
/// [Element.lastElementChild](https://developer.mozilla.org/en-US/docs/Web/API/Element/lastElementChild)
impl TElement with last_element_child(self : Self) -> Element {
  element_last_element_child_ffi(TJsValue::to_js(self))
}

///|
/// [Element.childElementCount](https://developer.mozilla.org/en-US/docs/Web/API/Element/childElementCount)
impl TElement with child_element_count(self : Self) -> UInt {
  element_child_element_count_ffi(TJsValue::to_js(self))
}

///|
/// [Element.prepend](https://developer.mozilla.org/en-US/docs/Web/API/Element/prepend)
impl TElement with prepend(self : Self, nodes : Array[&TElementPrependNodes]) -> Unit {
  element_prepend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(
      nodes.map(fn(v : &TElementPrependNodes) -> JsValue { v.to_js() }),
    ),
  )
}

///|
/// [Element.append](https://developer.mozilla.org/en-US/docs/Web/API/Element/append)
impl TElement with append(self : Self, nodes : Array[&TElementAppendNodes]) -> Unit {
  element_append_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(
      nodes.map(fn(v : &TElementAppendNodes) -> JsValue { v.to_js() }),
    ),
  )
}

///|
/// [Element.replaceChildren](https://developer.mozilla.org/en-US/docs/Web/API/Element/replaceChildren)
impl TElement with replace_children(
  self : Self,
  nodes : Array[&TElementReplaceChildrenNodes],
) -> Unit {
  element_replace_children_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(
      nodes.map(fn(v : &TElementReplaceChildrenNodes) -> JsValue { v.to_js() }),
    ),
  )
}

///|
/// [Element.moveBefore](https://developer.mozilla.org/en-US/docs/Web/API/Element/moveBefore)
impl TElement with move_before(self : Self, node : &TNode, child : &TNode) -> Unit {
  element_move_before_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    TJsValue::to_js(child),
  )
}

///|
/// [Element.querySelector](https://developer.mozilla.org/en-US/docs/Web/API/Element/querySelector)
impl TElement with query_selector_opt(self : Self, selectors : String) -> Element? {
  element_query_selector_ffi(TJsValue::to_js(self), TJsValue::to_js(selectors)).to_option()
}

///|
/// [Element.querySelectorAll](https://developer.mozilla.org/en-US/docs/Web/API/Element/querySelectorAll)
impl TElement with query_selector_all(self : Self, selectors : String) -> NodeList {
  element_query_selector_all_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(selectors),
  )
}

///|
/// [Element.previousElementSibling](https://developer.mozilla.org/en-US/docs/Web/API/Element/previousElementSibling)
impl TElement with previous_element_sibling(self : Self) -> Element {
  element_previous_element_sibling_ffi(TJsValue::to_js(self))
}

///|
/// [Element.nextElementSibling](https://developer.mozilla.org/en-US/docs/Web/API/Element/nextElementSibling)
impl TElement with next_element_sibling(self : Self) -> Element {
  element_next_element_sibling_ffi(TJsValue::to_js(self))
}

///|
/// [Element.before](https://developer.mozilla.org/en-US/docs/Web/API/Element/before)
impl TElement with before(self : Self, nodes : Array[&TElementBeforeNodes]) -> Unit {
  element_before_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(
      nodes.map(fn(v : &TElementBeforeNodes) -> JsValue { v.to_js() }),
    ),
  )
}

///|
/// [Element.after](https://developer.mozilla.org/en-US/docs/Web/API/Element/after)
impl TElement with after(self : Self, nodes : Array[&TElementAfterNodes]) -> Unit {
  element_after_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(
      nodes.map(fn(v : &TElementAfterNodes) -> JsValue { v.to_js() }),
    ),
  )
}

///|
/// [Element.replaceWith](https://developer.mozilla.org/en-US/docs/Web/API/Element/replaceWith)
impl TElement with replace_with(
  self : Self,
  nodes : Array[&TElementReplaceWithNodes],
) -> Unit {
  element_replace_with_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(
      nodes.map(fn(v : &TElementReplaceWithNodes) -> JsValue { v.to_js() }),
    ),
  )
}

///|
/// [Element.remove](https://developer.mozilla.org/en-US/docs/Web/API/Element/remove)
impl TElement with remove(self : Self) -> Unit {
  element_remove_ffi(TJsValue::to_js(self))
}

///|
/// [Element.assignedSlot](https://developer.mozilla.org/en-US/docs/Web/API/Element/assignedSlot)
impl TElement with assigned_slot(self : Self) -> HTMLSlotElement {
  element_assigned_slot_ffi(TJsValue::to_js(self))
}

///|
/// [Element.getBoxQuads](https://developer.mozilla.org/en-US/docs/Web/API/Element/getBoxQuads)
impl TElement with get_box_quads(self : Self, options? : BoxQuadOptions) -> Array[
  DOMQuad,
] {
  element_get_box_quads_ffi(TJsValue::to_js(self), opt_to_js(options))
}

///|
/// [Element.convertQuadFromNode](https://developer.mozilla.org/en-US/docs/Web/API/Element/convertQuadFromNode)
impl TElement with convert_quad_from_node(
  self : Self,
  quad : DOMQuadInit,
  from : &TGeometryNode,
  options? : ConvertCoordinateOptions,
) -> DOMQuad {
  element_convert_quad_from_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(quad),
    from.to_js(),
    opt_to_js(options),
  )
}

///|
/// [Element.convertRectFromNode](https://developer.mozilla.org/en-US/docs/Web/API/Element/convertRectFromNode)
impl TElement with convert_rect_from_node(
  self : Self,
  rect : &TDOMRectReadOnly,
  from : &TGeometryNode,
  options? : ConvertCoordinateOptions,
) -> DOMQuad {
  element_convert_rect_from_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(rect),
    from.to_js(),
    opt_to_js(options),
  )
}

///|
/// [Element.convertPointFromNode](https://developer.mozilla.org/en-US/docs/Web/API/Element/convertPointFromNode)
impl TElement with convert_point_from_node(
  self : Self,
  point : DOMPointInit,
  from : &TGeometryNode,
  options? : ConvertCoordinateOptions,
) -> DOMPoint {
  element_convert_point_from_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(point),
    from.to_js(),
    opt_to_js(options),
  )
}

///|
/// [Element.animate](https://developer.mozilla.org/en-US/docs/Web/API/Element/animate)
impl TElement with animate(
  self : Self,
  keyframes : JsValue,
  options? : &TElementAnimateOptions,
) -> Animation {
  element_animate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(keyframes),
    match options {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
  )
}

///|
/// [Element.getAnimations](https://developer.mozilla.org/en-US/docs/Web/API/Element/getAnimations)
impl TElement with get_animations(self : Self, options? : GetAnimationsOptions) -> Array[
  Animation,
] {
  element_get_animations_ffi(TJsValue::to_js(self), opt_to_js(options))
}

///|
impl TElement with get_attribute_node(self : Self, qualified_name : String) -> Attr {
  self.get_attribute_node_opt(qualified_name).unwrap()
}

///|
impl TElement with get_attribute_node_ns(
  self : Self,
  namespace_ : String,
  local_name : String,
) -> Attr {
  self.get_attribute_node_ns_opt(namespace_, local_name).unwrap()
}

///|
impl TElement with set_attribute_node(self : Self, attr : &TAttr) -> Attr {
  self.set_attribute_node_opt(attr).unwrap()
}

///|
impl TElement with set_attribute_node_ns(self : Self, attr : &TAttr) -> Attr {
  self.set_attribute_node_ns_opt(attr).unwrap()
}

///|
impl TElement with closest(self : Self, selectors : String) -> Element {
  self.closest_opt(selectors).unwrap()
}

///|
impl TElement with insert_adjacent_element(
  self : Self,
  where_ : String,
  element : &TElement,
) -> Element {
  self.insert_adjacent_element_opt(where_, element).unwrap()
}

///|
impl TElement with query_selector(self : Self, selectors : String) -> Element {
  self.query_selector_opt(selectors).unwrap()
}
