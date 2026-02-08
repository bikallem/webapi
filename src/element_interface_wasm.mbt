fn element_namespace_uri_ffi(obj: JsValue) -> JsValue = "webapi_Element" "get_namespaceURI"

fn element_prefix_ffi(obj: JsValue) -> JsValue = "webapi_Element" "get_prefix"

fn element_local_name_ffi(obj: JsValue) -> JsValue = "webapi_Element" "get_localName"

fn element_tag_name_ffi(obj: JsValue) -> JsValue = "webapi_Element" "get_tagName"

fn element_id_ffi(obj: JsValue) -> JsValue = "webapi_Element" "get_id"

fn element_set_id_ffi(obj: JsValue, id: JsValue) -> Unit = "webapi_Element" "set_id"

fn element_class_name_ffi(obj: JsValue) -> JsValue = "webapi_Element" "get_className"

fn element_set_class_name_ffi(obj: JsValue, class_name: JsValue) -> Unit = "webapi_Element" "set_className"

fn element_class_list_ffi(obj: JsValue) -> JsValue = "webapi_Element" "get_classList"

fn element_slot_ffi(obj: JsValue) -> JsValue = "webapi_Element" "get_slot"

fn element_set_slot_ffi(obj: JsValue, slot: JsValue) -> Unit = "webapi_Element" "set_slot"

fn element_has_attributes_ffi(obj: JsValue) -> JsValue = "webapi_Element" "hasAttributes"

fn element_attributes_ffi(obj: JsValue) -> JsValue = "webapi_Element" "get_attributes"

fn element_get_attribute_names_ffi(obj: JsValue) -> JsValue = "webapi_Element" "getAttributeNames"

fn element_get_attribute_ffi(obj: JsValue, qualified_name: JsValue) -> JsValue = "webapi_Element" "getAttribute"

fn element_get_attribute_ns_ffi(obj: JsValue, namespace_: JsValue, local_name: JsValue) -> JsValue = "webapi_Element" "getAttributeNS"

fn element_set_attribute_ffi(obj: JsValue, qualified_name: JsValue, value: JsValue) -> Unit = "webapi_Element" "setAttribute"

fn element_set_attribute_ns_ffi(obj: JsValue, namespace_: JsValue, qualified_name: JsValue, value: JsValue) -> Unit = "webapi_Element" "setAttributeNS"

fn element_remove_attribute_ffi(obj: JsValue, qualified_name: JsValue) -> Unit = "webapi_Element" "removeAttribute"

fn element_remove_attribute_ns_ffi(obj: JsValue, namespace_: JsValue, local_name: JsValue) -> Unit = "webapi_Element" "removeAttributeNS"

fn element_toggle_attribute_ffi(obj: JsValue, qualified_name: JsValue, force: JsValue) -> JsValue = "webapi_Element" "toggleAttribute"

fn element_has_attribute_ffi(obj: JsValue, qualified_name: JsValue) -> JsValue = "webapi_Element" "hasAttribute"

fn element_has_attribute_ns_ffi(obj: JsValue, namespace_: JsValue, local_name: JsValue) -> JsValue = "webapi_Element" "hasAttributeNS"

fn element_get_attribute_node_ffi(obj: JsValue, qualified_name: JsValue) -> JsValue = "webapi_Element" "getAttributeNode"

fn element_get_attribute_node_ns_ffi(obj: JsValue, namespace_: JsValue, local_name: JsValue) -> JsValue = "webapi_Element" "getAttributeNodeNS"

fn element_set_attribute_node_ffi(obj: JsValue, attr: JsValue) -> JsValue = "webapi_Element" "setAttributeNode"

fn element_set_attribute_node_ns_ffi(obj: JsValue, attr: JsValue) -> JsValue = "webapi_Element" "setAttributeNodeNS"

fn element_remove_attribute_node_ffi(obj: JsValue, attr: JsValue) -> JsValue = "webapi_Element" "removeAttributeNode"

fn element_attach_shadow_ffi(obj: JsValue, init: JsValue) -> JsValue = "webapi_Element" "attachShadow"

fn element_shadow_root_ffi(obj: JsValue) -> JsValue = "webapi_Element" "get_shadowRoot"

fn element_custom_element_registry_ffi(obj: JsValue) -> JsValue = "webapi_Element" "get_customElementRegistry"

fn element_closest_ffi(obj: JsValue, selectors: JsValue) -> JsValue = "webapi_Element" "closest"

fn element_matches_ffi(obj: JsValue, selectors: JsValue) -> JsValue = "webapi_Element" "matches"

fn element_webkit_matches_selector_ffi(obj: JsValue, selectors: JsValue) -> JsValue = "webapi_Element" "webkitMatchesSelector"

fn element_get_elements_by_tag_name_ffi(obj: JsValue, qualified_name: JsValue) -> JsValue = "webapi_Element" "getElementsByTagName"

fn element_get_elements_by_tag_name_ns_ffi(obj: JsValue, namespace_: JsValue, local_name: JsValue) -> JsValue = "webapi_Element" "getElementsByTagNameNS"

fn element_get_elements_by_class_name_ffi(obj: JsValue, class_names: JsValue) -> JsValue = "webapi_Element" "getElementsByClassName"

fn element_insert_adjacent_element_ffi(obj: JsValue, where_: JsValue, element: JsValue) -> JsValue = "webapi_Element" "insertAdjacentElement"

fn element_insert_adjacent_text_ffi(obj: JsValue, where_: JsValue, data: JsValue) -> Unit = "webapi_Element" "insertAdjacentText"

fn element_set_html_unsafe_ffi(obj: JsValue, html: JsValue) -> Unit = "webapi_Element" "setHTMLUnsafe"

fn element_get_html_ffi(obj: JsValue, options: JsValue) -> JsValue = "webapi_Element" "getHTML"

fn element_inner_html_ffi(obj: JsValue) -> JsValue = "webapi_Element" "get_innerHTML"

fn element_set_inner_html_ffi(obj: JsValue, inner_html: JsValue) -> Unit = "webapi_Element" "set_innerHTML"

fn element_outer_html_ffi(obj: JsValue) -> JsValue = "webapi_Element" "get_outerHTML"

fn element_set_outer_html_ffi(obj: JsValue, outer_html: JsValue) -> Unit = "webapi_Element" "set_outerHTML"

fn element_insert_adjacent_html_ffi(obj: JsValue, position: JsValue, string: JsValue) -> Unit = "webapi_Element" "insertAdjacentHTML"

fn element_get_client_rects_ffi(obj: JsValue) -> JsValue = "webapi_Element" "getClientRects"

fn element_get_bounding_client_rect_ffi(obj: JsValue) -> JsValue = "webapi_Element" "getBoundingClientRect"

fn element_check_visibility_ffi(obj: JsValue, options: JsValue) -> JsValue = "webapi_Element" "checkVisibility"

fn element_scroll_into_view_ffi(obj: JsValue, arg: JsValue) -> JsValue = "webapi_Element" "scrollIntoView"

fn element_scroll_ffi(obj: JsValue, options: JsValue) -> JsValue = "webapi_Element" "scroll"

fn element_scroll_2_ffi(obj: JsValue, x: JsValue, y: JsValue) -> JsValue = "webapi_Element" "scroll_2"

fn element_scroll_to_ffi(obj: JsValue, options: JsValue) -> JsValue = "webapi_Element" "scrollTo"

fn element_scroll_to_2_ffi(obj: JsValue, x: JsValue, y: JsValue) -> JsValue = "webapi_Element" "scrollTo_2"

fn element_scroll_by_ffi(obj: JsValue, options: JsValue) -> JsValue = "webapi_Element" "scrollBy"

fn element_scroll_by_2_ffi(obj: JsValue, x: JsValue, y: JsValue) -> JsValue = "webapi_Element" "scrollBy_2"

fn element_scroll_top_ffi(obj: JsValue) -> JsValue = "webapi_Element" "get_scrollTop"

fn element_set_scroll_top_ffi(obj: JsValue, scroll_top: JsValue) -> Unit = "webapi_Element" "set_scrollTop"

fn element_scroll_left_ffi(obj: JsValue) -> JsValue = "webapi_Element" "get_scrollLeft"

fn element_set_scroll_left_ffi(obj: JsValue, scroll_left: JsValue) -> Unit = "webapi_Element" "set_scrollLeft"

fn element_scroll_width_ffi(obj: JsValue) -> JsValue = "webapi_Element" "get_scrollWidth"

fn element_scroll_height_ffi(obj: JsValue) -> JsValue = "webapi_Element" "get_scrollHeight"

fn element_client_top_ffi(obj: JsValue) -> JsValue = "webapi_Element" "get_clientTop"

fn element_client_left_ffi(obj: JsValue) -> JsValue = "webapi_Element" "get_clientLeft"

fn element_client_width_ffi(obj: JsValue) -> JsValue = "webapi_Element" "get_clientWidth"

fn element_client_height_ffi(obj: JsValue) -> JsValue = "webapi_Element" "get_clientHeight"

fn element_current_css_zoom_ffi(obj: JsValue) -> JsValue = "webapi_Element" "get_currentCSSZoom"

fn element_children_ffi(obj: JsValue) -> JsValue = "webapi_Element" "get_children"

fn element_first_element_child_ffi(obj: JsValue) -> JsValue = "webapi_Element" "get_firstElementChild"

fn element_last_element_child_ffi(obj: JsValue) -> JsValue = "webapi_Element" "get_lastElementChild"

fn element_child_element_count_ffi(obj: JsValue) -> JsValue = "webapi_Element" "get_childElementCount"

fn element_prepend_ffi(obj: JsValue, nodes: JsValue) -> Unit = "webapi_Element" "prepend"

fn element_append_ffi(obj: JsValue, nodes: JsValue) -> Unit = "webapi_Element" "append"

fn element_replace_children_ffi(obj: JsValue, nodes: JsValue) -> Unit = "webapi_Element" "replaceChildren"

fn element_move_before_ffi(obj: JsValue, node: JsValue, child: JsValue) -> Unit = "webapi_Element" "moveBefore"

fn element_query_selector_ffi(obj: JsValue, selectors: JsValue) -> JsValue = "webapi_Element" "querySelector"

fn element_query_selector_all_ffi(obj: JsValue, selectors: JsValue) -> JsValue = "webapi_Element" "querySelectorAll"

fn element_previous_element_sibling_ffi(obj: JsValue) -> JsValue = "webapi_Element" "get_previousElementSibling"

fn element_next_element_sibling_ffi(obj: JsValue) -> JsValue = "webapi_Element" "get_nextElementSibling"

fn element_before_ffi(obj: JsValue, nodes: JsValue) -> Unit = "webapi_Element" "before"

fn element_after_ffi(obj: JsValue, nodes: JsValue) -> Unit = "webapi_Element" "after"

fn element_replace_with_ffi(obj: JsValue, nodes: JsValue) -> Unit = "webapi_Element" "replaceWith"

fn element_remove_ffi(obj: JsValue) -> Unit = "webapi_Element" "remove"

fn element_assigned_slot_ffi(obj: JsValue) -> JsValue = "webapi_Element" "get_assignedSlot"

fn element_get_box_quads_ffi(obj: JsValue, options: JsValue) -> JsValue = "webapi_Element" "getBoxQuads"

fn element_convert_quad_from_node_ffi(obj: JsValue, quad: JsValue, from: JsValue, options: JsValue) -> JsValue = "webapi_Element" "convertQuadFromNode"

fn element_convert_rect_from_node_ffi(obj: JsValue, rect: JsValue, from: JsValue, options: JsValue) -> JsValue = "webapi_Element" "convertRectFromNode"

fn element_convert_point_from_node_ffi(obj: JsValue, point: JsValue, from: JsValue, options: JsValue) -> JsValue = "webapi_Element" "convertPointFromNode"