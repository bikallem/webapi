///|
extern "js" fn element_namespace_uri_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.namespaceURI"

///|
fn element_namespace_uri_ffi(obj : JsValue) -> String {
  element_namespace_uri_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_prefix_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.prefix"

///|
fn element_prefix_ffi(obj : JsValue) -> String {
  element_prefix_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_local_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.localName"

///|
fn element_local_name_ffi(obj : JsValue) -> String {
  element_local_name_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_tag_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.tagName"

///|
fn element_tag_name_ffi(obj : JsValue) -> String {
  element_tag_name_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_id_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.id"

///|
fn element_id_ffi(obj : JsValue) -> String {
  element_id_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_set_id_ffi(obj : JsValue, id : JsValue) -> Unit = "(obj, id) => { obj.id = id; }"

///|
extern "js" fn element_class_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.className"

///|
fn element_class_name_ffi(obj : JsValue) -> String {
  element_class_name_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_set_class_name_ffi(
  obj : JsValue,
  class_name : JsValue,
) -> Unit = "(obj, className) => { obj.className = className; }"

///|
extern "js" fn element_class_list_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.classList"

///|
fn element_class_list_ffi(obj : JsValue) -> DOMTokenList {
  element_class_list_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_slot_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.slot"

///|
fn element_slot_ffi(obj : JsValue) -> String {
  element_slot_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_set_slot_ffi(obj : JsValue, slot : JsValue) -> Unit = "(obj, slot) => { obj.slot = slot; }"

///|
extern "js" fn element_has_attributes_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.hasAttributes()"

///|
fn element_has_attributes_ffi(obj : JsValue) -> Bool {
  element_has_attributes_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_attributes_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.attributes"

///|
fn element_attributes_ffi(obj : JsValue) -> NamedNodeMap {
  element_attributes_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_get_attribute_names_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.getAttributeNames()"

///|
fn element_get_attribute_names_ffi(obj : JsValue) -> Array[String] {
  element_get_attribute_names_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_get_attribute_ffi(
  obj : JsValue,
  qualified_name : JsValue,
) -> JsValue = "(obj, qualified_name) => obj.getAttribute(qualified_name)"

///|
extern "js" fn element_get_attribute_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> JsValue = "(obj, namespace_, local_name) => obj.getAttributeNS(namespace_, local_name)"

///|
extern "js" fn element_set_attribute_ffi(
  obj : JsValue,
  qualified_name : JsValue,
  value : JsValue,
) -> Unit = "(obj, qualified_name, value) => obj.setAttribute(qualified_name, value)"

///|
extern "js" fn element_set_attribute_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  qualified_name : JsValue,
  value : JsValue,
) -> Unit = "(obj, namespace_, qualified_name, value) => obj.setAttributeNS(namespace_, qualified_name, value)"

///|
extern "js" fn element_remove_attribute_ffi(
  obj : JsValue,
  qualified_name : JsValue,
) -> Unit = "(obj, qualified_name) => obj.removeAttribute(qualified_name)"

///|
extern "js" fn element_remove_attribute_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> Unit = "(obj, namespace_, local_name) => obj.removeAttributeNS(namespace_, local_name)"

///|
extern "js" fn element_toggle_attribute_ffi_js(
  obj : JsValue,
  qualified_name : JsValue,
  force : JsValue,
) -> JsValue = "(obj, qualified_name, force) => obj.toggleAttribute(qualified_name, force)"

///|
fn element_toggle_attribute_ffi(
  obj : JsValue,
  qualified_name : JsValue,
  force : JsValue,
) -> Bool {
  element_toggle_attribute_ffi_js(obj, qualified_name, force).unsafe_cast()
}

///|
extern "js" fn element_has_attribute_ffi_js(
  obj : JsValue,
  qualified_name : JsValue,
) -> JsValue = "(obj, qualified_name) => obj.hasAttribute(qualified_name)"

///|
fn element_has_attribute_ffi(obj : JsValue, qualified_name : JsValue) -> Bool {
  element_has_attribute_ffi_js(obj, qualified_name).unsafe_cast()
}

///|
extern "js" fn element_has_attribute_ns_ffi_js(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> JsValue = "(obj, namespace_, local_name) => obj.hasAttributeNS(namespace_, local_name)"

///|
fn element_has_attribute_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> Bool {
  element_has_attribute_ns_ffi_js(obj, namespace_, local_name).unsafe_cast()
}

///|
extern "js" fn element_get_attribute_node_ffi(
  obj : JsValue,
  qualified_name : JsValue,
) -> JsValue = "(obj, qualified_name) => obj.getAttributeNode(qualified_name)"

///|
extern "js" fn element_get_attribute_node_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> JsValue = "(obj, namespace_, local_name) => obj.getAttributeNodeNS(namespace_, local_name)"

///|
extern "js" fn element_set_attribute_node_ffi(
  obj : JsValue,
  attr : JsValue,
) -> JsValue = "(obj, attr) => obj.setAttributeNode(attr)"

///|
extern "js" fn element_set_attribute_node_ns_ffi(
  obj : JsValue,
  attr : JsValue,
) -> JsValue = "(obj, attr) => obj.setAttributeNodeNS(attr)"

///|
extern "js" fn element_remove_attribute_node_ffi_js(
  obj : JsValue,
  attr : JsValue,
) -> JsValue = "(obj, attr) => obj.removeAttributeNode(attr)"

///|
fn element_remove_attribute_node_ffi(obj : JsValue, attr : JsValue) -> Attr {
  element_remove_attribute_node_ffi_js(obj, attr).unsafe_cast()
}

///|
extern "js" fn element_attach_shadow_ffi_js(
  obj : JsValue,
  init : JsValue,
) -> JsValue = "(obj, init) => obj.attachShadow(init)"

///|
fn element_attach_shadow_ffi(obj : JsValue, init : JsValue) -> ShadowRoot {
  element_attach_shadow_ffi_js(obj, init).unsafe_cast()
}

///|
extern "js" fn element_shadow_root_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.shadowRoot"

///|
fn element_shadow_root_ffi(obj : JsValue) -> ShadowRoot {
  element_shadow_root_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_custom_element_registry_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.customElementRegistry"

///|
fn element_custom_element_registry_ffi(obj : JsValue) -> CustomElementRegistry {
  element_custom_element_registry_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_closest_ffi(
  obj : JsValue,
  selectors : JsValue,
) -> JsValue = "(obj, selectors) => obj.closest(selectors)"

///|
extern "js" fn element_matches_ffi_js(
  obj : JsValue,
  selectors : JsValue,
) -> JsValue = "(obj, selectors) => obj.matches(selectors)"

///|
fn element_matches_ffi(obj : JsValue, selectors : JsValue) -> Bool {
  element_matches_ffi_js(obj, selectors).unsafe_cast()
}

///|
extern "js" fn element_webkit_matches_selector_ffi_js(
  obj : JsValue,
  selectors : JsValue,
) -> JsValue = "(obj, selectors) => obj.webkitMatchesSelector(selectors)"

///|
fn element_webkit_matches_selector_ffi(
  obj : JsValue,
  selectors : JsValue,
) -> Bool {
  element_webkit_matches_selector_ffi_js(obj, selectors).unsafe_cast()
}

///|
extern "js" fn element_get_elements_by_tag_name_ffi_js(
  obj : JsValue,
  qualified_name : JsValue,
) -> JsValue = "(obj, qualified_name) => obj.getElementsByTagName(qualified_name)"

///|
fn element_get_elements_by_tag_name_ffi(
  obj : JsValue,
  qualified_name : JsValue,
) -> HTMLCollection {
  element_get_elements_by_tag_name_ffi_js(obj, qualified_name).unsafe_cast()
}

///|
extern "js" fn element_get_elements_by_tag_name_ns_ffi_js(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> JsValue = "(obj, namespace_, local_name) => obj.getElementsByTagNameNS(namespace_, local_name)"

///|
fn element_get_elements_by_tag_name_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> HTMLCollection {
  element_get_elements_by_tag_name_ns_ffi_js(obj, namespace_, local_name).unsafe_cast()
}

///|
extern "js" fn element_get_elements_by_class_name_ffi_js(
  obj : JsValue,
  class_names : JsValue,
) -> JsValue = "(obj, class_names) => obj.getElementsByClassName(class_names)"

///|
fn element_get_elements_by_class_name_ffi(
  obj : JsValue,
  class_names : JsValue,
) -> HTMLCollection {
  element_get_elements_by_class_name_ffi_js(obj, class_names).unsafe_cast()
}

///|
extern "js" fn element_insert_adjacent_element_ffi(
  obj : JsValue,
  where_ : JsValue,
  element : JsValue,
) -> JsValue = "(obj, where_, element) => obj.insertAdjacentElement(where_, element)"

///|
extern "js" fn element_insert_adjacent_text_ffi(
  obj : JsValue,
  where_ : JsValue,
  data : JsValue,
) -> Unit = "(obj, where_, data) => obj.insertAdjacentText(where_, data)"

///|
extern "js" fn element_set_html_unsafe_ffi(
  obj : JsValue,
  html : JsValue,
) -> Unit = "(obj, html) => obj.setHTMLUnsafe(html)"

///|
extern "js" fn element_get_html_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.getHTML(options)"

///|
fn element_get_html_ffi(obj : JsValue, options : JsValue) -> String {
  element_get_html_ffi_js(obj, options).unsafe_cast()
}

///|
extern "js" fn element_inner_html_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.innerHTML"

///|
fn element_inner_html_ffi(obj : JsValue) -> ElementInnerHTML {
  element_inner_html_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_set_inner_html_ffi(
  obj : JsValue,
  inner_html : JsValue,
) -> Unit = "(obj, innerHTML) => { obj.innerHTML = innerHTML; }"

///|
extern "js" fn element_outer_html_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.outerHTML"

///|
fn element_outer_html_ffi(obj : JsValue) -> ElementOuterHTML {
  element_outer_html_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_set_outer_html_ffi(
  obj : JsValue,
  outer_html : JsValue,
) -> Unit = "(obj, outerHTML) => { obj.outerHTML = outerHTML; }"

///|
extern "js" fn element_insert_adjacent_html_ffi(
  obj : JsValue,
  position : JsValue,
  string : JsValue,
) -> Unit = "(obj, position, string) => obj.insertAdjacentHTML(position, string)"

///|
extern "js" fn element_get_client_rects_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.getClientRects()"

///|
fn element_get_client_rects_ffi(obj : JsValue) -> DOMRectList {
  element_get_client_rects_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_get_bounding_client_rect_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getBoundingClientRect()"

///|
fn element_get_bounding_client_rect_ffi(obj : JsValue) -> DOMRect {
  element_get_bounding_client_rect_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_check_visibility_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.checkVisibility(options)"

///|
fn element_check_visibility_ffi(obj : JsValue, options : JsValue) -> Bool {
  element_check_visibility_ffi_js(obj, options).unsafe_cast()
}

///|
extern "js" fn element_scroll_into_view_ffi_js(
  obj : JsValue,
  arg : JsValue,
) -> JsValue = "(obj, arg) => obj.scrollIntoView(arg)"

///|
fn element_scroll_into_view_ffi(
  obj : JsValue,
  arg : JsValue,
) -> JsPromise[Unit] {
  element_scroll_into_view_ffi_js(obj, arg).unsafe_cast()
}

///|
extern "js" fn element_scroll_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.scroll(options)"

///|
fn element_scroll_ffi(obj : JsValue, options : JsValue) -> JsPromise[Unit] {
  element_scroll_ffi_js(obj, options).unsafe_cast()
}

///|
extern "js" fn element_scroll_2_ffi_js(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "(obj, x, y) => obj.scroll_2(x, y)"

///|
fn element_scroll_2_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsPromise[Unit] {
  element_scroll_2_ffi_js(obj, x, y).unsafe_cast()
}

///|
extern "js" fn element_scroll_to_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.scrollTo(options)"

///|
fn element_scroll_to_ffi(obj : JsValue, options : JsValue) -> JsPromise[Unit] {
  element_scroll_to_ffi_js(obj, options).unsafe_cast()
}

///|
extern "js" fn element_scroll_to_2_ffi_js(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "(obj, x, y) => obj.scrollTo_2(x, y)"

///|
fn element_scroll_to_2_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsPromise[Unit] {
  element_scroll_to_2_ffi_js(obj, x, y).unsafe_cast()
}

///|
extern "js" fn element_scroll_by_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.scrollBy(options)"

///|
fn element_scroll_by_ffi(obj : JsValue, options : JsValue) -> JsPromise[Unit] {
  element_scroll_by_ffi_js(obj, options).unsafe_cast()
}

///|
extern "js" fn element_scroll_by_2_ffi_js(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "(obj, x, y) => obj.scrollBy_2(x, y)"

///|
fn element_scroll_by_2_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsPromise[Unit] {
  element_scroll_by_2_ffi_js(obj, x, y).unsafe_cast()
}

///|
extern "js" fn element_scroll_top_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.scrollTop"

///|
fn element_scroll_top_ffi(obj : JsValue) -> Double {
  element_scroll_top_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_set_scroll_top_ffi(
  obj : JsValue,
  scroll_top : JsValue,
) -> Unit = "(obj, scrollTop) => { obj.scrollTop = scrollTop; }"

///|
extern "js" fn element_scroll_left_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.scrollLeft"

///|
fn element_scroll_left_ffi(obj : JsValue) -> Double {
  element_scroll_left_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_set_scroll_left_ffi(
  obj : JsValue,
  scroll_left : JsValue,
) -> Unit = "(obj, scrollLeft) => { obj.scrollLeft = scrollLeft; }"

///|
extern "js" fn element_scroll_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.scrollWidth"

///|
fn element_scroll_width_ffi(obj : JsValue) -> Int {
  element_scroll_width_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_scroll_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.scrollHeight"

///|
fn element_scroll_height_ffi(obj : JsValue) -> Int {
  element_scroll_height_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_client_top_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.clientTop"

///|
fn element_client_top_ffi(obj : JsValue) -> Int {
  element_client_top_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_client_left_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.clientLeft"

///|
fn element_client_left_ffi(obj : JsValue) -> Int {
  element_client_left_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_client_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.clientWidth"

///|
fn element_client_width_ffi(obj : JsValue) -> Int {
  element_client_width_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_client_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.clientHeight"

///|
fn element_client_height_ffi(obj : JsValue) -> Int {
  element_client_height_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_current_css_zoom_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.currentCSSZoom"

///|
fn element_current_css_zoom_ffi(obj : JsValue) -> Double {
  element_current_css_zoom_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_request_fullscreen_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.requestFullscreen(options)"

///|
fn element_request_fullscreen_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsPromise[Unit] {
  element_request_fullscreen_ffi_js(obj, options).unsafe_cast()
}

///|
extern "js" fn element_onfullscreenchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onfullscreenchange"

///|
fn element_onfullscreenchange_ffi(obj : JsValue) -> EventHandler {
  element_onfullscreenchange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_set_onfullscreenchange_ffi(
  obj : JsValue,
  onfullscreenchange : JsValue,
) -> Unit = "(obj, onfullscreenchange) => { obj.onfullscreenchange = onfullscreenchange; }"

///|
extern "js" fn element_onfullscreenerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onfullscreenerror"

///|
fn element_onfullscreenerror_ffi(obj : JsValue) -> EventHandler {
  element_onfullscreenerror_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_set_onfullscreenerror_ffi(
  obj : JsValue,
  onfullscreenerror : JsValue,
) -> Unit = "(obj, onfullscreenerror) => { obj.onfullscreenerror = onfullscreenerror; }"

///|
extern "js" fn element_set_pointer_capture_ffi(
  obj : JsValue,
  pointer_id : JsValue,
) -> Unit = "(obj, pointer_id) => obj.setPointerCapture(pointer_id)"

///|
extern "js" fn element_release_pointer_capture_ffi(
  obj : JsValue,
  pointer_id : JsValue,
) -> Unit = "(obj, pointer_id) => obj.releasePointerCapture(pointer_id)"

///|
extern "js" fn element_has_pointer_capture_ffi_js(
  obj : JsValue,
  pointer_id : JsValue,
) -> JsValue = "(obj, pointer_id) => obj.hasPointerCapture(pointer_id)"

///|
fn element_has_pointer_capture_ffi(obj : JsValue, pointer_id : JsValue) -> Bool {
  element_has_pointer_capture_ffi_js(obj, pointer_id).unsafe_cast()
}

///|
extern "js" fn element_children_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.children"

///|
fn element_children_ffi(obj : JsValue) -> HTMLCollection {
  element_children_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_first_element_child_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.firstElementChild"

///|
fn element_first_element_child_ffi(obj : JsValue) -> Element {
  element_first_element_child_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_last_element_child_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.lastElementChild"

///|
fn element_last_element_child_ffi(obj : JsValue) -> Element {
  element_last_element_child_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_child_element_count_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.childElementCount"

///|
fn element_child_element_count_ffi(obj : JsValue) -> UInt {
  element_child_element_count_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_prepend_ffi(obj : JsValue, nodes : JsValue) -> Unit = "(obj, nodes) => obj.prepend(...nodes)"

///|
extern "js" fn element_append_ffi(obj : JsValue, nodes : JsValue) -> Unit = "(obj, nodes) => obj.append(...nodes)"

///|
extern "js" fn element_replace_children_ffi(
  obj : JsValue,
  nodes : JsValue,
) -> Unit = "(obj, nodes) => obj.replaceChildren(...nodes)"

///|
extern "js" fn element_move_before_ffi(
  obj : JsValue,
  node : JsValue,
  child : JsValue,
) -> Unit = "(obj, node, child) => obj.moveBefore(node, child)"

///|
extern "js" fn element_query_selector_ffi(
  obj : JsValue,
  selectors : JsValue,
) -> JsValue = "(obj, selectors) => obj.querySelector(selectors)"

///|
extern "js" fn element_query_selector_all_ffi_js(
  obj : JsValue,
  selectors : JsValue,
) -> JsValue = "(obj, selectors) => obj.querySelectorAll(selectors)"

///|
fn element_query_selector_all_ffi(
  obj : JsValue,
  selectors : JsValue,
) -> NodeList {
  element_query_selector_all_ffi_js(obj, selectors).unsafe_cast()
}

///|
extern "js" fn element_previous_element_sibling_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.previousElementSibling"

///|
fn element_previous_element_sibling_ffi(obj : JsValue) -> Element {
  element_previous_element_sibling_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_next_element_sibling_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.nextElementSibling"

///|
fn element_next_element_sibling_ffi(obj : JsValue) -> Element {
  element_next_element_sibling_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_before_ffi(obj : JsValue, nodes : JsValue) -> Unit = "(obj, nodes) => obj.before(...nodes)"

///|
extern "js" fn element_after_ffi(obj : JsValue, nodes : JsValue) -> Unit = "(obj, nodes) => obj.after(...nodes)"

///|
extern "js" fn element_replace_with_ffi(obj : JsValue, nodes : JsValue) -> Unit = "(obj, nodes) => obj.replaceWith(...nodes)"

///|
extern "js" fn element_remove_ffi(obj : JsValue) -> Unit = "(obj) => obj.remove()"

///|
extern "js" fn element_assigned_slot_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.assignedSlot"

///|
fn element_assigned_slot_ffi(obj : JsValue) -> HTMLSlotElement {
  element_assigned_slot_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_get_box_quads_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.getBoxQuads(options)"

///|
fn element_get_box_quads_ffi(
  obj : JsValue,
  options : JsValue,
) -> Array[DOMQuad] {
  element_get_box_quads_ffi_js(obj, options).unsafe_cast()
}

///|
extern "js" fn element_convert_quad_from_node_ffi_js(
  obj : JsValue,
  quad : JsValue,
  from : JsValue,
  options : JsValue,
) -> JsValue = "(obj, quad, from, options) => obj.convertQuadFromNode(quad, from, options)"

///|
fn element_convert_quad_from_node_ffi(
  obj : JsValue,
  quad : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMQuad {
  element_convert_quad_from_node_ffi_js(obj, quad, from, options).unsafe_cast()
}

///|
extern "js" fn element_convert_rect_from_node_ffi_js(
  obj : JsValue,
  rect : JsValue,
  from : JsValue,
  options : JsValue,
) -> JsValue = "(obj, rect, from, options) => obj.convertRectFromNode(rect, from, options)"

///|
fn element_convert_rect_from_node_ffi(
  obj : JsValue,
  rect : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMQuad {
  element_convert_rect_from_node_ffi_js(obj, rect, from, options).unsafe_cast()
}

///|
extern "js" fn element_convert_point_from_node_ffi_js(
  obj : JsValue,
  point : JsValue,
  from : JsValue,
  options : JsValue,
) -> JsValue = "(obj, point, from, options) => obj.convertPointFromNode(point, from, options)"

///|
fn element_convert_point_from_node_ffi(
  obj : JsValue,
  point : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMPoint {
  element_convert_point_from_node_ffi_js(obj, point, from, options).unsafe_cast()
}
