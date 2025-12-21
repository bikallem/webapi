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
pub(open) trait TSetAttributeValueArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TSetAttributeValueArg for TrustedType with to_js(self : TrustedType) -> JsValue = "%identity"

///|
pub impl TSetAttributeValueArg for String with to_js(self : String) -> JsValue = "%identity"

///|
pub(open) trait TSetAttributeNsValueArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TSetAttributeNsValueArg for TrustedType with to_js(self : TrustedType) -> JsValue = "%identity"

///|
pub impl TSetAttributeNsValueArg for String with to_js(self : String) -> JsValue = "%identity"

///|
pub(open) trait TSetHtmlUnsafeHtmlArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TSetHtmlUnsafeHtmlArg for TrustedHTML with to_js(self : TrustedHTML) -> JsValue = "%identity"

///|
pub impl TSetHtmlUnsafeHtmlArg for String with to_js(self : String) -> JsValue = "%identity"

///|
pub(open) trait TInsertAdjacentHtmlStringArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TInsertAdjacentHtmlStringArg for TrustedHTML with to_js(
  self : TrustedHTML,
) -> JsValue = "%identity"

///|
pub impl TInsertAdjacentHtmlStringArg for String with to_js(self : String) -> JsValue = "%identity"

///|
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
pub trait TElement: TNode {
  has_attributes(self : Self) -> Bool = _
  get_attribute_names(self : Self) -> Array[String] = _
  get_attribute(self : Self, qualified_name : String) -> JsValue = _
  get_attribute_ns(self : Self, namespace_ : String, local_name : String) -> JsValue = _
  set_attribute(
    self : Self,
    qualified_name : String,
    value : &TSetAttributeValueArg,
  ) -> Unit = _
  set_attribute_ns(
    self : Self,
    namespace_ : String,
    qualified_name : String,
    value : &TSetAttributeNsValueArg,
  ) -> Unit = _
  remove_attribute(self : Self, qualified_name : String) -> Unit = _
  remove_attribute_ns(self : Self, namespace_ : String, local_name : String) -> Unit = _
  toggle_attribute(self : Self, qualified_name : String, force? : Bool) -> Bool = _
  has_attribute(self : Self, qualified_name : String) -> Bool = _
  has_attribute_ns(self : Self, namespace_ : String, local_name : String) -> Bool = _
  get_attribute_node(self : Self, qualified_name : String) -> JsValue = _
  get_attribute_node_ns(self : Self, namespace_ : String, local_name : String) -> JsValue = _
  set_attribute_node(self : Self, attr : Attr) -> JsValue = _
  set_attribute_node_ns(self : Self, attr : Attr) -> JsValue = _
  remove_attribute_node(self : Self, attr : Attr) -> Attr = _
  attach_shadow(self : Self, init : ShadowRootInit) -> ShadowRoot = _
  closest(self : Self, selectors : String) -> JsValue = _
  matches(self : Self, selectors : String) -> Bool = _
  webkit_matches_selector(self : Self, selectors : String) -> Bool = _
  get_elements_by_tag_name(self : Self, qualified_name : String) -> HTMLCollection = _
  get_elements_by_tag_name_ns(
    self : Self,
    namespace_ : String,
    local_name : String,
  ) -> HTMLCollection = _
  get_elements_by_class_name(self : Self, class_names : String) -> HTMLCollection = _
  insert_adjacent_element(self : Self, where_ : String, element : Element) -> JsValue = _
  insert_adjacent_text(self : Self, where_ : String, data : String) -> Unit = _
  set_html_unsafe(self : Self, html : &TSetHtmlUnsafeHtmlArg) -> Unit = _
  get_html(self : Self, options? : GetHTMLOptions) -> String = _
  insert_adjacent_html(
    self : Self,
    position : String,
    string : &TInsertAdjacentHtmlStringArg,
  ) -> Unit = _
  get_client_rects(self : Self) -> DOMRectList = _
  get_bounding_client_rect(self : Self) -> DOMRect = _
  check_visibility(self : Self, options? : CheckVisibilityOptions) -> Bool = _
  scroll_into_view(self : Self, arg? : &TScrollIntoViewArgArg) -> JsValue = _
  scroll(self : Self, options? : ScrollToOptions) -> JsValue = _
  scroll_2(self : Self, x : Double, y : Double) -> JsValue = _
  scroll_to(self : Self, options? : ScrollToOptions) -> JsValue = _
  scroll_to_2(self : Self, x : Double, y : Double) -> JsValue = _
  scroll_by(self : Self, options? : ScrollToOptions) -> JsValue = _
  scroll_by_2(self : Self, x : Double, y : Double) -> JsValue = _
}

///|
extern "js" fn element_has_attributes_ffi(obj : JsValue) -> Bool = "(obj) => obj.hasAttributes(obj)"

///|
impl TElement with has_attributes(self : Self) -> Bool {
  element_has_attributes_ffi(TJsValue::to_js(self))
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
impl TElement with get_attribute(self : Self, qualified_name : String) -> JsValue {
  element_get_attribute_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(qualified_name),
  )
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
) -> JsValue {
  element_get_attribute_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
    TJsValue::to_js(local_name),
  )
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
  value : &TSetAttributeValueArg,
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
  value : &TSetAttributeNsValueArg,
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
impl TElement with get_attribute_node(self : Self, qualified_name : String) -> JsValue {
  element_get_attribute_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(qualified_name),
  )
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
) -> JsValue {
  element_get_attribute_node_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
    TJsValue::to_js(local_name),
  )
}

///|
extern "js" fn element_set_attribute_node_ffi(
  obj : JsValue,
  attr : JsValue,
) -> JsValue = "(obj, attr) => obj.setAttributeNode(obj, attr)"

///|
impl TElement with set_attribute_node(self : Self, attr : Attr) -> JsValue {
  element_set_attribute_node_ffi(TJsValue::to_js(self), TJsValue::to_js(attr))
}

///|
extern "js" fn element_set_attribute_node_ns_ffi(
  obj : JsValue,
  attr : JsValue,
) -> JsValue = "(obj, attr) => obj.setAttributeNodeNS(obj, attr)"

///|
impl TElement with set_attribute_node_ns(self : Self, attr : Attr) -> JsValue {
  element_set_attribute_node_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(attr),
  )
}

///|
extern "js" fn element_remove_attribute_node_ffi(
  obj : JsValue,
  attr : JsValue,
) -> Attr = "(obj, attr) => obj.removeAttributeNode(obj, attr)"

///|
impl TElement with remove_attribute_node(self : Self, attr : Attr) -> Attr {
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
extern "js" fn element_closest_ffi(
  obj : JsValue,
  selectors : JsValue,
) -> JsValue = "(obj, selectors) => obj.closest(obj, selectors)"

///|
impl TElement with closest(self : Self, selectors : String) -> JsValue {
  element_closest_ffi(TJsValue::to_js(self), TJsValue::to_js(selectors))
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
  element : Element,
) -> JsValue {
  element_insert_adjacent_element_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(where_),
    TJsValue::to_js(element),
  )
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
impl TElement with set_html_unsafe(self : Self, html : &TSetHtmlUnsafeHtmlArg) -> Unit {
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
extern "js" fn element_insert_adjacent_html_ffi(
  obj : JsValue,
  position : JsValue,
  string : JsValue,
) -> Unit = "(obj, position, string) => obj.insertAdjacentHTML(obj, position, string)"

///|
impl TElement with insert_adjacent_html(
  self : Self,
  position : String,
  string : &TInsertAdjacentHtmlStringArg,
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
) -> JsValue = "(obj, arg) => obj.scrollIntoView(obj, arg)"

///|
impl TElement with scroll_into_view(
  self : Self,
  arg? : &TScrollIntoViewArgArg = ScrollIntoViewOptions::empty(),
) -> JsValue {
  element_scroll_into_view_ffi(TJsValue::to_js(self), arg.to_js())
}

///|
extern "js" fn element_scroll_ffi(obj : JsValue, options : JsValue) -> JsValue = "(obj, options) => obj.scroll(obj, options)"

///|
impl TElement with scroll(
  self : Self,
  options? : ScrollToOptions = ScrollToOptions::empty(),
) -> JsValue {
  element_scroll_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
extern "js" fn element_scroll_2_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "(obj, x, y) => obj.scroll_2(obj, x, y)"

///|
impl TElement with scroll_2(self : Self, x : Double, y : Double) -> JsValue {
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
) -> JsValue = "(obj, options) => obj.scrollTo(obj, options)"

///|
impl TElement with scroll_to(
  self : Self,
  options? : ScrollToOptions = ScrollToOptions::empty(),
) -> JsValue {
  element_scroll_to_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
extern "js" fn element_scroll_to_2_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "(obj, x, y) => obj.scrollTo_2(obj, x, y)"

///|
impl TElement with scroll_to_2(self : Self, x : Double, y : Double) -> JsValue {
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
) -> JsValue = "(obj, options) => obj.scrollBy(obj, options)"

///|
impl TElement with scroll_by(
  self : Self,
  options? : ScrollToOptions = ScrollToOptions::empty(),
) -> JsValue {
  element_scroll_by_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
extern "js" fn element_scroll_by_2_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "(obj, x, y) => obj.scrollBy_2(obj, x, y)"

///|
impl TElement with scroll_by_2(self : Self, x : Double, y : Double) -> JsValue {
  element_scroll_by_2_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}
