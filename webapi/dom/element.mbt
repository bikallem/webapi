// Auto-generated MoonBit bindings for Element

// Do not edit manually

//
// WebIDL Interface:
// partial interface Element {
//   DOMRectList getClientRects();
//   [NewObject] DOMRect getBoundingClientRect();
// 
//   boolean checkVisibility(optional CheckVisibilityOptions options = {});
// 
//   Promise<undefined> scrollIntoView(optional (boolean or ScrollIntoViewOptions) arg = {});
//   Promise<undefined> scroll(optional ScrollToOptions options = {});
//   Promise<undefined> scroll(unrestricted double x, unrestricted double y);
//   Promise<undefined> scrollTo(optional ScrollToOptions options = {});
//   Promise<undefined> scrollTo(unrestricted double x, unrestricted double y);
//   Promise<undefined> scrollBy(optional ScrollToOptions options = {});
//   Promise<undefined> scrollBy(unrestricted double x, unrestricted double y);
//   attribute unrestricted double scrollTop;
//   attribute unrestricted double scrollLeft;
//   readonly attribute long scrollWidth;
//   readonly attribute long scrollHeight;
//   readonly attribute long clientTop;
//   readonly attribute long clientLeft;
//   readonly attribute long clientWidth;
//   readonly attribute long clientHeight;
//   readonly attribute double currentCSSZoom;
// };
// 
// [Exposed=Window]
// interface Element : Node {
//   readonly attribute DOMString? namespaceURI;
//   readonly attribute DOMString? prefix;
//   readonly attribute DOMString localName;
//   readonly attribute DOMString tagName;
// 
//   [CEReactions] attribute DOMString id;
//   [CEReactions] attribute DOMString className;
//   [SameObject, PutForwards=value] readonly attribute DOMTokenList classList;
//   [CEReactions, Unscopable] attribute DOMString slot;
// 
//   boolean hasAttributes();
//   [SameObject] readonly attribute NamedNodeMap attributes;
//   sequence<DOMString> getAttributeNames();
//   DOMString? getAttribute(DOMString qualifiedName);
//   DOMString? getAttributeNS(DOMString? namespace, DOMString localName);
//   [CEReactions] undefined setAttribute(DOMString qualifiedName, (TrustedType or DOMString) value);
//   [CEReactions] undefined setAttributeNS(DOMString? namespace, DOMString qualifiedName, (TrustedType or DOMString) value);
//   [CEReactions] undefined removeAttribute(DOMString qualifiedName);
//   [CEReactions] undefined removeAttributeNS(DOMString? namespace, DOMString localName);
//   [CEReactions] boolean toggleAttribute(DOMString qualifiedName, optional boolean force);
//   boolean hasAttribute(DOMString qualifiedName);
//   boolean hasAttributeNS(DOMString? namespace, DOMString localName);
// 
//   Attr? getAttributeNode(DOMString qualifiedName);
//   Attr? getAttributeNodeNS(DOMString? namespace, DOMString localName);
//   [CEReactions] Attr? setAttributeNode(Attr attr);
//   [CEReactions] Attr? setAttributeNodeNS(Attr attr);
//   [CEReactions] Attr removeAttributeNode(Attr attr);
// 
//   ShadowRoot attachShadow(ShadowRootInit init);
//   readonly attribute ShadowRoot? shadowRoot;
// 
//   readonly attribute CustomElementRegistry? customElementRegistry;
// 
//   Element? closest(DOMString selectors);
//   boolean matches(DOMString selectors);
//   boolean webkitMatchesSelector(DOMString selectors); // legacy alias of .matches
// 
//   HTMLCollection getElementsByTagName(DOMString qualifiedName);
//   HTMLCollection getElementsByTagNameNS(DOMString? namespace, DOMString localName);
//   HTMLCollection getElementsByClassName(DOMString classNames);
// 
//   [CEReactions] Element? insertAdjacentElement(DOMString where, Element element); // legacy
//   undefined insertAdjacentText(DOMString where, DOMString data); // legacy
// };
// 
// partial interface Element {
//   [CEReactions] undefined setHTMLUnsafe((TrustedHTML or DOMString) html);
//   DOMString getHTML(optional GetHTMLOptions options = {});
// 
//   [CEReactions] attribute (TrustedHTML or [LegacyNullToEmptyString] DOMString) innerHTML;
//   [CEReactions] attribute (TrustedHTML or [LegacyNullToEmptyString] DOMString) outerHTML;
//   [CEReactions] undefined insertAdjacentHTML(DOMString position, (TrustedHTML or DOMString) string);
// };
// 
// interface mixin GeometryUtils {
//   sequence<DOMQuad> getBoxQuads(optional BoxQuadOptions options = {});
//   DOMQuad convertQuadFromNode(DOMQuadInit quad, GeometryNode from, optional ConvertCoordinateOptions options = {});
//   DOMQuad convertRectFromNode(DOMRectReadOnly rect, GeometryNode from, optional ConvertCoordinateOptions options = {});
//   DOMPoint convertPointFromNode(DOMPointInit point, GeometryNode from, optional ConvertCoordinateOptions options = {}); // XXX z,w turns into 0
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
// interface mixin NonDocumentTypeChildNode {
//   readonly attribute Element? previousElementSibling;
//   readonly attribute Element? nextElementSibling;
// };
// 
// interface mixin ChildNode {
//   [CEReactions, Unscopable] undefined before((Node or DOMString)... nodes);
//   [CEReactions, Unscopable] undefined after((Node or DOMString)... nodes);
//   [CEReactions, Unscopable] undefined replaceWith((Node or DOMString)... nodes);
//   [CEReactions, Unscopable] undefined remove();
// };
// 
// interface mixin Slottable {
//   readonly attribute HTMLSlotElement? assignedSlot;
// };

///|
#external
pub type Element

///|
pub trait TElement: TJsValue {
  scroll_top(self : Self) -> Double = _
  set_scroll_top(self : Self, value : Double) -> Unit = _
  scroll_left(self : Self) -> Double = _
  set_scroll_left(self : Self, value : Double) -> Unit = _
  scroll_width(self : Self) -> Int = _
  scroll_height(self : Self) -> Int = _
  client_top(self : Self) -> Int = _
  client_left(self : Self) -> Int = _
  client_width(self : Self) -> Int = _
  client_height(self : Self) -> Int = _
  current_css_zoom(self : Self) -> Double = _
  namespace_uri(self : Self) -> String? = _
  prefix(self : Self) -> String? = _
  local_name(self : Self) -> String = _
  tag_name(self : Self) -> String = _
  id(self : Self) -> String = _
  set_id(self : Self, value : String) -> Unit = _
  class_name(self : Self) -> String = _
  set_class_name(self : Self, value : String) -> Unit = _
  class_list(self : Self) -> DOMTokenList = _
  slot(self : Self) -> String = _
  set_slot(self : Self, value : String) -> Unit = _
  attributes(self : Self) -> NamedNodeMap = _
  shadow_root(self : Self) -> JsValue? = _
  custom_element_registry(self : Self) -> JsValue? = _
  inner_html(self : Self) -> InnerHTML = _
  set_inner_html(self : Self, value : &TInnerHTML) -> Unit = _
  outer_html(self : Self) -> OuterHTML = _
  set_outer_html(self : Self, value : &TOuterHTML) -> Unit = _
  children(self : Self) -> HTMLCollection = _
  first_element_child(self : Self) -> Element? = _
  last_element_child(self : Self) -> Element? = _
  child_element_count(self : Self) -> UInt = _
  previous_element_sibling(self : Self) -> Element? = _
  next_element_sibling(self : Self) -> Element? = _
  assigned_slot(self : Self) -> JsValue? = _
  get_client_rects(self : Self) -> JsValue = _
  get_bounding_client_rect(self : Self) -> JsValue = _
  check_visibility(self : Self, options? : CheckVisibilityOptions) -> Bool = _
  scroll_into_view(self : Self, arg? : &TScrollIntoViewArgArg) -> JsPromise[
    Unit,
  ] = _
  scroll(self : Self, options? : ScrollToOptions) -> JsPromise[Unit] = _
  scroll2(self : Self, x : Double, y : Double) -> JsPromise[Unit] = _
  scroll_to(self : Self, options? : ScrollToOptions) -> JsPromise[Unit] = _
  scroll_to2(self : Self, x : Double, y : Double) -> JsPromise[Unit] = _
  scroll_by(self : Self, options? : ScrollToOptions) -> JsPromise[Unit] = _
  scroll_by2(self : Self, x : Double, y : Double) -> JsPromise[Unit] = _
  has_attributes(self : Self) -> Bool = _
  get_attribute_names(self : Self) -> Array[String] = _
  get_attribute(self : Self, qualified_name : String) -> String? = _
  get_attribute_ns(self : Self, namespace_ : String, local_name : String) -> String? = _
  set_attribute(self : Self, qualified_name : String, value : String) -> Unit = _
  set_attribute_ns(
    self : Self,
    namespace_ : String,
    qualified_name : String,
    value : String,
  ) -> Unit = _
  remove_attribute(self : Self, qualified_name : String) -> Unit = _
  remove_attribute_ns(self : Self, namespace_ : String, local_name : String) -> Unit = _
  toggle_attribute(self : Self, qualified_name : String, force? : Bool) -> Bool = _
  has_attribute(self : Self, qualified_name : String) -> Bool = _
  has_attribute_ns(self : Self, namespace_ : String, local_name : String) -> Bool = _
  get_attribute_node(self : Self, qualified_name : String) -> Attr? = _
  get_attribute_node_ns(self : Self, namespace_ : String, local_name : String) -> Attr? = _
  set_attribute_node(self : Self, attr : Attr) -> Attr? = _
  set_attribute_node_ns(self : Self, attr : Attr) -> Attr? = _
  remove_attribute_node(self : Self, attr : Attr) -> Attr = _
  attach_shadow(self : Self, init_ : ShadowRootInit) -> JsValue = _
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
  insert_adjacent_element(self : Self, where_ : String, element : Element) -> Element? = _
  insert_adjacent_text(self : Self, where_ : String, data : String) -> Unit = _
  set_html_unsafe(self : Self, html : String) -> Unit = _
  get_html(self : Self, options? : GetHTMLOptions) -> String = _
  insert_adjacent_html(self : Self, position : String, string : String) -> Unit = _
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
  prepend(self : Self, nodes : &TPrependNodesArg) -> Unit = _
  append(self : Self, nodes : &TAppendNodesArg) -> Unit = _
  replace_children(self : Self, nodes : &TReplaceChildrenNodesArg) -> Unit = _
  move_before(self : Self, node : Node, child : Node) -> Unit = _
  query_selector(self : Self, selectors : String) -> Element? = _
  query_selector_all(self : Self, selectors : String) -> NodeList = _
  before(self : Self, nodes : &TBeforeNodesArg) -> Unit = _
  after(self : Self, nodes : &TAfterNodesArg) -> Unit = _
  replace_with(self : Self, nodes : &TReplaceWithNodesArg) -> Unit = _
  remove(self : Self) -> Unit = _
}

///|
pub impl TElement for Element

///|
pub impl TJsValue for Element with to_js(self : Element) -> JsValue = "%identity"

///|
fn element_get_client_rects_ffi(obj : JsValue) -> JsValue = "webapi_Element" "getClientRects"

///|
impl TElement with get_client_rects(self : Self) -> JsValue {
  element_get_client_rects_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn element_get_bounding_client_rect_ffi(obj : JsValue) -> JsValue = "webapi_Element" "getBoundingClientRect"

///|
impl TElement with get_bounding_client_rect(self : Self) -> JsValue {
  element_get_bounding_client_rect_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn element_check_visibility_ffi(obj : JsValue, options : JsValue) -> JsValue = "webapi_Element" "checkVisibility"

///|
impl TElement with check_visibility(
  self : Self,
  options? : CheckVisibilityOptions = CheckVisibilityOptions::empty(),
) -> Bool {
  element_check_visibility_ffi(TJsValue::to_js(self), TJsValue::to_js(options)).unsafe_cast()
}

///|
/// Arg : arg
pub(open) trait TScrollIntoViewArgArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TScrollIntoViewArgArg for Bool with to_js(self : Bool) -> JsValue = "%identity"

///|
pub impl TScrollIntoViewArgArg for ScrollIntoViewOptions with to_js(
  self : ScrollIntoViewOptions,
) -> JsValue = "%identity"

///|
fn element_scroll_into_view_ffi(obj : JsValue, arg : JsValue) -> JsValue = "webapi_Element" "scrollIntoView"

///|
impl TElement with scroll_into_view(
  self : Self,
  arg? : &TScrollIntoViewArgArg = ScrollIntoViewOptions::empty(),
) -> JsPromise[Unit] {
  element_scroll_into_view_ffi(TJsValue::to_js(self), arg.to_js()).unsafe_cast()
}

///|
fn element_scroll_ffi(obj : JsValue, options : JsValue) -> JsValue = "webapi_Element" "scroll"

///|
impl TElement with scroll(
  self : Self,
  options? : ScrollToOptions = ScrollToOptions::empty(),
) -> JsPromise[Unit] {
  element_scroll_ffi(TJsValue::to_js(self), TJsValue::to_js(options)).unsafe_cast()
}

///|
fn element_scroll_ffi2(obj : JsValue, x : JsValue, y : JsValue) -> JsValue = "webapi_Element" "scroll"

///|
impl TElement with scroll2(self : Self, x : Double, y : Double) -> JsPromise[
  Unit,
] {
  element_scroll_ffi2(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  ).unsafe_cast()
}

///|
fn element_scroll_to_ffi(obj : JsValue, options : JsValue) -> JsValue = "webapi_Element" "scrollTo"

///|
impl TElement with scroll_to(
  self : Self,
  options? : ScrollToOptions = ScrollToOptions::empty(),
) -> JsPromise[Unit] {
  element_scroll_to_ffi(TJsValue::to_js(self), TJsValue::to_js(options)).unsafe_cast()
}

///|
fn element_scroll_to_ffi2(obj : JsValue, x : JsValue, y : JsValue) -> JsValue = "webapi_Element" "scrollTo"

///|
impl TElement with scroll_to2(self : Self, x : Double, y : Double) -> JsPromise[
  Unit,
] {
  element_scroll_to_ffi2(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  ).unsafe_cast()
}

///|
fn element_scroll_by_ffi(obj : JsValue, options : JsValue) -> JsValue = "webapi_Element" "scrollBy"

///|
impl TElement with scroll_by(
  self : Self,
  options? : ScrollToOptions = ScrollToOptions::empty(),
) -> JsPromise[Unit] {
  element_scroll_by_ffi(TJsValue::to_js(self), TJsValue::to_js(options)).unsafe_cast()
}

///|
fn element_scroll_by_ffi2(obj : JsValue, x : JsValue, y : JsValue) -> JsValue = "webapi_Element" "scrollBy"

///|
impl TElement with scroll_by2(self : Self, x : Double, y : Double) -> JsPromise[
  Unit,
] {
  element_scroll_by_ffi2(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  ).unsafe_cast()
}

///|
fn element_has_attributes_ffi(obj : JsValue) -> JsValue = "webapi_Element" "hasAttributes"

///|
impl TElement with has_attributes(self : Self) -> Bool {
  element_has_attributes_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn element_get_attribute_names_ffi(obj : JsValue) -> JsValue = "webapi_Element" "getAttributeNames"

///|
impl TElement with get_attribute_names(self : Self) -> Array[String] {
  element_get_attribute_names_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn element_get_attribute_ffi(
  obj : JsValue,
  qualified_name : JsValue,
) -> JsValue = "webapi_Element" "getAttribute"

///|
impl TElement with get_attribute(self : Self, qualified_name : String) -> String? {
  element_get_attribute_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(qualified_name),
  ).as_option()
}

///|
fn element_get_attribute_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> JsValue = "webapi_Element" "getAttributeNS"

///|
impl TElement with get_attribute_ns(
  self : Self,
  namespace_ : String,
  local_name : String,
) -> String? {
  element_get_attribute_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
    TJsValue::to_js(local_name),
  ).as_option()
}

///|
fn element_set_attribute_ffi(
  obj : JsValue,
  qualified_name : JsValue,
  value : JsValue,
) -> Unit = "webapi_Element" "setAttribute"

///|
impl TElement with set_attribute(
  self : Self,
  qualified_name : String,
  value : String,
) -> Unit {
  element_set_attribute_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(qualified_name),
    TJsValue::to_js(value),
  )
}

///|
fn element_set_attribute_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  qualified_name : JsValue,
  value : JsValue,
) -> Unit = "webapi_Element" "setAttributeNS"

///|
impl TElement with set_attribute_ns(
  self : Self,
  namespace_ : String,
  qualified_name : String,
  value : String,
) -> Unit {
  element_set_attribute_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
    TJsValue::to_js(qualified_name),
    TJsValue::to_js(value),
  )
}

///|
fn element_remove_attribute_ffi(
  obj : JsValue,
  qualified_name : JsValue,
) -> Unit = "webapi_Element" "removeAttribute"

///|
impl TElement with remove_attribute(self : Self, qualified_name : String) -> Unit {
  element_remove_attribute_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(qualified_name),
  )
}

///|
fn element_remove_attribute_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> Unit = "webapi_Element" "removeAttributeNS"

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
fn element_toggle_attribute_ffi(
  obj : JsValue,
  qualified_name : JsValue,
  force : JsValue,
) -> JsValue = "webapi_Element" "toggleAttribute"

///|
impl TElement with toggle_attribute(
  self : Self,
  qualified_name : String,
  force? : Bool,
) -> Bool {
  let force_js = opt_to_js(force)
  element_toggle_attribute_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(qualified_name),
    force_js,
  ).unsafe_cast()
}

///|
fn element_has_attribute_ffi(
  obj : JsValue,
  qualified_name : JsValue,
) -> JsValue = "webapi_Element" "hasAttribute"

///|
impl TElement with has_attribute(self : Self, qualified_name : String) -> Bool {
  element_has_attribute_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(qualified_name),
  ).unsafe_cast()
}

///|
fn element_has_attribute_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> JsValue = "webapi_Element" "hasAttributeNS"

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
  ).unsafe_cast()
}

///|
fn element_get_attribute_node_ffi(
  obj : JsValue,
  qualified_name : JsValue,
) -> JsValue = "webapi_Element" "getAttributeNode"

///|
impl TElement with get_attribute_node(self : Self, qualified_name : String) -> Attr? {
  element_get_attribute_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(qualified_name),
  ).as_option()
}

///|
fn element_get_attribute_node_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> JsValue = "webapi_Element" "getAttributeNodeNS"

///|
impl TElement with get_attribute_node_ns(
  self : Self,
  namespace_ : String,
  local_name : String,
) -> Attr? {
  element_get_attribute_node_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
    TJsValue::to_js(local_name),
  ).as_option()
}

///|
fn element_set_attribute_node_ffi(obj : JsValue, attr : JsValue) -> JsValue = "webapi_Element" "setAttributeNode"

///|
impl TElement with set_attribute_node(self : Self, attr : Attr) -> Attr? {
  element_set_attribute_node_ffi(TJsValue::to_js(self), TJsValue::to_js(attr)).as_option()
}

///|
fn element_set_attribute_node_ns_ffi(obj : JsValue, attr : JsValue) -> JsValue = "webapi_Element" "setAttributeNodeNS"

///|
impl TElement with set_attribute_node_ns(self : Self, attr : Attr) -> Attr? {
  element_set_attribute_node_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(attr),
  ).as_option()
}

///|
fn element_remove_attribute_node_ffi(obj : JsValue, attr : JsValue) -> JsValue = "webapi_Element" "removeAttributeNode"

///|
impl TElement with remove_attribute_node(self : Self, attr : Attr) -> Attr {
  element_remove_attribute_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(attr),
  ).unsafe_cast()
}

///|
fn element_attach_shadow_ffi(obj : JsValue, init_ : JsValue) -> JsValue = "webapi_Element" "attachShadow"

///|
impl TElement with attach_shadow(self : Self, init_ : ShadowRootInit) -> JsValue {
  element_attach_shadow_ffi(TJsValue::to_js(self), TJsValue::to_js(init_)).unsafe_cast()
}

///|
fn element_closest_ffi(obj : JsValue, selectors : JsValue) -> JsValue = "webapi_Element" "closest"

///|
impl TElement with closest(self : Self, selectors : String) -> Element? {
  element_closest_ffi(TJsValue::to_js(self), TJsValue::to_js(selectors)).as_option()
}

///|
fn element_matches_ffi(obj : JsValue, selectors : JsValue) -> JsValue = "webapi_Element" "matches"

///|
impl TElement with matches(self : Self, selectors : String) -> Bool {
  element_matches_ffi(TJsValue::to_js(self), TJsValue::to_js(selectors)).unsafe_cast()
}

///|
fn element_webkit_matches_selector_ffi(
  obj : JsValue,
  selectors : JsValue,
) -> JsValue = "webapi_Element" "webkitMatchesSelector"

///|
impl TElement with webkit_matches_selector(self : Self, selectors : String) -> Bool {
  element_webkit_matches_selector_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(selectors),
  ).unsafe_cast()
}

///|
fn element_get_elements_by_tag_name_ffi(
  obj : JsValue,
  qualified_name : JsValue,
) -> JsValue = "webapi_Element" "getElementsByTagName"

///|
impl TElement with get_elements_by_tag_name(
  self : Self,
  qualified_name : String,
) -> HTMLCollection {
  element_get_elements_by_tag_name_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(qualified_name),
  ).unsafe_cast()
}

///|
fn element_get_elements_by_tag_name_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> JsValue = "webapi_Element" "getElementsByTagNameNS"

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
  ).unsafe_cast()
}

///|
fn element_get_elements_by_class_name_ffi(
  obj : JsValue,
  class_names : JsValue,
) -> JsValue = "webapi_Element" "getElementsByClassName"

///|
impl TElement with get_elements_by_class_name(self : Self, class_names : String) -> HTMLCollection {
  element_get_elements_by_class_name_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(class_names),
  ).unsafe_cast()
}

///|
fn element_insert_adjacent_element_ffi(
  obj : JsValue,
  where_ : JsValue,
  element : JsValue,
) -> JsValue = "webapi_Element" "insertAdjacentElement"

///|
impl TElement with insert_adjacent_element(
  self : Self,
  where_ : String,
  element : Element,
) -> Element? {
  element_insert_adjacent_element_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(where_),
    TJsValue::to_js(element),
  ).as_option()
}

///|
fn element_insert_adjacent_text_ffi(
  obj : JsValue,
  where_ : JsValue,
  data : JsValue,
) -> Unit = "webapi_Element" "insertAdjacentText"

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
fn element_set_html_unsafe_ffi(obj : JsValue, html : JsValue) -> Unit = "webapi_Element" "setHTMLUnsafe"

///|
impl TElement with set_html_unsafe(self : Self, html : String) -> Unit {
  element_set_html_unsafe_ffi(TJsValue::to_js(self), TJsValue::to_js(html))
}

///|
fn element_get_html_ffi(obj : JsValue, options : JsValue) -> JsValue = "webapi_Element" "getHTML"

///|
impl TElement with get_html(
  self : Self,
  options? : GetHTMLOptions = GetHTMLOptions::empty(),
) -> String {
  element_get_html_ffi(TJsValue::to_js(self), TJsValue::to_js(options)).unsafe_cast()
}

///|
fn element_insert_adjacent_html_ffi(
  obj : JsValue,
  position : JsValue,
  string : JsValue,
) -> Unit = "webapi_Element" "insertAdjacentHTML"

///|
impl TElement with insert_adjacent_html(
  self : Self,
  position : String,
  string : String,
) -> Unit {
  element_insert_adjacent_html_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(position),
    TJsValue::to_js(string),
  )
}

///|
fn element_get_box_quads_ffi(obj : JsValue, options : JsValue) -> JsValue = "webapi_Element" "getBoxQuads"

///|
impl TElement with get_box_quads(
  self : Self,
  options? : BoxQuadOptions = BoxQuadOptions::empty(),
) -> Array[JsValue] {
  element_get_box_quads_ffi(TJsValue::to_js(self), TJsValue::to_js(options)).unsafe_cast()
}

///|
fn element_convert_quad_from_node_ffi(
  obj : JsValue,
  quad : JsValue,
  from : JsValue,
  options : JsValue,
) -> JsValue = "webapi_Element" "convertQuadFromNode"

///|
impl TElement with convert_quad_from_node(
  self : Self,
  quad : DOMQuadInit,
  from : JsValue,
  options? : ConvertCoordinateOptions = ConvertCoordinateOptions::empty(),
) -> JsValue {
  element_convert_quad_from_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(quad),
    from,
    TJsValue::to_js(options),
  ).unsafe_cast()
}

///|
fn element_convert_rect_from_node_ffi(
  obj : JsValue,
  rect : JsValue,
  from : JsValue,
  options : JsValue,
) -> JsValue = "webapi_Element" "convertRectFromNode"

///|
impl TElement with convert_rect_from_node(
  self : Self,
  rect : JsValue,
  from : JsValue,
  options? : ConvertCoordinateOptions = ConvertCoordinateOptions::empty(),
) -> JsValue {
  element_convert_rect_from_node_ffi(
    TJsValue::to_js(self),
    rect,
    from,
    TJsValue::to_js(options),
  ).unsafe_cast()
}

///|
fn element_convert_point_from_node_ffi(
  obj : JsValue,
  point : JsValue,
  from : JsValue,
  options : JsValue,
) -> JsValue = "webapi_Element" "convertPointFromNode"

///|
impl TElement with convert_point_from_node(
  self : Self,
  point : DOMPointInit,
  from : JsValue,
  options? : ConvertCoordinateOptions = ConvertCoordinateOptions::empty(),
) -> JsValue {
  element_convert_point_from_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(point),
    from,
    TJsValue::to_js(options),
  ).unsafe_cast()
}

///|
fn element_prepend_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_Element" "prepend"

///|
impl TElement with prepend(self : Self, nodes : &TPrependNodesArg) -> Unit {
  element_prepend_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
fn element_append_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_Element" "append"

///|
impl TElement with append(self : Self, nodes : &TAppendNodesArg) -> Unit {
  element_append_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
fn element_replace_children_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_Element" "replaceChildren"

///|
impl TElement with replace_children(
  self : Self,
  nodes : &TReplaceChildrenNodesArg,
) -> Unit {
  element_replace_children_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
fn element_move_before_ffi(
  obj : JsValue,
  node : JsValue,
  child : JsValue,
) -> Unit = "webapi_Element" "moveBefore"

///|
impl TElement with move_before(self : Self, node : Node, child : Node) -> Unit {
  element_move_before_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    TJsValue::to_js(child),
  )
}

///|
fn element_query_selector_ffi(obj : JsValue, selectors : JsValue) -> JsValue = "webapi_Element" "querySelector"

///|
impl TElement with query_selector(self : Self, selectors : String) -> Element? {
  element_query_selector_ffi(TJsValue::to_js(self), TJsValue::to_js(selectors)).as_option()
}

///|
fn element_query_selector_all_ffi(
  obj : JsValue,
  selectors : JsValue,
) -> JsValue = "webapi_Element" "querySelectorAll"

///|
impl TElement with query_selector_all(self : Self, selectors : String) -> NodeList {
  element_query_selector_all_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(selectors),
  ).unsafe_cast()
}

///|
/// Arg : nodes
pub(open) trait TBeforeNodesArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TBeforeNodesArg for Node with to_js(self : Node) -> JsValue = "%identity"

///|
pub impl TBeforeNodesArg for String with to_js(self : String) -> JsValue = "%identity"

///|
fn element_before_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_Element" "before"

///|
impl TElement with before(self : Self, nodes : &TBeforeNodesArg) -> Unit {
  element_before_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
/// Arg : nodes
pub(open) trait TAfterNodesArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TAfterNodesArg for Node with to_js(self : Node) -> JsValue = "%identity"

///|
pub impl TAfterNodesArg for String with to_js(self : String) -> JsValue = "%identity"

///|
fn element_after_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_Element" "after"

///|
impl TElement with after(self : Self, nodes : &TAfterNodesArg) -> Unit {
  element_after_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
/// Arg : nodes
pub(open) trait TReplaceWithNodesArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TReplaceWithNodesArg for Node with to_js(self : Node) -> JsValue = "%identity"

///|
pub impl TReplaceWithNodesArg for String with to_js(self : String) -> JsValue = "%identity"

///|
fn element_replace_with_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_Element" "replaceWith"

///|
impl TElement with replace_with(self : Self, nodes : &TReplaceWithNodesArg) -> Unit {
  element_replace_with_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
fn element_remove_ffi(obj : JsValue) -> Unit = "webapi_Element" "remove"

///|
impl TElement with remove(self : Self) -> Unit {
  element_remove_ffi(TJsValue::to_js(self))
}

///|
fn element_scroll_top_ffi(obj : JsValue) -> Double = "webapi_Element" "scrollTop"

///|
impl TElement with scroll_top(self : Self) -> Double {
  element_scroll_top_ffi(self.to_js())
}

///|
fn element_set_scroll_top_ffi(obj : JsValue, value : Double) -> Unit = "webapi_Element" "set_scrollTop"

///|
impl TElement with set_scroll_top(self : Self, value : Double) -> Unit {
  element_set_scroll_top_ffi(self.to_js(), value)
}

///|
fn element_scroll_left_ffi(obj : JsValue) -> Double = "webapi_Element" "scrollLeft"

///|
impl TElement with scroll_left(self : Self) -> Double {
  element_scroll_left_ffi(self.to_js())
}

///|
fn element_set_scroll_left_ffi(obj : JsValue, value : Double) -> Unit = "webapi_Element" "set_scrollLeft"

///|
impl TElement with set_scroll_left(self : Self, value : Double) -> Unit {
  element_set_scroll_left_ffi(self.to_js(), value)
}

///|
fn element_scroll_width_ffi(obj : JsValue) -> Int = "webapi_Element" "scrollWidth"

///|
impl TElement with scroll_width(self : Self) -> Int {
  element_scroll_width_ffi(self.to_js())
}

///|
fn element_scroll_height_ffi(obj : JsValue) -> Int = "webapi_Element" "scrollHeight"

///|
impl TElement with scroll_height(self : Self) -> Int {
  element_scroll_height_ffi(self.to_js())
}

///|
fn element_client_top_ffi(obj : JsValue) -> Int = "webapi_Element" "clientTop"

///|
impl TElement with client_top(self : Self) -> Int {
  element_client_top_ffi(self.to_js())
}

///|
fn element_client_left_ffi(obj : JsValue) -> Int = "webapi_Element" "clientLeft"

///|
impl TElement with client_left(self : Self) -> Int {
  element_client_left_ffi(self.to_js())
}

///|
fn element_client_width_ffi(obj : JsValue) -> Int = "webapi_Element" "clientWidth"

///|
impl TElement with client_width(self : Self) -> Int {
  element_client_width_ffi(self.to_js())
}

///|
fn element_client_height_ffi(obj : JsValue) -> Int = "webapi_Element" "clientHeight"

///|
impl TElement with client_height(self : Self) -> Int {
  element_client_height_ffi(self.to_js())
}

///|
fn element_current_css_zoom_ffi(obj : JsValue) -> Double = "webapi_Element" "currentCSSZoom"

///|
impl TElement with current_css_zoom(self : Self) -> Double {
  element_current_css_zoom_ffi(self.to_js())
}

///|
fn element_namespace_uri_ffi(obj : JsValue) -> JsValue = "webapi_Element" "namespaceURI"

///|
impl TElement with namespace_uri(self : Self) -> String? {
  element_namespace_uri_ffi(self.to_js()).as_option()
}

///|
fn element_prefix_ffi(obj : JsValue) -> JsValue = "webapi_Element" "prefix"

///|
impl TElement with prefix(self : Self) -> String? {
  element_prefix_ffi(self.to_js()).as_option()
}

///|
fn element_local_name_ffi(obj : JsValue) -> String = "webapi_Element" "localName"

///|
impl TElement with local_name(self : Self) -> String {
  element_local_name_ffi(self.to_js())
}

///|
fn element_tag_name_ffi(obj : JsValue) -> String = "webapi_Element" "tagName"

///|
impl TElement with tag_name(self : Self) -> String {
  element_tag_name_ffi(self.to_js())
}

///|
fn element_id_ffi(obj : JsValue) -> String = "webapi_Element" "id"

///|
impl TElement with id(self : Self) -> String {
  element_id_ffi(self.to_js())
}

///|
fn element_set_id_ffi(obj : JsValue, value : String) -> Unit = "webapi_Element" "set_id"

///|
impl TElement with set_id(self : Self, value : String) -> Unit {
  element_set_id_ffi(self.to_js(), value)
}

///|
fn element_class_name_ffi(obj : JsValue) -> String = "webapi_Element" "className"

///|
impl TElement with class_name(self : Self) -> String {
  element_class_name_ffi(self.to_js())
}

///|
fn element_set_class_name_ffi(obj : JsValue, value : String) -> Unit = "webapi_Element" "set_className"

///|
impl TElement with set_class_name(self : Self, value : String) -> Unit {
  element_set_class_name_ffi(self.to_js(), value)
}

///|
fn element_class_list_ffi(obj : JsValue) -> JsValue = "webapi_Element" "classList"

///|
impl TElement with class_list(self : Self) -> DOMTokenList {
  element_class_list_ffi(self.to_js()).unsafe_cast()
}

///|
fn element_slot_ffi(obj : JsValue) -> String = "webapi_Element" "slot"

///|
impl TElement with slot(self : Self) -> String {
  element_slot_ffi(self.to_js())
}

///|
fn element_set_slot_ffi(obj : JsValue, value : String) -> Unit = "webapi_Element" "set_slot"

///|
impl TElement with set_slot(self : Self, value : String) -> Unit {
  element_set_slot_ffi(self.to_js(), value)
}

///|
fn element_attributes_ffi(obj : JsValue) -> JsValue = "webapi_Element" "attributes"

///|
impl TElement with attributes(self : Self) -> NamedNodeMap {
  element_attributes_ffi(self.to_js()).unsafe_cast()
}

///|
fn element_shadow_root_ffi(obj : JsValue) -> JsValue = "webapi_Element" "shadowRoot"

///|
impl TElement with shadow_root(self : Self) -> JsValue? {
  element_shadow_root_ffi(self.to_js()).as_option()
}

///|
fn element_custom_element_registry_ffi(obj : JsValue) -> JsValue = "webapi_Element" "customElementRegistry"

///|
impl TElement with custom_element_registry(self : Self) -> JsValue? {
  element_custom_element_registry_ffi(self.to_js()).as_option()
}

///|
fn element_inner_html_ffi(obj : JsValue) -> JsValue = "webapi_Element" "innerHTML"

///|
impl TElement with inner_html(self : Self) -> InnerHTML {
  element_inner_html_ffi(self.to_js()).unsafe_cast()
}

///|
fn element_set_inner_html_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Element" "set_innerHTML"

///|
impl TElement with set_inner_html(self : Self, value : &TInnerHTML) -> Unit {
  element_set_inner_html_ffi(self.to_js(), TInnerHTML::to_js(value))
}

///|
fn element_outer_html_ffi(obj : JsValue) -> JsValue = "webapi_Element" "outerHTML"

///|
impl TElement with outer_html(self : Self) -> OuterHTML {
  element_outer_html_ffi(self.to_js()).unsafe_cast()
}

///|
fn element_set_outer_html_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Element" "set_outerHTML"

///|
impl TElement with set_outer_html(self : Self, value : &TOuterHTML) -> Unit {
  element_set_outer_html_ffi(self.to_js(), TOuterHTML::to_js(value))
}

///|
fn element_children_ffi(obj : JsValue) -> JsValue = "webapi_Element" "children"

///|
impl TElement with children(self : Self) -> HTMLCollection {
  element_children_ffi(self.to_js()).unsafe_cast()
}

///|
fn element_first_element_child_ffi(obj : JsValue) -> JsValue = "webapi_Element" "firstElementChild"

///|
impl TElement with first_element_child(self : Self) -> Element? {
  element_first_element_child_ffi(self.to_js()).as_option()
}

///|
fn element_last_element_child_ffi(obj : JsValue) -> JsValue = "webapi_Element" "lastElementChild"

///|
impl TElement with last_element_child(self : Self) -> Element? {
  element_last_element_child_ffi(self.to_js()).as_option()
}

///|
fn element_child_element_count_ffi(obj : JsValue) -> JsValue = "webapi_Element" "childElementCount"

///|
impl TElement with child_element_count(self : Self) -> UInt {
  element_child_element_count_ffi(self.to_js()).unsafe_cast()
}

///|
fn element_previous_element_sibling_ffi(obj : JsValue) -> JsValue = "webapi_Element" "previousElementSibling"

///|
impl TElement with previous_element_sibling(self : Self) -> Element? {
  element_previous_element_sibling_ffi(self.to_js()).as_option()
}

///|
fn element_next_element_sibling_ffi(obj : JsValue) -> JsValue = "webapi_Element" "nextElementSibling"

///|
impl TElement with next_element_sibling(self : Self) -> Element? {
  element_next_element_sibling_ffi(self.to_js()).as_option()
}

///|
fn element_assigned_slot_ffi(obj : JsValue) -> JsValue = "webapi_Element" "assignedSlot"

///|
impl TElement with assigned_slot(self : Self) -> JsValue? {
  element_assigned_slot_ffi(self.to_js()).as_option()
}
