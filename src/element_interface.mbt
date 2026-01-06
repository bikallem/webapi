// Do not edit. This file is generated.
// MoonBit type: Element
// Specifications: html.idl, dom.idl, cssom-view.idl

///|
#external
pub type Element

///|
pub impl TJsValue for Element with to_js(self : Element) -> JsValue = "%identity"

///|
pub fn[T : TElement] Element::into(self : Element) -> T = "%identity"

///|
pub impl TElement for Element

///|
pub impl TNode for Element

///|
pub impl TEventTarget for Element

///|
pub(open) trait TElementSetAttributeValue {
  to_js(self : Self) -> JsValue
}

///|
pub impl TElementSetAttributeValue for TrustedType with to_js(
  self : TrustedType,
) -> JsValue = "%identity"

///|
pub impl TElementSetAttributeValue for String with to_js(self : String) -> JsValue = "%identity"

///|
pub(open) trait TElementSetAttributeNSValue {
  to_js(self : Self) -> JsValue
}

///|
pub impl TElementSetAttributeNSValue for TrustedType with to_js(
  self : TrustedType,
) -> JsValue = "%identity"

///|
pub impl TElementSetAttributeNSValue for String with to_js(self : String) -> JsValue = "%identity"

///|
pub(open) trait TElementSetHTMLUnsafeHtml {
  to_js(self : Self) -> JsValue
}

///|
pub impl TElementSetHTMLUnsafeHtml for TrustedHTML with to_js(
  self : TrustedHTML,
) -> JsValue = "%identity"

///|
pub impl TElementSetHTMLUnsafeHtml for String with to_js(self : String) -> JsValue = "%identity"

///|
#external
pub type ElementInnerHTML

///|
pub fn[T : TElementInnerHTML] ElementInnerHTML::into(
  self : ElementInnerHTML,
) -> T = "%identity"

///|
pub impl TElementInnerHTML for ElementInnerHTML with to_js(
  self : ElementInnerHTML,
) -> JsValue = "%identity"

///|
pub(open) trait TElementInnerHTML {
  to_js(self : Self) -> JsValue
}

///|
pub impl TElementInnerHTML for TrustedHTML with to_js(self : TrustedHTML) -> JsValue = "%identity"

///|
pub impl TElementInnerHTML for String with to_js(self : String) -> JsValue = "%identity"

///|
#external
pub type ElementOuterHTML

///|
pub fn[T : TElementOuterHTML] ElementOuterHTML::into(
  self : ElementOuterHTML,
) -> T = "%identity"

///|
pub impl TElementOuterHTML for ElementOuterHTML with to_js(
  self : ElementOuterHTML,
) -> JsValue = "%identity"

///|
pub(open) trait TElementOuterHTML {
  to_js(self : Self) -> JsValue
}

///|
pub impl TElementOuterHTML for TrustedHTML with to_js(self : TrustedHTML) -> JsValue = "%identity"

///|
pub impl TElementOuterHTML for String with to_js(self : String) -> JsValue = "%identity"

///|
pub(open) trait TElementInsertAdjacentHTMLString {
  to_js(self : Self) -> JsValue
}

///|
pub impl TElementInsertAdjacentHTMLString for TrustedHTML with to_js(
  self : TrustedHTML,
) -> JsValue = "%identity"

///|
pub impl TElementInsertAdjacentHTMLString for String with to_js(self : String) -> JsValue = "%identity"

///|
pub(open) trait TElementScrollIntoViewArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TElementScrollIntoViewArg for Bool with to_js(self : Bool) -> JsValue = "%identity"

///|
pub impl TElementScrollIntoViewArg for ScrollIntoViewOptions with to_js(
  self : ScrollIntoViewOptions,
) -> JsValue = "%identity"

///|
pub(open) trait TElementPrependNodes {
  to_js(self : Self) -> JsValue
}

///|
pub impl TElementPrependNodes for Node with to_js(self : Node) -> JsValue = "%identity"

///|
pub impl TElementPrependNodes for String with to_js(self : String) -> JsValue = "%identity"

///|
pub(open) trait TElementAppendNodes {
  to_js(self : Self) -> JsValue
}

///|
pub impl TElementAppendNodes for Node with to_js(self : Node) -> JsValue = "%identity"

///|
pub impl TElementAppendNodes for String with to_js(self : String) -> JsValue = "%identity"

///|
pub(open) trait TElementReplaceChildrenNodes {
  to_js(self : Self) -> JsValue
}

///|
pub impl TElementReplaceChildrenNodes for Node with to_js(self : Node) -> JsValue = "%identity"

///|
pub impl TElementReplaceChildrenNodes for String with to_js(self : String) -> JsValue = "%identity"

///|
pub(open) trait TElementBeforeNodes {
  to_js(self : Self) -> JsValue
}

///|
pub impl TElementBeforeNodes for Node with to_js(self : Node) -> JsValue = "%identity"

///|
pub impl TElementBeforeNodes for String with to_js(self : String) -> JsValue = "%identity"

///|
pub(open) trait TElementAfterNodes {
  to_js(self : Self) -> JsValue
}

///|
pub impl TElementAfterNodes for Node with to_js(self : Node) -> JsValue = "%identity"

///|
pub impl TElementAfterNodes for String with to_js(self : String) -> JsValue = "%identity"

///|
pub(open) trait TElementReplaceWithNodes {
  to_js(self : Self) -> JsValue
}

///|
pub impl TElementReplaceWithNodes for Node with to_js(self : Node) -> JsValue = "%identity"

///|
pub impl TElementReplaceWithNodes for String with to_js(self : String) -> JsValue = "%identity"

///|
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
  get_attribute_node(self : Self, qualified_name : String) -> Attr? = _
  get_attribute_node_ns(self : Self, namespace_ : String, local_name : String) -> Attr? = _
  set_attribute_node(self : Self, attr : &TAttr) -> Attr? = _
  set_attribute_node_ns(self : Self, attr : &TAttr) -> Attr? = _
  remove_attribute_node(self : Self, attr : &TAttr) -> Attr = _
  attach_shadow(self : Self, init : ShadowRootInit) -> ShadowRoot = _
  shadow_root(self : Self) -> ShadowRoot = _
  custom_element_registry(self : Self) -> CustomElementRegistry = _
  closest(self : Self, selectors : String) -> Element? = _
  matches(self : Self, selectors : String) -> Bool = _
  webkit_matches_selector(self : Self, selectors : String) -> Bool = _
  get_elements_by_tag_name(self : Self, qualified_name : String) -> HTMLCollection = _
  get_elements_by_tag_name_ns(
    self : Self,
    namespace_ : String,
    local_name : String,
  ) -> HTMLCollection = _
  get_elements_by_class_name(self : Self, class_names : String) -> HTMLCollection = _
  insert_adjacent_element(self : Self, where_ : String, element : &TElement) -> Element? = _
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
    Unit,
  ] = _
  scroll(self : Self, options? : ScrollToOptions) -> JsPromise[Unit] = _
  scroll_2(self : Self, x : Double, y : Double) -> JsPromise[Unit] = _
  scroll_to(self : Self, options? : ScrollToOptions) -> JsPromise[Unit] = _
  scroll_to_2(self : Self, x : Double, y : Double) -> JsPromise[Unit] = _
  scroll_by(self : Self, options? : ScrollToOptions) -> JsPromise[Unit] = _
  scroll_by_2(self : Self, x : Double, y : Double) -> JsPromise[Unit] = _
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
  children(self : Self) -> HTMLCollection = _
  first_element_child(self : Self) -> Element = _
  last_element_child(self : Self) -> Element = _
  child_element_count(self : Self) -> UInt = _
  prepend(self : Self, nodes : &TElementPrependNodes) -> Unit = _
  append(self : Self, nodes : &TElementAppendNodes) -> Unit = _
  replace_children(self : Self, nodes : &TElementReplaceChildrenNodes) -> Unit = _
  move_before(self : Self, node : &TNode, child : &TNode) -> Unit = _
  query_selector(self : Self, selectors : String) -> Element? = _
  query_selector_all(self : Self, selectors : String) -> NodeList = _
  previous_element_sibling(self : Self) -> Element = _
  next_element_sibling(self : Self) -> Element = _
  before(self : Self, nodes : &TElementBeforeNodes) -> Unit = _
  after(self : Self, nodes : &TElementAfterNodes) -> Unit = _
  replace_with(self : Self, nodes : &TElementReplaceWithNodes) -> Unit = _
  remove(self : Self) -> Unit = _
  assigned_slot(self : Self) -> HTMLSlotElement = _
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
extern "js" fn element_namespace_uri_ffi(obj : JsValue) -> String = "(obj) => obj.namespaceURI"

///|
impl TElement with namespace_uri(self : Self) -> String {
  element_namespace_uri_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_prefix_ffi(obj : JsValue) -> String = "(obj) => obj.prefix"

///|
impl TElement with prefix(self : Self) -> String {
  element_prefix_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_local_name_ffi(obj : JsValue) -> String = "(obj) => obj.localName"

///|
impl TElement with local_name(self : Self) -> String {
  element_local_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_tag_name_ffi(obj : JsValue) -> String = "(obj) => obj.tagName"

///|
impl TElement with tag_name(self : Self) -> String {
  element_tag_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_id_ffi(obj : JsValue) -> String = "(obj) => obj.id"

///|
impl TElement with id(self : Self) -> String {
  element_id_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_set_id_ffi(obj : JsValue, id : JsValue) -> Unit = "(obj, id) => { obj.id = id; }"

///|
impl TElement with set_id(self : Self, id : String) -> Unit {
  element_set_id_ffi(TJsValue::to_js(self), TJsValue::to_js(id))
}

///|
extern "js" fn element_class_name_ffi(obj : JsValue) -> String = "(obj) => obj.className"

///|
impl TElement with class_name(self : Self) -> String {
  element_class_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_set_class_name_ffi(
  obj : JsValue,
  class_name : JsValue,
) -> Unit = "(obj, className) => { obj.className = class_name; }"

///|
impl TElement with set_class_name(self : Self, class_name : String) -> Unit {
  element_set_class_name_ffi(TJsValue::to_js(self), TJsValue::to_js(class_name))
}

///|
extern "js" fn element_class_list_ffi(obj : JsValue) -> DOMTokenList = "(obj) => obj.classList"

///|
impl TElement with class_list(self : Self) -> DOMTokenList {
  element_class_list_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_slot_ffi(obj : JsValue) -> String = "(obj) => obj.slot"

///|
impl TElement with slot(self : Self) -> String {
  element_slot_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_set_slot_ffi(obj : JsValue, slot : JsValue) -> Unit = "(obj, slot) => { obj.slot = slot; }"

///|
impl TElement with set_slot(self : Self, slot : String) -> Unit {
  element_set_slot_ffi(TJsValue::to_js(self), TJsValue::to_js(slot))
}

///|
extern "js" fn element_has_attributes_ffi(obj : JsValue) -> Bool = "(obj) => obj.hasAttributes(obj)"

///|
impl TElement with has_attributes(self : Self) -> Bool {
  element_has_attributes_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_attributes_ffi(obj : JsValue) -> NamedNodeMap = "(obj) => obj.attributes"

///|
impl TElement with attributes(self : Self) -> NamedNodeMap {
  element_attributes_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_get_attribute_names_ffi(obj : JsValue) -> Array[String] = "(obj) => obj.getAttributeNames(obj)"

///|
impl TElement with get_attribute_names(self : Self) -> Array[String] {
  element_get_attribute_names_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_get_attribute_ffi(
  obj : JsValue,
  qualified_name : JsValue,
) -> JsValue = "(obj, qualified_name) => obj.getAttribute(obj, qualified_name)"

///|
impl TElement with get_attribute(self : Self, qualified_name : String) -> String? {
  let result = element_get_attribute_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(qualified_name),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn element_get_attribute_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> JsValue = "(obj, namespace_, local_name) => obj.getAttributeNS(obj, namespace_, local_name)"

///|
impl TElement with get_attribute_ns(
  self : Self,
  namespace_ : String,
  local_name : String,
) -> String? {
  let result = element_get_attribute_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
    TJsValue::to_js(local_name),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn element_set_attribute_ffi(
  obj : JsValue,
  qualified_name : JsValue,
  value : JsValue,
) -> Unit = "(obj, qualified_name, value) => obj.setAttribute(obj, qualified_name, value)"

///|
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
extern "js" fn element_set_attribute_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  qualified_name : JsValue,
  value : JsValue,
) -> Unit = "(obj, namespace_, qualified_name, value) => obj.setAttributeNS(obj, namespace_, qualified_name, value)"

///|
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
extern "js" fn element_remove_attribute_ffi(
  obj : JsValue,
  qualified_name : JsValue,
) -> Unit = "(obj, qualified_name) => obj.removeAttribute(obj, qualified_name)"

///|
impl TElement with remove_attribute(self : Self, qualified_name : String) -> Unit {
  element_remove_attribute_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(qualified_name),
  )
}

///|
extern "js" fn element_remove_attribute_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> Unit = "(obj, namespace_, local_name) => obj.removeAttributeNS(obj, namespace_, local_name)"

///|
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
extern "js" fn element_toggle_attribute_ffi(
  obj : JsValue,
  qualified_name : JsValue,
  force : JsValue,
) -> Bool = "(obj, qualified_name, force) => obj.toggleAttribute(obj, qualified_name, force)"

///|
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
extern "js" fn element_has_attribute_ffi(
  obj : JsValue,
  qualified_name : JsValue,
) -> Bool = "(obj, qualified_name) => obj.hasAttribute(obj, qualified_name)"

///|
impl TElement with has_attribute(self : Self, qualified_name : String) -> Bool {
  element_has_attribute_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(qualified_name),
  )
}

///|
extern "js" fn element_has_attribute_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> Bool = "(obj, namespace_, local_name) => obj.hasAttributeNS(obj, namespace_, local_name)"

///|
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
extern "js" fn element_get_attribute_node_ffi(
  obj : JsValue,
  qualified_name : JsValue,
) -> JsValue = "(obj, qualified_name) => obj.getAttributeNode(obj, qualified_name)"

///|
impl TElement with get_attribute_node(self : Self, qualified_name : String) -> Attr? {
  let result = element_get_attribute_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(qualified_name),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn element_get_attribute_node_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> JsValue = "(obj, namespace_, local_name) => obj.getAttributeNodeNS(obj, namespace_, local_name)"

///|
impl TElement with get_attribute_node_ns(
  self : Self,
  namespace_ : String,
  local_name : String,
) -> Attr? {
  let result = element_get_attribute_node_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
    TJsValue::to_js(local_name),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn element_set_attribute_node_ffi(
  obj : JsValue,
  attr : JsValue,
) -> JsValue = "(obj, attr) => obj.setAttributeNode(obj, attr)"

///|
impl TElement with set_attribute_node(self : Self, attr : &TAttr) -> Attr? {
  let result = element_set_attribute_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(attr),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn element_set_attribute_node_ns_ffi(
  obj : JsValue,
  attr : JsValue,
) -> JsValue = "(obj, attr) => obj.setAttributeNodeNS(obj, attr)"

///|
impl TElement with set_attribute_node_ns(self : Self, attr : &TAttr) -> Attr? {
  let result = element_set_attribute_node_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(attr),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn element_remove_attribute_node_ffi(
  obj : JsValue,
  attr : JsValue,
) -> Attr = "(obj, attr) => obj.removeAttributeNode(obj, attr)"

///|
impl TElement with remove_attribute_node(self : Self, attr : &TAttr) -> Attr {
  element_remove_attribute_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(attr),
  )
}

///|
extern "js" fn element_attach_shadow_ffi(
  obj : JsValue,
  init : JsValue,
) -> ShadowRoot = "(obj, init) => obj.attachShadow(obj, init)"

///|
impl TElement with attach_shadow(self : Self, init : ShadowRootInit) -> ShadowRoot {
  element_attach_shadow_ffi(TJsValue::to_js(self), TJsValue::to_js(init))
}

///|
extern "js" fn element_shadow_root_ffi(obj : JsValue) -> ShadowRoot = "(obj) => obj.shadowRoot"

///|
impl TElement with shadow_root(self : Self) -> ShadowRoot {
  element_shadow_root_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_custom_element_registry_ffi(
  obj : JsValue,
) -> CustomElementRegistry = "(obj) => obj.customElementRegistry"

///|
impl TElement with custom_element_registry(self : Self) -> CustomElementRegistry {
  element_custom_element_registry_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_closest_ffi(
  obj : JsValue,
  selectors : JsValue,
) -> JsValue = "(obj, selectors) => obj.closest(obj, selectors)"

///|
impl TElement with closest(self : Self, selectors : String) -> Element? {
  let result = element_closest_ffi(
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
extern "js" fn element_matches_ffi(obj : JsValue, selectors : JsValue) -> Bool = "(obj, selectors) => obj.matches(obj, selectors)"

///|
impl TElement with matches(self : Self, selectors : String) -> Bool {
  element_matches_ffi(TJsValue::to_js(self), TJsValue::to_js(selectors))
}

///|
extern "js" fn element_webkit_matches_selector_ffi(
  obj : JsValue,
  selectors : JsValue,
) -> Bool = "(obj, selectors) => obj.webkitMatchesSelector(obj, selectors)"

///|
impl TElement with webkit_matches_selector(self : Self, selectors : String) -> Bool {
  element_webkit_matches_selector_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(selectors),
  )
}

///|
extern "js" fn element_get_elements_by_tag_name_ffi(
  obj : JsValue,
  qualified_name : JsValue,
) -> HTMLCollection = "(obj, qualified_name) => obj.getElementsByTagName(obj, qualified_name)"

///|
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
extern "js" fn element_get_elements_by_tag_name_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> HTMLCollection = "(obj, namespace_, local_name) => obj.getElementsByTagNameNS(obj, namespace_, local_name)"

///|
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
extern "js" fn element_get_elements_by_class_name_ffi(
  obj : JsValue,
  class_names : JsValue,
) -> HTMLCollection = "(obj, class_names) => obj.getElementsByClassName(obj, class_names)"

///|
impl TElement with get_elements_by_class_name(self : Self, class_names : String) -> HTMLCollection {
  element_get_elements_by_class_name_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(class_names),
  )
}

///|
extern "js" fn element_insert_adjacent_element_ffi(
  obj : JsValue,
  where_ : JsValue,
  element : JsValue,
) -> JsValue = "(obj, where_, element) => obj.insertAdjacentElement(obj, where_, element)"

///|
impl TElement with insert_adjacent_element(
  self : Self,
  where_ : String,
  element : &TElement,
) -> Element? {
  let result = element_insert_adjacent_element_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(where_),
    TJsValue::to_js(element),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn element_insert_adjacent_text_ffi(
  obj : JsValue,
  where_ : JsValue,
  data : JsValue,
) -> Unit = "(obj, where_, data) => obj.insertAdjacentText(obj, where_, data)"

///|
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
extern "js" fn element_set_html_unsafe_ffi(
  obj : JsValue,
  html : JsValue,
) -> Unit = "(obj, html) => obj.setHTMLUnsafe(obj, html)"

///|
impl TElement with set_html_unsafe(
  self : Self,
  html : &TElementSetHTMLUnsafeHtml,
) -> Unit {
  element_set_html_unsafe_ffi(TJsValue::to_js(self), html.to_js())
}

///|
extern "js" fn element_get_html_ffi(obj : JsValue, options : JsValue) -> String = "(obj, options) => obj.getHTML(obj, options)"

///|
impl TElement with get_html(
  self : Self,
  options? : GetHTMLOptions = GetHTMLOptions::empty(),
) -> String {
  element_get_html_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
extern "js" fn element_inner_html_ffi(obj : JsValue) -> ElementInnerHTML = "(obj) => obj.innerHTML"

///|
impl TElement with inner_html(self : Self) -> ElementInnerHTML {
  element_inner_html_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_set_inner_html_ffi(
  obj : JsValue,
  inner_html : JsValue,
) -> Unit = "(obj, innerHTML) => { obj.innerHTML = inner_html; }"

///|
impl TElement with set_inner_html(self : Self, inner_html : &TElementInnerHTML) -> Unit {
  element_set_inner_html_ffi(TJsValue::to_js(self), inner_html.to_js())
}

///|
extern "js" fn element_outer_html_ffi(obj : JsValue) -> ElementOuterHTML = "(obj) => obj.outerHTML"

///|
impl TElement with outer_html(self : Self) -> ElementOuterHTML {
  element_outer_html_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_set_outer_html_ffi(
  obj : JsValue,
  outer_html : JsValue,
) -> Unit = "(obj, outerHTML) => { obj.outerHTML = outer_html; }"

///|
impl TElement with set_outer_html(self : Self, outer_html : &TElementOuterHTML) -> Unit {
  element_set_outer_html_ffi(TJsValue::to_js(self), outer_html.to_js())
}

///|
extern "js" fn element_insert_adjacent_html_ffi(
  obj : JsValue,
  position : JsValue,
  string : JsValue,
) -> Unit = "(obj, position, string) => obj.insertAdjacentHTML(obj, position, string)"

///|
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
extern "js" fn element_get_client_rects_ffi(obj : JsValue) -> DOMRectList = "(obj) => obj.getClientRects(obj)"

///|
impl TElement with get_client_rects(self : Self) -> DOMRectList {
  element_get_client_rects_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_get_bounding_client_rect_ffi(obj : JsValue) -> DOMRect = "(obj) => obj.getBoundingClientRect(obj)"

///|
impl TElement with get_bounding_client_rect(self : Self) -> DOMRect {
  element_get_bounding_client_rect_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_check_visibility_ffi(
  obj : JsValue,
  options : JsValue,
) -> Bool = "(obj, options) => obj.checkVisibility(obj, options)"

///|
impl TElement with check_visibility(
  self : Self,
  options? : CheckVisibilityOptions = CheckVisibilityOptions::empty(),
) -> Bool {
  element_check_visibility_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
extern "js" fn element_scroll_into_view_ffi(
  obj : JsValue,
  arg : JsValue,
) -> JsPromise[Unit] = "(obj, arg) => obj.scrollIntoView(obj, arg)"

///|
impl TElement with scroll_into_view(
  self : Self,
  arg? : &TElementScrollIntoViewArg = ScrollIntoViewOptions::empty(),
) -> JsPromise[Unit] {
  element_scroll_into_view_ffi(TJsValue::to_js(self), arg.to_js())
}

///|
extern "js" fn element_scroll_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsPromise[Unit] = "(obj, options) => obj.scroll(obj, options)"

///|
impl TElement with scroll(
  self : Self,
  options? : ScrollToOptions = ScrollToOptions::empty(),
) -> JsPromise[Unit] {
  element_scroll_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
extern "js" fn element_scroll_2_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsPromise[Unit] = "(obj, x, y) => obj.scroll_2(obj, x, y)"

///|
impl TElement with scroll_2(self : Self, x : Double, y : Double) -> JsPromise[
  Unit,
] {
  element_scroll_2_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
extern "js" fn element_scroll_to_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsPromise[Unit] = "(obj, options) => obj.scrollTo(obj, options)"

///|
impl TElement with scroll_to(
  self : Self,
  options? : ScrollToOptions = ScrollToOptions::empty(),
) -> JsPromise[Unit] {
  element_scroll_to_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
extern "js" fn element_scroll_to_2_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsPromise[Unit] = "(obj, x, y) => obj.scrollTo_2(obj, x, y)"

///|
impl TElement with scroll_to_2(self : Self, x : Double, y : Double) -> JsPromise[
  Unit,
] {
  element_scroll_to_2_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
extern "js" fn element_scroll_by_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsPromise[Unit] = "(obj, options) => obj.scrollBy(obj, options)"

///|
impl TElement with scroll_by(
  self : Self,
  options? : ScrollToOptions = ScrollToOptions::empty(),
) -> JsPromise[Unit] {
  element_scroll_by_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
extern "js" fn element_scroll_by_2_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsPromise[Unit] = "(obj, x, y) => obj.scrollBy_2(obj, x, y)"

///|
impl TElement with scroll_by_2(self : Self, x : Double, y : Double) -> JsPromise[
  Unit,
] {
  element_scroll_by_2_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
extern "js" fn element_scroll_top_ffi(obj : JsValue) -> Double = "(obj) => obj.scrollTop"

///|
impl TElement with scroll_top(self : Self) -> Double {
  element_scroll_top_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_set_scroll_top_ffi(
  obj : JsValue,
  scroll_top : JsValue,
) -> Unit = "(obj, scrollTop) => { obj.scrollTop = scroll_top; }"

///|
impl TElement with set_scroll_top(self : Self, scroll_top : Double) -> Unit {
  element_set_scroll_top_ffi(TJsValue::to_js(self), TJsValue::to_js(scroll_top))
}

///|
extern "js" fn element_scroll_left_ffi(obj : JsValue) -> Double = "(obj) => obj.scrollLeft"

///|
impl TElement with scroll_left(self : Self) -> Double {
  element_scroll_left_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_set_scroll_left_ffi(
  obj : JsValue,
  scroll_left : JsValue,
) -> Unit = "(obj, scrollLeft) => { obj.scrollLeft = scroll_left; }"

///|
impl TElement with set_scroll_left(self : Self, scroll_left : Double) -> Unit {
  element_set_scroll_left_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(scroll_left),
  )
}

///|
extern "js" fn element_scroll_width_ffi(obj : JsValue) -> Int = "(obj) => obj.scrollWidth"

///|
impl TElement with scroll_width(self : Self) -> Int {
  element_scroll_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_scroll_height_ffi(obj : JsValue) -> Int = "(obj) => obj.scrollHeight"

///|
impl TElement with scroll_height(self : Self) -> Int {
  element_scroll_height_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_client_top_ffi(obj : JsValue) -> Int = "(obj) => obj.clientTop"

///|
impl TElement with client_top(self : Self) -> Int {
  element_client_top_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_client_left_ffi(obj : JsValue) -> Int = "(obj) => obj.clientLeft"

///|
impl TElement with client_left(self : Self) -> Int {
  element_client_left_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_client_width_ffi(obj : JsValue) -> Int = "(obj) => obj.clientWidth"

///|
impl TElement with client_width(self : Self) -> Int {
  element_client_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_client_height_ffi(obj : JsValue) -> Int = "(obj) => obj.clientHeight"

///|
impl TElement with client_height(self : Self) -> Int {
  element_client_height_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_current_css_zoom_ffi(obj : JsValue) -> Double = "(obj) => obj.currentCSSZoom"

///|
impl TElement with current_css_zoom(self : Self) -> Double {
  element_current_css_zoom_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_children_ffi(obj : JsValue) -> HTMLCollection = "(obj) => obj.children"

///|
impl TElement with children(self : Self) -> HTMLCollection {
  element_children_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_first_element_child_ffi(obj : JsValue) -> Element = "(obj) => obj.firstElementChild"

///|
impl TElement with first_element_child(self : Self) -> Element {
  element_first_element_child_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_last_element_child_ffi(obj : JsValue) -> Element = "(obj) => obj.lastElementChild"

///|
impl TElement with last_element_child(self : Self) -> Element {
  element_last_element_child_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_child_element_count_ffi(obj : JsValue) -> UInt = "(obj) => obj.childElementCount"

///|
impl TElement with child_element_count(self : Self) -> UInt {
  element_child_element_count_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_prepend_ffi(obj : JsValue, nodes : JsValue) -> Unit = "(obj, nodes) => obj.prepend(obj, nodes)"

///|
impl TElement with prepend(self : Self, nodes : &TElementPrependNodes) -> Unit {
  element_prepend_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
extern "js" fn element_append_ffi(obj : JsValue, nodes : JsValue) -> Unit = "(obj, nodes) => obj.append(obj, nodes)"

///|
impl TElement with append(self : Self, nodes : &TElementAppendNodes) -> Unit {
  element_append_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
extern "js" fn element_replace_children_ffi(
  obj : JsValue,
  nodes : JsValue,
) -> Unit = "(obj, nodes) => obj.replaceChildren(obj, nodes)"

///|
impl TElement with replace_children(
  self : Self,
  nodes : &TElementReplaceChildrenNodes,
) -> Unit {
  element_replace_children_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
extern "js" fn element_move_before_ffi(
  obj : JsValue,
  node : JsValue,
  child : JsValue,
) -> Unit = "(obj, node, child) => obj.moveBefore(obj, node, child)"

///|
impl TElement with move_before(self : Self, node : &TNode, child : &TNode) -> Unit {
  element_move_before_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    TJsValue::to_js(child),
  )
}

///|
extern "js" fn element_query_selector_ffi(
  obj : JsValue,
  selectors : JsValue,
) -> JsValue = "(obj, selectors) => obj.querySelector(obj, selectors)"

///|
impl TElement with query_selector(self : Self, selectors : String) -> Element? {
  let result = element_query_selector_ffi(
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
extern "js" fn element_query_selector_all_ffi(
  obj : JsValue,
  selectors : JsValue,
) -> NodeList = "(obj, selectors) => obj.querySelectorAll(obj, selectors)"

///|
impl TElement with query_selector_all(self : Self, selectors : String) -> NodeList {
  element_query_selector_all_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(selectors),
  )
}

///|
extern "js" fn element_previous_element_sibling_ffi(obj : JsValue) -> Element = "(obj) => obj.previousElementSibling"

///|
impl TElement with previous_element_sibling(self : Self) -> Element {
  element_previous_element_sibling_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_next_element_sibling_ffi(obj : JsValue) -> Element = "(obj) => obj.nextElementSibling"

///|
impl TElement with next_element_sibling(self : Self) -> Element {
  element_next_element_sibling_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_before_ffi(obj : JsValue, nodes : JsValue) -> Unit = "(obj, nodes) => obj.before(obj, nodes)"

///|
impl TElement with before(self : Self, nodes : &TElementBeforeNodes) -> Unit {
  element_before_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
extern "js" fn element_after_ffi(obj : JsValue, nodes : JsValue) -> Unit = "(obj, nodes) => obj.after(obj, nodes)"

///|
impl TElement with after(self : Self, nodes : &TElementAfterNodes) -> Unit {
  element_after_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
extern "js" fn element_replace_with_ffi(obj : JsValue, nodes : JsValue) -> Unit = "(obj, nodes) => obj.replaceWith(obj, nodes)"

///|
impl TElement with replace_with(self : Self, nodes : &TElementReplaceWithNodes) -> Unit {
  element_replace_with_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
extern "js" fn element_remove_ffi(obj : JsValue) -> Unit = "(obj) => obj.remove(obj)"

///|
impl TElement with remove(self : Self) -> Unit {
  element_remove_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_assigned_slot_ffi(obj : JsValue) -> HTMLSlotElement = "(obj) => obj.assignedSlot"

///|
impl TElement with assigned_slot(self : Self) -> HTMLSlotElement {
  element_assigned_slot_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_get_box_quads_ffi(
  obj : JsValue,
  options : JsValue,
) -> Array[DOMQuad] = "(obj, options) => obj.getBoxQuads(obj, options)"

///|
impl TElement with get_box_quads(
  self : Self,
  options? : BoxQuadOptions = BoxQuadOptions::empty(),
) -> Array[DOMQuad] {
  element_get_box_quads_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
extern "js" fn element_convert_quad_from_node_ffi(
  obj : JsValue,
  quad : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMQuad = "(obj, quad, from, options) => obj.convertQuadFromNode(obj, quad, from, options)"

///|
impl TElement with convert_quad_from_node(
  self : Self,
  quad : DOMQuadInit,
  from : GeometryNode,
  options? : ConvertCoordinateOptions = ConvertCoordinateOptions::empty(),
) -> DOMQuad {
  element_convert_quad_from_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(quad),
    TJsValue::to_js(from),
    TJsValue::to_js(options),
  )
}

///|
extern "js" fn element_convert_rect_from_node_ffi(
  obj : JsValue,
  rect : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMQuad = "(obj, rect, from, options) => obj.convertRectFromNode(obj, rect, from, options)"

///|
impl TElement with convert_rect_from_node(
  self : Self,
  rect : &TDOMRectReadOnly,
  from : GeometryNode,
  options? : ConvertCoordinateOptions = ConvertCoordinateOptions::empty(),
) -> DOMQuad {
  element_convert_rect_from_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(rect),
    TJsValue::to_js(from),
    TJsValue::to_js(options),
  )
}

///|
extern "js" fn element_convert_point_from_node_ffi(
  obj : JsValue,
  point : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMPoint = "(obj, point, from, options) => obj.convertPointFromNode(obj, point, from, options)"

///|
impl TElement with convert_point_from_node(
  self : Self,
  point : DOMPointInit,
  from : GeometryNode,
  options? : ConvertCoordinateOptions = ConvertCoordinateOptions::empty(),
) -> DOMPoint {
  element_convert_point_from_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(point),
    TJsValue::to_js(from),
    TJsValue::to_js(options),
  )
}
