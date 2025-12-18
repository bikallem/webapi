// Auto-generated MoonBit bindings for Element interface
// Do not edit manually

#external
pub type Element

pub impl TJsValue for Element with to_js(self: Element) -> JsValue = "%identity"


pub fn[T: TElement] Element::into(self : Element) -> T = "%identity"
pub impl TElement for Element

/// Union arg trait
pub(open) trait TScrollIntoViewArgArg {
  to_js(self : Self) -> JsValue
}

pub impl TScrollIntoViewArgArg for Bool with to_js(self : Bool) -> JsValue = "%identity"

pub impl TScrollIntoViewArgArg for ScrollIntoViewOptions with to_js(self : ScrollIntoViewOptions) -> JsValue = "%identity"

pub trait TElement: TJsValue + TTNode {
  namespace_u_r_i(self: Self) -> String = _
  prefix(self: Self) -> String = _
  local_name(self: Self) -> String = _
  tag_name(self: Self) -> String = _
  id(self: Self) -> String = _
  set_id(self: Self, value : String) -> Unit = _
  class_name(self: Self) -> String = _
  set_class_name(self: Self, value : String) -> Unit = _
  class_list(self: Self) -> &TDOMTokenList = _
  slot(self: Self) -> String = _
  set_slot(self: Self, value : String) -> Unit = _
  has_attributes(self: Self) -> Bool = _
  attributes(self: Self) -> &TNamedNodeMap = _
  get_attribute_names(self: Self) -> Array[String] = _
  get_attribute(self: Self, qualified_name : String) -> String = _
  get_attribute_n_s(self: Self, namespace : String, local_name : String) -> String = _
  set_attribute(self: Self, qualified_name : String, value : String) -> Unit = _
  set_attribute_n_s(self: Self, namespace : String, qualified_name : String, value : String) -> Unit = _
  remove_attribute(self: Self, qualified_name : String) -> Unit = _
  remove_attribute_n_s(self: Self, namespace : String, local_name : String) -> Unit = _
  toggle_attribute(self: Self, qualified_name : String, force? : Bool) -> Bool = _
  has_attribute(self: Self, qualified_name : String) -> Bool = _
  has_attribute_n_s(self: Self, namespace : String, local_name : String) -> Bool = _
  get_attribute_node(self: Self, qualified_name : String) -> &TAttr = _
  get_attribute_node_n_s(self: Self, namespace : String, local_name : String) -> &TAttr = _
  set_attribute_node(self: Self, attr : &TAttr) -> &TAttr = _
  set_attribute_node_n_s(self: Self, attr : &TAttr) -> &TAttr = _
  remove_attribute_node(self: Self, attr : &TAttr) -> &TAttr = _
  attach_shadow(self: Self, init : ShadowRootInit) -> &TShadowRoot = _
  shadow_root(self: Self) -> &TShadowRoot = _
  custom_element_registry(self: Self) -> CustomElementRegistry = _
  closest(self: Self, selectors : String) -> &TElement = _
  matches(self: Self, selectors : String) -> Bool = _
  webkit_matches_selector(self: Self, selectors : String) -> Bool = _
  get_elements_by_tag_name(self: Self, qualified_name : String) -> &THTMLCollection = _
  get_elements_by_tag_name_n_s(self: Self, namespace : String, local_name : String) -> &THTMLCollection = _
  get_elements_by_class_name(self: Self, class_names : String) -> &THTMLCollection = _
  insert_adjacent_element(self: Self, where : String, element : &TElement) -> &TElement = _
  insert_adjacent_text(self: Self, where : String, data : String) -> Unit = _
  set_h_t_m_l_unsafe(self: Self, html : String) -> Unit = _
  get_h_t_m_l(self: Self, options? : GetHTMLOptions) -> String = _
  inner_h_t_m_l(self: Self) -> JsValue = _
  set_inner_h_t_m_l(self: Self, value : JsValue) -> Unit = _
  outer_h_t_m_l(self: Self) -> JsValue = _
  set_outer_h_t_m_l(self: Self, value : JsValue) -> Unit = _
  insert_adjacent_h_t_m_l(self: Self, position : String, string : String) -> Unit = _
  get_client_rects(self: Self) -> DOMRectList = _
  get_bounding_client_rect(self: Self) -> DOMRect = _
  check_visibility(self: Self, options? : CheckVisibilityOptions) -> Bool = _
  scroll_into_view(self: Self, arg? : &TScrollIntoViewArgArg) -> JsPromise[Unit] = _
  scroll(self: Self, options? : ScrollToOptions) -> JsPromise[Unit] = _
  scroll(self: Self, x : Double, y : Double) -> JsPromise[Unit] = _
  scroll_to(self: Self, options? : ScrollToOptions) -> JsPromise[Unit] = _
  scroll_to(self: Self, x : Double, y : Double) -> JsPromise[Unit] = _
  scroll_by(self: Self, options? : ScrollToOptions) -> JsPromise[Unit] = _
  scroll_by(self: Self, x : Double, y : Double) -> JsPromise[Unit] = _
  scroll_top(self: Self) -> Double = _
  set_scroll_top(self: Self, value : Double) -> Unit = _
  scroll_left(self: Self) -> Double = _
  set_scroll_left(self: Self, value : Double) -> Unit = _
  scroll_width(self: Self) -> Int = _
  scroll_height(self: Self) -> Int = _
  client_top(self: Self) -> Int = _
  client_left(self: Self) -> Int = _
  client_width(self: Self) -> Int = _
  client_height(self: Self) -> Int = _
  current_c_s_s_zoom(self: Self) -> Double = _
}

///|
fn element_namespace_u_r_i_ffi(obj : JsValue) -> String = "webapi_Element" "namespaceURI"

///|
impl TElement with namespace_u_r_i(self : Self) -> String {
  element_namespace_u_r_i_ffi(self.to_js())
}

///|
fn element_prefix_ffi(obj : JsValue) -> String = "webapi_Element" "prefix"

///|
impl TElement with prefix(self : Self) -> String {
  element_prefix_ffi(self.to_js())
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
impl TElement with class_list(self : Self) -> &TDOMTokenList {
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
impl TElement with attributes(self : Self) -> &TNamedNodeMap {
  element_attributes_ffi(self.to_js()).unsafe_cast()
}

///|
fn element_shadow_root_ffi(obj : JsValue) -> JsValue = "webapi_Element" "shadowRoot"

///|
impl TElement with shadow_root(self : Self) -> &TShadowRoot {
  element_shadow_root_ffi(self.to_js()).unsafe_cast()
}

///|
fn element_custom_element_registry_ffi(obj : JsValue) -> JsValue = "webapi_Element" "customElementRegistry"

///|
impl TElement with custom_element_registry(self : Self) -> CustomElementRegistry {
  element_custom_element_registry_ffi(self.to_js()).unsafe_cast()
}

///|
fn element_inner_h_t_m_l_ffi(obj : JsValue) -> JsValue = "webapi_Element" "innerHTML"

///|
impl TElement with inner_h_t_m_l(self : Self) -> JsValue {
  element_inner_h_t_m_l_ffi(self.to_js())
}

///|
fn element_set_inner_h_t_m_l_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Element" "set_innerHTML"

///|
impl TElement with set_inner_h_t_m_l(self : Self, value : JsValue) -> Unit {
  element_set_inner_h_t_m_l_ffi(self.to_js(), value)
}

///|
fn element_outer_h_t_m_l_ffi(obj : JsValue) -> JsValue = "webapi_Element" "outerHTML"

///|
impl TElement with outer_h_t_m_l(self : Self) -> JsValue {
  element_outer_h_t_m_l_ffi(self.to_js())
}

///|
fn element_set_outer_h_t_m_l_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Element" "set_outerHTML"

///|
impl TElement with set_outer_h_t_m_l(self : Self, value : JsValue) -> Unit {
  element_set_outer_h_t_m_l_ffi(self.to_js(), value)
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
fn element_current_c_s_s_zoom_ffi(obj : JsValue) -> Double = "webapi_Element" "currentCSSZoom"

///|
impl TElement with current_c_s_s_zoom(self : Self) -> Double {
  element_current_c_s_s_zoom_ffi(self.to_js())
}

///|
fn element_has_attributes_ffi(obj : JsValue) -> Bool = "webapi_Element" "hasAttributes"

///|
impl TElement with has_attributes(self : Self) -> Bool {
  element_has_attributes_ffi(self.to_js())
}

///|
fn element_get_attribute_names_ffi(obj : JsValue) -> JsValue = "webapi_Element" "getAttributeNames"

///|
impl TElement with get_attribute_names(self : Self) -> Array[String] {
  element_get_attribute_names_ffi(self.to_js()).unsafe_cast()
}

///|
fn element_get_attribute_ffi(obj : JsValue, qualified_name : JsValue) -> String = "webapi_Element" "getAttribute"

///|
impl TElement with get_attribute(self : Self, qualified_name : String) -> String {
  element_get_attribute_ffi(self.to_js(), TJsValue::to_js(qualified_name))
}

///|
fn element_get_attribute_n_s_ffi(obj : JsValue, namespace : JsValue, local_name : JsValue) -> String = "webapi_Element" "getAttributeNS"

///|
impl TElement with get_attribute_n_s(self : Self, namespace : String, local_name : String) -> String {
  element_get_attribute_n_s_ffi(self.to_js(), TJsValue::to_js(namespace), TJsValue::to_js(local_name))
}

///|
fn element_set_attribute_ffi(obj : JsValue, qualified_name : JsValue, value : JsValue) -> Unit = "webapi_Element" "setAttribute"

///|
impl TElement with set_attribute(self : Self, qualified_name : String, value : String) -> Unit {
  element_set_attribute_ffi(self.to_js(), TJsValue::to_js(qualified_name), TJsValue::to_js(value))
}

///|
fn element_set_attribute_n_s_ffi(obj : JsValue, namespace : JsValue, qualified_name : JsValue, value : JsValue) -> Unit = "webapi_Element" "setAttributeNS"

///|
impl TElement with set_attribute_n_s(self : Self, namespace : String, qualified_name : String, value : String) -> Unit {
  element_set_attribute_n_s_ffi(self.to_js(), TJsValue::to_js(namespace), TJsValue::to_js(qualified_name), TJsValue::to_js(value))
}

///|
fn element_remove_attribute_ffi(obj : JsValue, qualified_name : JsValue) -> Unit = "webapi_Element" "removeAttribute"

///|
impl TElement with remove_attribute(self : Self, qualified_name : String) -> Unit {
  element_remove_attribute_ffi(self.to_js(), TJsValue::to_js(qualified_name))
}

///|
fn element_remove_attribute_n_s_ffi(obj : JsValue, namespace : JsValue, local_name : JsValue) -> Unit = "webapi_Element" "removeAttributeNS"

///|
impl TElement with remove_attribute_n_s(self : Self, namespace : String, local_name : String) -> Unit {
  element_remove_attribute_n_s_ffi(self.to_js(), TJsValue::to_js(namespace), TJsValue::to_js(local_name))
}

///|
fn element_toggle_attribute_ffi(obj : JsValue, qualified_name : JsValue, force : JsValue) -> Bool = "webapi_Element" "toggleAttribute"

///|
impl TElement with toggle_attribute(self : Self, qualified_name : String, force? : Bool) -> Bool {
  element_toggle_attribute_ffi(self.to_js(), TJsValue::to_js(qualified_name), TJsValue::to_js(force))
}

///|
fn element_has_attribute_ffi(obj : JsValue, qualified_name : JsValue) -> Bool = "webapi_Element" "hasAttribute"

///|
impl TElement with has_attribute(self : Self, qualified_name : String) -> Bool {
  element_has_attribute_ffi(self.to_js(), TJsValue::to_js(qualified_name))
}

///|
fn element_has_attribute_n_s_ffi(obj : JsValue, namespace : JsValue, local_name : JsValue) -> Bool = "webapi_Element" "hasAttributeNS"

///|
impl TElement with has_attribute_n_s(self : Self, namespace : String, local_name : String) -> Bool {
  element_has_attribute_n_s_ffi(self.to_js(), TJsValue::to_js(namespace), TJsValue::to_js(local_name))
}

///|
fn element_get_attribute_node_ffi(obj : JsValue, qualified_name : JsValue) -> JsValue = "webapi_Element" "getAttributeNode"

///|
impl TElement with get_attribute_node(self : Self, qualified_name : String) -> &TAttr {
  element_get_attribute_node_ffi(self.to_js(), TJsValue::to_js(qualified_name)).unsafe_cast()
}

///|
fn element_get_attribute_node_n_s_ffi(obj : JsValue, namespace : JsValue, local_name : JsValue) -> JsValue = "webapi_Element" "getAttributeNodeNS"

///|
impl TElement with get_attribute_node_n_s(self : Self, namespace : String, local_name : String) -> &TAttr {
  element_get_attribute_node_n_s_ffi(self.to_js(), TJsValue::to_js(namespace), TJsValue::to_js(local_name)).unsafe_cast()
}

///|
fn element_set_attribute_node_ffi(obj : JsValue, attr : JsValue) -> JsValue = "webapi_Element" "setAttributeNode"

///|
impl TElement with set_attribute_node(self : Self, attr : &TAttr) -> &TAttr {
  element_set_attribute_node_ffi(self.to_js(), attr.to_js()).unsafe_cast()
}

///|
fn element_set_attribute_node_n_s_ffi(obj : JsValue, attr : JsValue) -> JsValue = "webapi_Element" "setAttributeNodeNS"

///|
impl TElement with set_attribute_node_n_s(self : Self, attr : &TAttr) -> &TAttr {
  element_set_attribute_node_n_s_ffi(self.to_js(), attr.to_js()).unsafe_cast()
}

///|
fn element_remove_attribute_node_ffi(obj : JsValue, attr : JsValue) -> JsValue = "webapi_Element" "removeAttributeNode"

///|
impl TElement with remove_attribute_node(self : Self, attr : &TAttr) -> &TAttr {
  element_remove_attribute_node_ffi(self.to_js(), attr.to_js()).unsafe_cast()
}

///|
fn element_attach_shadow_ffi(obj : JsValue, init : JsValue) -> JsValue = "webapi_Element" "attachShadow"

///|
impl TElement with attach_shadow(self : Self, init : ShadowRootInit) -> &TShadowRoot {
  element_attach_shadow_ffi(self.to_js(), TJsValue::to_js(init)).unsafe_cast()
}

///|
fn element_closest_ffi(obj : JsValue, selectors : JsValue) -> JsValue = "webapi_Element" "closest"

///|
impl TElement with closest(self : Self, selectors : String) -> &TElement {
  element_closest_ffi(self.to_js(), TJsValue::to_js(selectors)).unsafe_cast()
}

///|
fn element_matches_ffi(obj : JsValue, selectors : JsValue) -> Bool = "webapi_Element" "matches"

///|
impl TElement with matches(self : Self, selectors : String) -> Bool {
  element_matches_ffi(self.to_js(), TJsValue::to_js(selectors))
}

///|
fn element_webkit_matches_selector_ffi(obj : JsValue, selectors : JsValue) -> Bool = "webapi_Element" "webkitMatchesSelector"

///|
impl TElement with webkit_matches_selector(self : Self, selectors : String) -> Bool {
  element_webkit_matches_selector_ffi(self.to_js(), TJsValue::to_js(selectors))
}

///|
fn element_get_elements_by_tag_name_ffi(obj : JsValue, qualified_name : JsValue) -> JsValue = "webapi_Element" "getElementsByTagName"

///|
impl TElement with get_elements_by_tag_name(self : Self, qualified_name : String) -> &THTMLCollection {
  element_get_elements_by_tag_name_ffi(self.to_js(), TJsValue::to_js(qualified_name)).unsafe_cast()
}

///|
fn element_get_elements_by_tag_name_n_s_ffi(obj : JsValue, namespace : JsValue, local_name : JsValue) -> JsValue = "webapi_Element" "getElementsByTagNameNS"

///|
impl TElement with get_elements_by_tag_name_n_s(self : Self, namespace : String, local_name : String) -> &THTMLCollection {
  element_get_elements_by_tag_name_n_s_ffi(self.to_js(), TJsValue::to_js(namespace), TJsValue::to_js(local_name)).unsafe_cast()
}

///|
fn element_get_elements_by_class_name_ffi(obj : JsValue, class_names : JsValue) -> JsValue = "webapi_Element" "getElementsByClassName"

///|
impl TElement with get_elements_by_class_name(self : Self, class_names : String) -> &THTMLCollection {
  element_get_elements_by_class_name_ffi(self.to_js(), TJsValue::to_js(class_names)).unsafe_cast()
}

///|
fn element_insert_adjacent_element_ffi(obj : JsValue, where : JsValue, element : JsValue) -> JsValue = "webapi_Element" "insertAdjacentElement"

///|
impl TElement with insert_adjacent_element(self : Self, where : String, element : &TElement) -> &TElement {
  element_insert_adjacent_element_ffi(self.to_js(), TJsValue::to_js(where), element.to_js()).unsafe_cast()
}

///|
fn element_insert_adjacent_text_ffi(obj : JsValue, where : JsValue, data : JsValue) -> Unit = "webapi_Element" "insertAdjacentText"

///|
impl TElement with insert_adjacent_text(self : Self, where : String, data : String) -> Unit {
  element_insert_adjacent_text_ffi(self.to_js(), TJsValue::to_js(where), TJsValue::to_js(data))
}

///|
fn element_set_h_t_m_l_unsafe_ffi(obj : JsValue, html : JsValue) -> Unit = "webapi_Element" "setHTMLUnsafe"

///|
impl TElement with set_h_t_m_l_unsafe(self : Self, html : String) -> Unit {
  element_set_h_t_m_l_unsafe_ffi(self.to_js(), TJsValue::to_js(html))
}

///|
fn element_get_h_t_m_l_ffi(obj : JsValue, options : JsValue) -> String = "webapi_Element" "getHTML"

///|
impl TElement with get_h_t_m_l(self : Self, options? : GetHTMLOptions) -> String {
  element_get_h_t_m_l_ffi(self.to_js(), TJsValue::to_js(options))
}

///|
fn element_insert_adjacent_h_t_m_l_ffi(obj : JsValue, position : JsValue, string : JsValue) -> Unit = "webapi_Element" "insertAdjacentHTML"

///|
impl TElement with insert_adjacent_h_t_m_l(self : Self, position : String, string : String) -> Unit {
  element_insert_adjacent_h_t_m_l_ffi(self.to_js(), TJsValue::to_js(position), TJsValue::to_js(string))
}

///|
fn element_get_client_rects_ffi(obj : JsValue) -> JsValue = "webapi_Element" "getClientRects"

///|
impl TElement with get_client_rects(self : Self) -> DOMRectList {
  element_get_client_rects_ffi(self.to_js()).unsafe_cast()
}

///|
fn element_get_bounding_client_rect_ffi(obj : JsValue) -> JsValue = "webapi_Element" "getBoundingClientRect"

///|
impl TElement with get_bounding_client_rect(self : Self) -> DOMRect {
  element_get_bounding_client_rect_ffi(self.to_js()).unsafe_cast()
}

///|
fn element_check_visibility_ffi(obj : JsValue, options : JsValue) -> Bool = "webapi_Element" "checkVisibility"

///|
impl TElement with check_visibility(self : Self, options? : CheckVisibilityOptions) -> Bool {
  element_check_visibility_ffi(self.to_js(), TJsValue::to_js(options))
}

///|
fn element_scroll_into_view_ffi(obj : JsValue, arg : JsValue) -> JsValue = "webapi_Element" "scrollIntoView"

///|
impl TElement with scroll_into_view(self : Self, arg? : &TScrollIntoViewArgArg) -> JsPromise[Unit] {
  element_scroll_into_view_ffi(self.to_js(), arg.to_js()).unsafe_cast()
}

///|
fn element_scroll_ffi(obj : JsValue, options : JsValue) -> JsValue = "webapi_Element" "scroll"

///|
impl TElement with scroll(self : Self, options? : ScrollToOptions) -> JsPromise[Unit] {
  element_scroll_ffi(self.to_js(), TJsValue::to_js(options)).unsafe_cast()
}

///|
fn element_scroll_ffi(obj : JsValue, x : JsValue, y : JsValue) -> JsValue = "webapi_Element" "scroll"

///|
impl TElement with scroll(self : Self, x : Double, y : Double) -> JsPromise[Unit] {
  element_scroll_ffi(self.to_js(), TJsValue::to_js(x), TJsValue::to_js(y)).unsafe_cast()
}

///|
fn element_scroll_to_ffi(obj : JsValue, options : JsValue) -> JsValue = "webapi_Element" "scrollTo"

///|
impl TElement with scroll_to(self : Self, options? : ScrollToOptions) -> JsPromise[Unit] {
  element_scroll_to_ffi(self.to_js(), TJsValue::to_js(options)).unsafe_cast()
}

///|
fn element_scroll_to_ffi(obj : JsValue, x : JsValue, y : JsValue) -> JsValue = "webapi_Element" "scrollTo"

///|
impl TElement with scroll_to(self : Self, x : Double, y : Double) -> JsPromise[Unit] {
  element_scroll_to_ffi(self.to_js(), TJsValue::to_js(x), TJsValue::to_js(y)).unsafe_cast()
}

///|
fn element_scroll_by_ffi(obj : JsValue, options : JsValue) -> JsValue = "webapi_Element" "scrollBy"

///|
impl TElement with scroll_by(self : Self, options? : ScrollToOptions) -> JsPromise[Unit] {
  element_scroll_by_ffi(self.to_js(), TJsValue::to_js(options)).unsafe_cast()
}

///|
fn element_scroll_by_ffi(obj : JsValue, x : JsValue, y : JsValue) -> JsValue = "webapi_Element" "scrollBy"

///|
impl TElement with scroll_by(self : Self, x : Double, y : Double) -> JsPromise[Unit] {
  element_scroll_by_ffi(self.to_js(), TJsValue::to_js(x), TJsValue::to_js(y)).unsafe_cast()
}