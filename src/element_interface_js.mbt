extern "js" fn element_namespace_uri_ffi(obj: JsValue) -> JsValue = "(obj) => obj.namespaceURI"

extern "js" fn element_prefix_ffi(obj: JsValue) -> JsValue = "(obj) => obj.prefix"

extern "js" fn element_local_name_ffi(obj: JsValue) -> JsValue = "(obj) => obj.localName"

extern "js" fn element_tag_name_ffi(obj: JsValue) -> JsValue = "(obj) => obj.tagName"

extern "js" fn element_id_ffi(obj: JsValue) -> JsValue = "(obj) => obj.id"

extern "js" fn element_set_id_ffi(obj: JsValue, id: JsValue) -> Unit = "(obj, id) => { obj.id = id; }"

extern "js" fn element_class_name_ffi(obj: JsValue) -> JsValue = "(obj) => obj.className"

extern "js" fn element_set_class_name_ffi(obj: JsValue, class_name: JsValue) -> Unit = "(obj, className) => { obj.className = className; }"

extern "js" fn element_class_list_ffi(obj: JsValue) -> JsValue = "(obj) => obj.classList"

extern "js" fn element_slot_ffi(obj: JsValue) -> JsValue = "(obj) => obj.slot"

extern "js" fn element_set_slot_ffi(obj: JsValue, slot: JsValue) -> Unit = "(obj, slot) => { obj.slot = slot; }"

extern "js" fn element_has_attributes_ffi(obj: JsValue) -> JsValue = "(obj) => obj.hasAttributes()"

extern "js" fn element_attributes_ffi(obj: JsValue) -> JsValue = "(obj) => obj.attributes"

extern "js" fn element_get_attribute_names_ffi(obj: JsValue) -> JsValue = "(obj) => obj.getAttributeNames()"

extern "js" fn element_get_attribute_ffi(obj: JsValue, qualified_name: JsValue) -> JsValue = "(obj, qualified_name) => obj.getAttribute(qualified_name)"

extern "js" fn element_get_attribute_ns_ffi(obj: JsValue, namespace_: JsValue, local_name: JsValue) -> JsValue = "(obj, namespace_, local_name) => obj.getAttributeNS(namespace_, local_name)"

extern "js" fn element_set_attribute_ffi(obj: JsValue, qualified_name: JsValue, value: JsValue) -> Unit = "(obj, qualified_name, value) => obj.setAttribute(qualified_name, value)"

extern "js" fn element_set_attribute_ns_ffi(obj: JsValue, namespace_: JsValue, qualified_name: JsValue, value: JsValue) -> Unit = "(obj, namespace_, qualified_name, value) => obj.setAttributeNS(namespace_, qualified_name, value)"

extern "js" fn element_remove_attribute_ffi(obj: JsValue, qualified_name: JsValue) -> Unit = "(obj, qualified_name) => obj.removeAttribute(qualified_name)"

extern "js" fn element_remove_attribute_ns_ffi(obj: JsValue, namespace_: JsValue, local_name: JsValue) -> Unit = "(obj, namespace_, local_name) => obj.removeAttributeNS(namespace_, local_name)"

extern "js" fn element_toggle_attribute_ffi(obj: JsValue, qualified_name: JsValue, force: JsValue) -> JsValue = "(obj, qualified_name, force) => obj.toggleAttribute(qualified_name, force)"

extern "js" fn element_has_attribute_ffi(obj: JsValue, qualified_name: JsValue) -> JsValue = "(obj, qualified_name) => obj.hasAttribute(qualified_name)"

extern "js" fn element_has_attribute_ns_ffi(obj: JsValue, namespace_: JsValue, local_name: JsValue) -> JsValue = "(obj, namespace_, local_name) => obj.hasAttributeNS(namespace_, local_name)"

extern "js" fn element_get_attribute_node_ffi(obj: JsValue, qualified_name: JsValue) -> JsValue = "(obj, qualified_name) => obj.getAttributeNode(qualified_name)"

extern "js" fn element_get_attribute_node_ns_ffi(obj: JsValue, namespace_: JsValue, local_name: JsValue) -> JsValue = "(obj, namespace_, local_name) => obj.getAttributeNodeNS(namespace_, local_name)"

extern "js" fn element_set_attribute_node_ffi(obj: JsValue, attr: JsValue) -> JsValue = "(obj, attr) => obj.setAttributeNode(attr)"

extern "js" fn element_set_attribute_node_ns_ffi(obj: JsValue, attr: JsValue) -> JsValue = "(obj, attr) => obj.setAttributeNodeNS(attr)"

extern "js" fn element_remove_attribute_node_ffi(obj: JsValue, attr: JsValue) -> JsValue = "(obj, attr) => obj.removeAttributeNode(attr)"

extern "js" fn element_attach_shadow_ffi(obj: JsValue, init: JsValue) -> JsValue = "(obj, init) => obj.attachShadow(init)"

extern "js" fn element_shadow_root_ffi(obj: JsValue) -> JsValue = "(obj) => obj.shadowRoot"

extern "js" fn element_custom_element_registry_ffi(obj: JsValue) -> JsValue = "(obj) => obj.customElementRegistry"

extern "js" fn element_closest_ffi(obj: JsValue, selectors: JsValue) -> JsValue = "(obj, selectors) => obj.closest(selectors)"

extern "js" fn element_matches_ffi(obj: JsValue, selectors: JsValue) -> JsValue = "(obj, selectors) => obj.matches(selectors)"

extern "js" fn element_webkit_matches_selector_ffi(obj: JsValue, selectors: JsValue) -> JsValue = "(obj, selectors) => obj.webkitMatchesSelector(selectors)"

extern "js" fn element_get_elements_by_tag_name_ffi(obj: JsValue, qualified_name: JsValue) -> JsValue = "(obj, qualified_name) => obj.getElementsByTagName(qualified_name)"

extern "js" fn element_get_elements_by_tag_name_ns_ffi(obj: JsValue, namespace_: JsValue, local_name: JsValue) -> JsValue = "(obj, namespace_, local_name) => obj.getElementsByTagNameNS(namespace_, local_name)"

extern "js" fn element_get_elements_by_class_name_ffi(obj: JsValue, class_names: JsValue) -> JsValue = "(obj, class_names) => obj.getElementsByClassName(class_names)"

extern "js" fn element_insert_adjacent_element_ffi(obj: JsValue, where_: JsValue, element: JsValue) -> JsValue = "(obj, where_, element) => obj.insertAdjacentElement(where_, element)"

extern "js" fn element_insert_adjacent_text_ffi(obj: JsValue, where_: JsValue, data: JsValue) -> Unit = "(obj, where_, data) => obj.insertAdjacentText(where_, data)"

extern "js" fn element_set_html_unsafe_ffi(obj: JsValue, html: JsValue) -> Unit = "(obj, html) => obj.setHTMLUnsafe(html)"

extern "js" fn element_get_html_ffi(obj: JsValue, options: JsValue) -> JsValue = "(obj, options) => obj.getHTML(options)"

extern "js" fn element_inner_html_ffi(obj: JsValue) -> JsValue = "(obj) => obj.innerHTML"

extern "js" fn element_set_inner_html_ffi(obj: JsValue, inner_html: JsValue) -> Unit = "(obj, innerHTML) => { obj.innerHTML = innerHTML; }"

extern "js" fn element_outer_html_ffi(obj: JsValue) -> JsValue = "(obj) => obj.outerHTML"

extern "js" fn element_set_outer_html_ffi(obj: JsValue, outer_html: JsValue) -> Unit = "(obj, outerHTML) => { obj.outerHTML = outerHTML; }"

extern "js" fn element_insert_adjacent_html_ffi(obj: JsValue, position: JsValue, string: JsValue) -> Unit = "(obj, position, string) => obj.insertAdjacentHTML(position, string)"

extern "js" fn element_get_client_rects_ffi(obj: JsValue) -> JsValue = "(obj) => obj.getClientRects()"

extern "js" fn element_get_bounding_client_rect_ffi(obj: JsValue) -> JsValue = "(obj) => obj.getBoundingClientRect()"

extern "js" fn element_check_visibility_ffi(obj: JsValue, options: JsValue) -> JsValue = "(obj, options) => obj.checkVisibility(options)"

extern "js" fn element_scroll_into_view_ffi(obj: JsValue, arg: JsValue) -> JsValue = "(obj, arg) => obj.scrollIntoView(arg)"

extern "js" fn element_scroll_ffi(obj: JsValue, options: JsValue) -> JsValue = "(obj, options) => obj.scroll(options)"

extern "js" fn element_scroll_2_ffi(obj: JsValue, x: JsValue, y: JsValue) -> JsValue = "(obj, x, y) => obj.scroll_2(x, y)"

extern "js" fn element_scroll_to_ffi(obj: JsValue, options: JsValue) -> JsValue = "(obj, options) => obj.scrollTo(options)"

extern "js" fn element_scroll_to_2_ffi(obj: JsValue, x: JsValue, y: JsValue) -> JsValue = "(obj, x, y) => obj.scrollTo_2(x, y)"

extern "js" fn element_scroll_by_ffi(obj: JsValue, options: JsValue) -> JsValue = "(obj, options) => obj.scrollBy(options)"

extern "js" fn element_scroll_by_2_ffi(obj: JsValue, x: JsValue, y: JsValue) -> JsValue = "(obj, x, y) => obj.scrollBy_2(x, y)"

extern "js" fn element_scroll_top_ffi(obj: JsValue) -> JsValue = "(obj) => obj.scrollTop"

extern "js" fn element_set_scroll_top_ffi(obj: JsValue, scroll_top: JsValue) -> Unit = "(obj, scrollTop) => { obj.scrollTop = scrollTop; }"

extern "js" fn element_scroll_left_ffi(obj: JsValue) -> JsValue = "(obj) => obj.scrollLeft"

extern "js" fn element_set_scroll_left_ffi(obj: JsValue, scroll_left: JsValue) -> Unit = "(obj, scrollLeft) => { obj.scrollLeft = scrollLeft; }"

extern "js" fn element_scroll_width_ffi(obj: JsValue) -> JsValue = "(obj) => obj.scrollWidth"

extern "js" fn element_scroll_height_ffi(obj: JsValue) -> JsValue = "(obj) => obj.scrollHeight"

extern "js" fn element_client_top_ffi(obj: JsValue) -> JsValue = "(obj) => obj.clientTop"

extern "js" fn element_client_left_ffi(obj: JsValue) -> JsValue = "(obj) => obj.clientLeft"

extern "js" fn element_client_width_ffi(obj: JsValue) -> JsValue = "(obj) => obj.clientWidth"

extern "js" fn element_client_height_ffi(obj: JsValue) -> JsValue = "(obj) => obj.clientHeight"

extern "js" fn element_current_css_zoom_ffi(obj: JsValue) -> JsValue = "(obj) => obj.currentCSSZoom"

extern "js" fn element_children_ffi(obj: JsValue) -> JsValue = "(obj) => obj.children"

extern "js" fn element_first_element_child_ffi(obj: JsValue) -> JsValue = "(obj) => obj.firstElementChild"

extern "js" fn element_last_element_child_ffi(obj: JsValue) -> JsValue = "(obj) => obj.lastElementChild"

extern "js" fn element_child_element_count_ffi(obj: JsValue) -> JsValue = "(obj) => obj.childElementCount"

extern "js" fn element_prepend_ffi(obj: JsValue, nodes: JsValue) -> Unit = "(obj, nodes) => obj.prepend(nodes)"

extern "js" fn element_append_ffi(obj: JsValue, nodes: JsValue) -> Unit = "(obj, nodes) => obj.append(nodes)"

extern "js" fn element_replace_children_ffi(obj: JsValue, nodes: JsValue) -> Unit = "(obj, nodes) => obj.replaceChildren(nodes)"

extern "js" fn element_move_before_ffi(obj: JsValue, node: JsValue, child: JsValue) -> Unit = "(obj, node, child) => obj.moveBefore(node, child)"

extern "js" fn element_query_selector_ffi(obj: JsValue, selectors: JsValue) -> JsValue = "(obj, selectors) => obj.querySelector(selectors)"

extern "js" fn element_query_selector_all_ffi(obj: JsValue, selectors: JsValue) -> JsValue = "(obj, selectors) => obj.querySelectorAll(selectors)"

extern "js" fn element_previous_element_sibling_ffi(obj: JsValue) -> JsValue = "(obj) => obj.previousElementSibling"

extern "js" fn element_next_element_sibling_ffi(obj: JsValue) -> JsValue = "(obj) => obj.nextElementSibling"

extern "js" fn element_before_ffi(obj: JsValue, nodes: JsValue) -> Unit = "(obj, nodes) => obj.before(nodes)"

extern "js" fn element_after_ffi(obj: JsValue, nodes: JsValue) -> Unit = "(obj, nodes) => obj.after(nodes)"

extern "js" fn element_replace_with_ffi(obj: JsValue, nodes: JsValue) -> Unit = "(obj, nodes) => obj.replaceWith(nodes)"

extern "js" fn element_remove_ffi(obj: JsValue) -> Unit = "(obj) => obj.remove()"

extern "js" fn element_assigned_slot_ffi(obj: JsValue) -> JsValue = "(obj) => obj.assignedSlot"

extern "js" fn element_get_box_quads_ffi(obj: JsValue, options: JsValue) -> JsValue = "(obj, options) => obj.getBoxQuads(options)"

extern "js" fn element_convert_quad_from_node_ffi(obj: JsValue, quad: JsValue, from: JsValue, options: JsValue) -> JsValue = "(obj, quad, from, options) => obj.convertQuadFromNode(quad, from, options)"

extern "js" fn element_convert_rect_from_node_ffi(obj: JsValue, rect: JsValue, from: JsValue, options: JsValue) -> JsValue = "(obj, rect, from, options) => obj.convertRectFromNode(rect, from, options)"

extern "js" fn element_convert_point_from_node_ffi(obj: JsValue, point: JsValue, from: JsValue, options: JsValue) -> JsValue = "(obj, point, from, options) => obj.convertPointFromNode(point, from, options)"