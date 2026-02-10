///|
fn document_new_ffi() -> Document = "webapi_Document" "new"

///|
fn document_root_element_ffi(obj : JsValue) -> SVGSVGElement = "webapi_Document" "get_rootElement"

///|
fn document_implementation_ffi(obj : JsValue) -> DOMImplementation = "webapi_Document" "get_implementation"

///|
fn document_url_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_URL"

///|
fn document_url_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_url_ffi_wasm(obj))
}

///|
fn document_document_uri_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_documentURI"

///|
fn document_document_uri_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_document_uri_ffi_wasm(obj))
}

///|
fn document_compat_mode_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_compatMode"

///|
fn document_compat_mode_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_compat_mode_ffi_wasm(obj))
}

///|
fn document_character_set_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_characterSet"

///|
fn document_character_set_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_character_set_ffi_wasm(obj))
}

///|
fn document_charset_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_charset"

///|
fn document_charset_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_charset_ffi_wasm(obj))
}

///|
fn document_input_encoding_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_inputEncoding"

///|
fn document_input_encoding_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_input_encoding_ffi_wasm(obj))
}

///|
fn document_content_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_contentType"

///|
fn document_content_type_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_content_type_ffi_wasm(obj))
}

///|
fn document_doctype_ffi(obj : JsValue) -> DocumentType = "webapi_Document" "get_doctype"

///|
fn document_document_element_ffi(obj : JsValue) -> Element = "webapi_Document" "get_documentElement"

///|
fn document_get_elements_by_tag_name_ffi(
  obj : JsValue,
  qualified_name : JsValue,
) -> HTMLCollection = "webapi_Document" "getElementsByTagName"

///|
fn document_get_elements_by_tag_name_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> HTMLCollection = "webapi_Document" "getElementsByTagNameNS"

///|
fn document_get_elements_by_class_name_ffi(
  obj : JsValue,
  class_names : JsValue,
) -> HTMLCollection = "webapi_Document" "getElementsByClassName"

///|
fn document_create_element_ffi(
  obj : JsValue,
  local_name : JsValue,
  options : JsValue,
) -> Element = "webapi_Document" "createElement"

///|
fn document_create_element_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  qualified_name : JsValue,
  options : JsValue,
) -> Element = "webapi_Document" "createElementNS"

///|
fn document_create_document_fragment_ffi(obj : JsValue) -> DocumentFragment = "webapi_Document" "createDocumentFragment"

///|
fn document_create_text_node_ffi(obj : JsValue, data : JsValue) -> Text = "webapi_Document" "createTextNode"

///|
fn document_create_cdata_section_ffi(
  obj : JsValue,
  data : JsValue,
) -> CDATASection = "webapi_Document" "createCDATASection"

///|
fn document_create_comment_ffi(obj : JsValue, data : JsValue) -> Comment = "webapi_Document" "createComment"

///|
fn document_create_processing_instruction_ffi(
  obj : JsValue,
  target : JsValue,
  data : JsValue,
) -> ProcessingInstruction = "webapi_Document" "createProcessingInstruction"

///|
fn document_import_node_ffi(
  obj : JsValue,
  node : JsValue,
  options : JsValue,
) -> Node = "webapi_Document" "importNode"

///|
fn document_adopt_node_ffi(obj : JsValue, node : JsValue) -> Node = "webapi_Document" "adoptNode"

///|
fn document_create_attribute_ffi(obj : JsValue, local_name : JsValue) -> Attr = "webapi_Document" "createAttribute"

///|
fn document_create_attribute_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  qualified_name : JsValue,
) -> Attr = "webapi_Document" "createAttributeNS"

///|
fn document_create_event_ffi(obj : JsValue, interface : JsValue) -> Event = "webapi_Document" "createEvent"

///|
fn document_create_range_ffi(obj : JsValue) -> Range = "webapi_Document" "createRange"

///|
fn document_create_node_iterator_ffi(
  obj : JsValue,
  root : JsValue,
  what_to_show : JsValue,
  filter : JsValue,
) -> NodeIterator = "webapi_Document" "createNodeIterator"

///|
fn document_create_tree_walker_ffi(
  obj : JsValue,
  root : JsValue,
  what_to_show : JsValue,
  filter : JsValue,
) -> TreeWalker = "webapi_Document" "createTreeWalker"

///|
fn document_parse_html_unsafe_ffi(html : JsValue) -> Document = "webapi_Document" "parseHTMLUnsafe"

///|
fn document_location_ffi(obj : JsValue) -> Location = "webapi_Document" "get_location"

///|
fn document_domain_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_domain"

///|
fn document_domain_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_domain_ffi_wasm(obj))
}

///|
fn document_set_domain_ffi(obj : JsValue, domain : JsValue) -> Unit = "webapi_Document" "set_domain"

///|
fn document_referrer_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_referrer"

///|
fn document_referrer_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_referrer_ffi_wasm(obj))
}

///|
fn document_cookie_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_cookie"

///|
fn document_cookie_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_cookie_ffi_wasm(obj))
}

///|
fn document_set_cookie_ffi(obj : JsValue, cookie : JsValue) -> Unit = "webapi_Document" "set_cookie"

///|
fn document_last_modified_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_lastModified"

///|
fn document_last_modified_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_last_modified_ffi_wasm(obj))
}

///|
fn document_ready_state_ffi(obj : JsValue) -> DocumentReadyState = "webapi_Document" "get_readyState"

///|
fn document_get_ffi(obj : JsValue, name : JsValue) -> JsValue = "webapi_Document" "get"

///|
fn document_title_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_title"

///|
fn document_title_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_title_ffi_wasm(obj))
}

///|
fn document_set_title_ffi(obj : JsValue, title : JsValue) -> Unit = "webapi_Document" "set_title"

///|
fn document_dir_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_dir"

///|
fn document_dir_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_dir_ffi_wasm(obj))
}

///|
fn document_set_dir_ffi(obj : JsValue, dir : JsValue) -> Unit = "webapi_Document" "set_dir"

///|
fn document_body_ffi(obj : JsValue) -> HTMLElement = "webapi_Document" "get_body"

///|
fn document_set_body_ffi(obj : JsValue, body : JsValue) -> Unit = "webapi_Document" "set_body"

///|
fn document_head_ffi(obj : JsValue) -> HTMLHeadElement = "webapi_Document" "get_head"

///|
fn document_images_ffi(obj : JsValue) -> HTMLCollection = "webapi_Document" "get_images"

///|
fn document_embeds_ffi(obj : JsValue) -> HTMLCollection = "webapi_Document" "get_embeds"

///|
fn document_plugins_ffi(obj : JsValue) -> HTMLCollection = "webapi_Document" "get_plugins"

///|
fn document_links_ffi(obj : JsValue) -> HTMLCollection = "webapi_Document" "get_links"

///|
fn document_forms_ffi(obj : JsValue) -> HTMLCollection = "webapi_Document" "get_forms"

///|
fn document_scripts_ffi(obj : JsValue) -> HTMLCollection = "webapi_Document" "get_scripts"

///|
fn document_get_elements_by_name_ffi(
  obj : JsValue,
  element_name : JsValue,
) -> NodeList = "webapi_Document" "getElementsByName"

///|
fn document_current_script_ffi(obj : JsValue) -> HTMLOrSVGScriptElement = "webapi_Document" "get_currentScript"

///|
fn document_open_ffi(
  obj : JsValue,
  unused1 : JsValue,
  unused2 : JsValue,
) -> Document = "webapi_Document" "open"

///|
fn document_open_2_ffi(
  obj : JsValue,
  url : JsValue,
  name : JsValue,
  features : JsValue,
) -> JsValue = "webapi_Document" "open_2"

///|
fn document_close_ffi(obj : JsValue) -> Unit = "webapi_Document" "close"

///|
fn document_write_ffi(obj : JsValue, text : JsValue) -> Unit = "webapi_Document" "write"

///|
fn document_writeln_ffi(obj : JsValue, text : JsValue) -> Unit = "webapi_Document" "writeln"

///|
fn document_default_view_ffi(obj : JsValue) -> WindowProxy = "webapi_Document" "get_defaultView"

///|
fn document_has_focus_ffi(obj : JsValue) -> Bool = "webapi_Document" "hasFocus"

///|
fn document_design_mode_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_designMode"

///|
fn document_design_mode_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_design_mode_ffi_wasm(obj))
}

///|
fn document_set_design_mode_ffi(obj : JsValue, design_mode : JsValue) -> Unit = "webapi_Document" "set_designMode"

///|
fn document_exec_command_ffi(
  obj : JsValue,
  command_id : JsValue,
  show_ui : JsValue,
  value : JsValue,
) -> Bool = "webapi_Document" "execCommand"

///|
fn document_query_command_enabled_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> Bool = "webapi_Document" "queryCommandEnabled"

///|
fn document_query_command_indeterm_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> Bool = "webapi_Document" "queryCommandIndeterm"

///|
fn document_query_command_state_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> Bool = "webapi_Document" "queryCommandState"

///|
fn document_query_command_supported_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> Bool = "webapi_Document" "queryCommandSupported"

///|
fn document_query_command_value_ffi_wasm(
  obj : JsValue,
  command_id : JsValue,
) -> JsValue = "webapi_Document" "queryCommandValue"

///|
fn document_query_command_value_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> String {
  jsvalue_to_string(document_query_command_value_ffi_wasm(obj, command_id))
}

///|
fn document_hidden_ffi(obj : JsValue) -> Bool = "webapi_Document" "get_hidden"

///|
fn document_visibility_state_ffi(obj : JsValue) -> DocumentVisibilityState = "webapi_Document" "get_visibilityState"

///|
fn document_onreadystatechange_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onreadystatechange"

///|
fn document_set_onreadystatechange_ffi(
  obj : JsValue,
  onreadystatechange : JsValue,
) -> Unit = "webapi_Document" "set_onreadystatechange"

///|
fn document_onvisibilitychange_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onvisibilitychange"

///|
fn document_set_onvisibilitychange_ffi(
  obj : JsValue,
  onvisibilitychange : JsValue,
) -> Unit = "webapi_Document" "set_onvisibilitychange"

///|
fn document_fg_color_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_fgColor"

///|
fn document_fg_color_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_fg_color_ffi_wasm(obj))
}

///|
fn document_set_fg_color_ffi(obj : JsValue, fg_color : JsValue) -> Unit = "webapi_Document" "set_fgColor"

///|
fn document_link_color_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_linkColor"

///|
fn document_link_color_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_link_color_ffi_wasm(obj))
}

///|
fn document_set_link_color_ffi(obj : JsValue, link_color : JsValue) -> Unit = "webapi_Document" "set_linkColor"

///|
fn document_vlink_color_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_vlinkColor"

///|
fn document_vlink_color_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_vlink_color_ffi_wasm(obj))
}

///|
fn document_set_vlink_color_ffi(obj : JsValue, vlink_color : JsValue) -> Unit = "webapi_Document" "set_vlinkColor"

///|
fn document_alink_color_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_alinkColor"

///|
fn document_alink_color_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_alink_color_ffi_wasm(obj))
}

///|
fn document_set_alink_color_ffi(obj : JsValue, alink_color : JsValue) -> Unit = "webapi_Document" "set_alinkColor"

///|
fn document_bg_color_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "get_bgColor"

///|
fn document_bg_color_ffi(obj : JsValue) -> String {
  jsvalue_to_string(document_bg_color_ffi_wasm(obj))
}

///|
fn document_set_bg_color_ffi(obj : JsValue, bg_color : JsValue) -> Unit = "webapi_Document" "set_bgColor"

///|
fn document_anchors_ffi(obj : JsValue) -> HTMLCollection = "webapi_Document" "get_anchors"

///|
fn document_applets_ffi(obj : JsValue) -> HTMLCollection = "webapi_Document" "get_applets"

///|
fn document_clear_ffi(obj : JsValue) -> Unit = "webapi_Document" "clear"

///|
fn document_capture_events_ffi(obj : JsValue) -> Unit = "webapi_Document" "captureEvents"

///|
fn document_release_events_ffi(obj : JsValue) -> Unit = "webapi_Document" "releaseEvents"

///|
fn document_all_ffi(obj : JsValue) -> HTMLAllCollection = "webapi_Document" "get_all"

///|
fn document_element_from_point_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "webapi_Document" "elementFromPoint"

///|
fn document_elements_from_point_ffi_wasm(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "webapi_Document" "elementsFromPoint"

///|
fn document_elements_from_point_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Array[Element] {
  document_elements_from_point_ffi_wasm(obj, x, y).unsafe_cast()
}

///|
fn document_caret_position_from_point_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  options : JsValue,
) -> JsValue = "webapi_Document" "caretPositionFromPoint"

///|
fn document_scrolling_element_ffi(obj : JsValue) -> Element = "webapi_Document" "get_scrollingElement"

///|
fn document_fullscreen_enabled_ffi(obj : JsValue) -> Bool = "webapi_Document" "get_fullscreenEnabled"

///|
fn document_fullscreen_ffi(obj : JsValue) -> Bool = "webapi_Document" "get_fullscreen"

///|
fn document_exit_fullscreen_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Document" "exitFullscreen"

///|
fn document_exit_fullscreen_ffi(obj : JsValue) -> @js_async.Promise[Unit] {
  document_exit_fullscreen_ffi_wasm(obj).unsafe_cast()
}

///|
fn document_onfullscreenchange_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onfullscreenchange"

///|
fn document_set_onfullscreenchange_ffi(
  obj : JsValue,
  onfullscreenchange : JsValue,
) -> Unit = "webapi_Document" "set_onfullscreenchange"

///|
fn document_onfullscreenerror_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onfullscreenerror"

///|
fn document_set_onfullscreenerror_ffi(
  obj : JsValue,
  onfullscreenerror : JsValue,
) -> Unit = "webapi_Document" "set_onfullscreenerror"

///|
fn document_get_selection_ffi(obj : JsValue) -> JsValue = "webapi_Document" "getSelection"

///|
fn document_get_element_by_id_ffi(
  obj : JsValue,
  element_id : JsValue,
) -> JsValue = "webapi_Document" "getElementById"

///|
fn document_custom_element_registry_ffi(obj : JsValue) -> CustomElementRegistry = "webapi_Document" "get_customElementRegistry"

///|
fn document_active_element_ffi(obj : JsValue) -> Element = "webapi_Document" "get_activeElement"

///|
fn document_style_sheets_ffi(obj : JsValue) -> StyleSheetList = "webapi_Document" "get_styleSheets"

///|
fn document_adopted_style_sheets_ffi(obj : JsValue) -> JsValue = "webapi_Document" "get_adoptedStyleSheets"

///|
fn document_set_adopted_style_sheets_ffi(
  obj : JsValue,
  adopted_style_sheets : JsValue,
) -> Unit = "webapi_Document" "set_adoptedStyleSheets"

///|
fn document_fullscreen_element_ffi(obj : JsValue) -> Element = "webapi_Document" "get_fullscreenElement"

///|
fn document_children_ffi(obj : JsValue) -> HTMLCollection = "webapi_Document" "get_children"

///|
fn document_first_element_child_ffi(obj : JsValue) -> Element = "webapi_Document" "get_firstElementChild"

///|
fn document_last_element_child_ffi(obj : JsValue) -> Element = "webapi_Document" "get_lastElementChild"

///|
fn document_child_element_count_ffi(obj : JsValue) -> UInt = "webapi_Document" "get_childElementCount"

///|
fn document_prepend_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_Document" "prepend"

///|
fn document_append_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_Document" "append"

///|
fn document_replace_children_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_Document" "replaceChildren"

///|
fn document_move_before_ffi(
  obj : JsValue,
  node : JsValue,
  child : JsValue,
) -> Unit = "webapi_Document" "moveBefore"

///|
fn document_query_selector_ffi(obj : JsValue, selectors : JsValue) -> JsValue = "webapi_Document" "querySelector"

///|
fn document_query_selector_all_ffi(
  obj : JsValue,
  selectors : JsValue,
) -> NodeList = "webapi_Document" "querySelectorAll"

///|
fn document_create_expression_ffi(
  obj : JsValue,
  expression : JsValue,
  resolver : JsValue,
) -> XPathExpression = "webapi_Document" "createExpression"

///|
fn document_create_ns_resolver_ffi(
  obj : JsValue,
  node_resolver : JsValue,
) -> Node = "webapi_Document" "createNSResolver"

///|
fn document_evaluate_ffi(
  obj : JsValue,
  expression : JsValue,
  context_node : JsValue,
  resolver : JsValue,
  type_ : JsValue,
  result : JsValue,
) -> XPathResult = "webapi_Document" "evaluate"

///|
fn document_onabort_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onabort"

///|
fn document_set_onabort_ffi(obj : JsValue, onabort : JsValue) -> Unit = "webapi_Document" "set_onabort"

///|
fn document_onauxclick_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onauxclick"

///|
fn document_set_onauxclick_ffi(obj : JsValue, onauxclick : JsValue) -> Unit = "webapi_Document" "set_onauxclick"

///|
fn document_onbeforeinput_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onbeforeinput"

///|
fn document_set_onbeforeinput_ffi(
  obj : JsValue,
  onbeforeinput : JsValue,
) -> Unit = "webapi_Document" "set_onbeforeinput"

///|
fn document_onbeforematch_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onbeforematch"

///|
fn document_set_onbeforematch_ffi(
  obj : JsValue,
  onbeforematch : JsValue,
) -> Unit = "webapi_Document" "set_onbeforematch"

///|
fn document_onbeforetoggle_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onbeforetoggle"

///|
fn document_set_onbeforetoggle_ffi(
  obj : JsValue,
  onbeforetoggle : JsValue,
) -> Unit = "webapi_Document" "set_onbeforetoggle"

///|
fn document_onblur_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onblur"

///|
fn document_set_onblur_ffi(obj : JsValue, onblur : JsValue) -> Unit = "webapi_Document" "set_onblur"

///|
fn document_oncancel_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_oncancel"

///|
fn document_set_oncancel_ffi(obj : JsValue, oncancel : JsValue) -> Unit = "webapi_Document" "set_oncancel"

///|
fn document_oncanplay_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_oncanplay"

///|
fn document_set_oncanplay_ffi(obj : JsValue, oncanplay : JsValue) -> Unit = "webapi_Document" "set_oncanplay"

///|
fn document_oncanplaythrough_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_oncanplaythrough"

///|
fn document_set_oncanplaythrough_ffi(
  obj : JsValue,
  oncanplaythrough : JsValue,
) -> Unit = "webapi_Document" "set_oncanplaythrough"

///|
fn document_onchange_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onchange"

///|
fn document_set_onchange_ffi(obj : JsValue, onchange : JsValue) -> Unit = "webapi_Document" "set_onchange"

///|
fn document_onclick_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onclick"

///|
fn document_set_onclick_ffi(obj : JsValue, onclick : JsValue) -> Unit = "webapi_Document" "set_onclick"

///|
fn document_onclose_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onclose"

///|
fn document_set_onclose_ffi(obj : JsValue, onclose : JsValue) -> Unit = "webapi_Document" "set_onclose"

///|
fn document_oncommand_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_oncommand"

///|
fn document_set_oncommand_ffi(obj : JsValue, oncommand : JsValue) -> Unit = "webapi_Document" "set_oncommand"

///|
fn document_oncontextlost_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_oncontextlost"

///|
fn document_set_oncontextlost_ffi(
  obj : JsValue,
  oncontextlost : JsValue,
) -> Unit = "webapi_Document" "set_oncontextlost"

///|
fn document_oncontextmenu_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_oncontextmenu"

///|
fn document_set_oncontextmenu_ffi(
  obj : JsValue,
  oncontextmenu : JsValue,
) -> Unit = "webapi_Document" "set_oncontextmenu"

///|
fn document_oncontextrestored_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_oncontextrestored"

///|
fn document_set_oncontextrestored_ffi(
  obj : JsValue,
  oncontextrestored : JsValue,
) -> Unit = "webapi_Document" "set_oncontextrestored"

///|
fn document_oncopy_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_oncopy"

///|
fn document_set_oncopy_ffi(obj : JsValue, oncopy : JsValue) -> Unit = "webapi_Document" "set_oncopy"

///|
fn document_oncuechange_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_oncuechange"

///|
fn document_set_oncuechange_ffi(obj : JsValue, oncuechange : JsValue) -> Unit = "webapi_Document" "set_oncuechange"

///|
fn document_oncut_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_oncut"

///|
fn document_set_oncut_ffi(obj : JsValue, oncut : JsValue) -> Unit = "webapi_Document" "set_oncut"

///|
fn document_ondblclick_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_ondblclick"

///|
fn document_set_ondblclick_ffi(obj : JsValue, ondblclick : JsValue) -> Unit = "webapi_Document" "set_ondblclick"

///|
fn document_ondrag_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_ondrag"

///|
fn document_set_ondrag_ffi(obj : JsValue, ondrag : JsValue) -> Unit = "webapi_Document" "set_ondrag"

///|
fn document_ondragend_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_ondragend"

///|
fn document_set_ondragend_ffi(obj : JsValue, ondragend : JsValue) -> Unit = "webapi_Document" "set_ondragend"

///|
fn document_ondragenter_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_ondragenter"

///|
fn document_set_ondragenter_ffi(obj : JsValue, ondragenter : JsValue) -> Unit = "webapi_Document" "set_ondragenter"

///|
fn document_ondragleave_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_ondragleave"

///|
fn document_set_ondragleave_ffi(obj : JsValue, ondragleave : JsValue) -> Unit = "webapi_Document" "set_ondragleave"

///|
fn document_ondragover_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_ondragover"

///|
fn document_set_ondragover_ffi(obj : JsValue, ondragover : JsValue) -> Unit = "webapi_Document" "set_ondragover"

///|
fn document_ondragstart_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_ondragstart"

///|
fn document_set_ondragstart_ffi(obj : JsValue, ondragstart : JsValue) -> Unit = "webapi_Document" "set_ondragstart"

///|
fn document_ondrop_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_ondrop"

///|
fn document_set_ondrop_ffi(obj : JsValue, ondrop : JsValue) -> Unit = "webapi_Document" "set_ondrop"

///|
fn document_ondurationchange_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_ondurationchange"

///|
fn document_set_ondurationchange_ffi(
  obj : JsValue,
  ondurationchange : JsValue,
) -> Unit = "webapi_Document" "set_ondurationchange"

///|
fn document_onemptied_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onemptied"

///|
fn document_set_onemptied_ffi(obj : JsValue, onemptied : JsValue) -> Unit = "webapi_Document" "set_onemptied"

///|
fn document_onended_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onended"

///|
fn document_set_onended_ffi(obj : JsValue, onended : JsValue) -> Unit = "webapi_Document" "set_onended"

///|
fn document_onerror_ffi(obj : JsValue) -> OnErrorEventHandler = "webapi_Document" "get_onerror"

///|
fn document_set_onerror_ffi(obj : JsValue, onerror : JsValue) -> Unit = "webapi_Document" "set_onerror"

///|
fn document_onfocus_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onfocus"

///|
fn document_set_onfocus_ffi(obj : JsValue, onfocus : JsValue) -> Unit = "webapi_Document" "set_onfocus"

///|
fn document_onformdata_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onformdata"

///|
fn document_set_onformdata_ffi(obj : JsValue, onformdata : JsValue) -> Unit = "webapi_Document" "set_onformdata"

///|
fn document_oninput_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_oninput"

///|
fn document_set_oninput_ffi(obj : JsValue, oninput : JsValue) -> Unit = "webapi_Document" "set_oninput"

///|
fn document_oninvalid_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_oninvalid"

///|
fn document_set_oninvalid_ffi(obj : JsValue, oninvalid : JsValue) -> Unit = "webapi_Document" "set_oninvalid"

///|
fn document_onkeydown_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onkeydown"

///|
fn document_set_onkeydown_ffi(obj : JsValue, onkeydown : JsValue) -> Unit = "webapi_Document" "set_onkeydown"

///|
fn document_onkeypress_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onkeypress"

///|
fn document_set_onkeypress_ffi(obj : JsValue, onkeypress : JsValue) -> Unit = "webapi_Document" "set_onkeypress"

///|
fn document_onkeyup_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onkeyup"

///|
fn document_set_onkeyup_ffi(obj : JsValue, onkeyup : JsValue) -> Unit = "webapi_Document" "set_onkeyup"

///|
fn document_onload_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onload"

///|
fn document_set_onload_ffi(obj : JsValue, onload : JsValue) -> Unit = "webapi_Document" "set_onload"

///|
fn document_onloadeddata_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onloadeddata"

///|
fn document_set_onloadeddata_ffi(obj : JsValue, onloadeddata : JsValue) -> Unit = "webapi_Document" "set_onloadeddata"

///|
fn document_onloadedmetadata_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onloadedmetadata"

///|
fn document_set_onloadedmetadata_ffi(
  obj : JsValue,
  onloadedmetadata : JsValue,
) -> Unit = "webapi_Document" "set_onloadedmetadata"

///|
fn document_onloadstart_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onloadstart"

///|
fn document_set_onloadstart_ffi(obj : JsValue, onloadstart : JsValue) -> Unit = "webapi_Document" "set_onloadstart"

///|
fn document_onmousedown_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onmousedown"

///|
fn document_set_onmousedown_ffi(obj : JsValue, onmousedown : JsValue) -> Unit = "webapi_Document" "set_onmousedown"

///|
fn document_onmouseenter_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onmouseenter"

///|
fn document_set_onmouseenter_ffi(obj : JsValue, onmouseenter : JsValue) -> Unit = "webapi_Document" "set_onmouseenter"

///|
fn document_onmouseleave_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onmouseleave"

///|
fn document_set_onmouseleave_ffi(obj : JsValue, onmouseleave : JsValue) -> Unit = "webapi_Document" "set_onmouseleave"

///|
fn document_onmousemove_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onmousemove"

///|
fn document_set_onmousemove_ffi(obj : JsValue, onmousemove : JsValue) -> Unit = "webapi_Document" "set_onmousemove"

///|
fn document_onmouseout_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onmouseout"

///|
fn document_set_onmouseout_ffi(obj : JsValue, onmouseout : JsValue) -> Unit = "webapi_Document" "set_onmouseout"

///|
fn document_onmouseover_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onmouseover"

///|
fn document_set_onmouseover_ffi(obj : JsValue, onmouseover : JsValue) -> Unit = "webapi_Document" "set_onmouseover"

///|
fn document_onmouseup_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onmouseup"

///|
fn document_set_onmouseup_ffi(obj : JsValue, onmouseup : JsValue) -> Unit = "webapi_Document" "set_onmouseup"

///|
fn document_onpaste_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onpaste"

///|
fn document_set_onpaste_ffi(obj : JsValue, onpaste : JsValue) -> Unit = "webapi_Document" "set_onpaste"

///|
fn document_onpause_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onpause"

///|
fn document_set_onpause_ffi(obj : JsValue, onpause : JsValue) -> Unit = "webapi_Document" "set_onpause"

///|
fn document_onplay_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onplay"

///|
fn document_set_onplay_ffi(obj : JsValue, onplay : JsValue) -> Unit = "webapi_Document" "set_onplay"

///|
fn document_onplaying_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onplaying"

///|
fn document_set_onplaying_ffi(obj : JsValue, onplaying : JsValue) -> Unit = "webapi_Document" "set_onplaying"

///|
fn document_onprogress_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onprogress"

///|
fn document_set_onprogress_ffi(obj : JsValue, onprogress : JsValue) -> Unit = "webapi_Document" "set_onprogress"

///|
fn document_onratechange_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onratechange"

///|
fn document_set_onratechange_ffi(obj : JsValue, onratechange : JsValue) -> Unit = "webapi_Document" "set_onratechange"

///|
fn document_onreset_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onreset"

///|
fn document_set_onreset_ffi(obj : JsValue, onreset : JsValue) -> Unit = "webapi_Document" "set_onreset"

///|
fn document_onresize_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onresize"

///|
fn document_set_onresize_ffi(obj : JsValue, onresize : JsValue) -> Unit = "webapi_Document" "set_onresize"

///|
fn document_onscroll_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onscroll"

///|
fn document_set_onscroll_ffi(obj : JsValue, onscroll : JsValue) -> Unit = "webapi_Document" "set_onscroll"

///|
fn document_onscrollend_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onscrollend"

///|
fn document_set_onscrollend_ffi(obj : JsValue, onscrollend : JsValue) -> Unit = "webapi_Document" "set_onscrollend"

///|
fn document_onsecuritypolicyviolation_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onsecuritypolicyviolation"

///|
fn document_set_onsecuritypolicyviolation_ffi(
  obj : JsValue,
  onsecuritypolicyviolation : JsValue,
) -> Unit = "webapi_Document" "set_onsecuritypolicyviolation"

///|
fn document_onseeked_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onseeked"

///|
fn document_set_onseeked_ffi(obj : JsValue, onseeked : JsValue) -> Unit = "webapi_Document" "set_onseeked"

///|
fn document_onseeking_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onseeking"

///|
fn document_set_onseeking_ffi(obj : JsValue, onseeking : JsValue) -> Unit = "webapi_Document" "set_onseeking"

///|
fn document_onselect_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onselect"

///|
fn document_set_onselect_ffi(obj : JsValue, onselect : JsValue) -> Unit = "webapi_Document" "set_onselect"

///|
fn document_onslotchange_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onslotchange"

///|
fn document_set_onslotchange_ffi(obj : JsValue, onslotchange : JsValue) -> Unit = "webapi_Document" "set_onslotchange"

///|
fn document_onstalled_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onstalled"

///|
fn document_set_onstalled_ffi(obj : JsValue, onstalled : JsValue) -> Unit = "webapi_Document" "set_onstalled"

///|
fn document_onsubmit_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onsubmit"

///|
fn document_set_onsubmit_ffi(obj : JsValue, onsubmit : JsValue) -> Unit = "webapi_Document" "set_onsubmit"

///|
fn document_onsuspend_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onsuspend"

///|
fn document_set_onsuspend_ffi(obj : JsValue, onsuspend : JsValue) -> Unit = "webapi_Document" "set_onsuspend"

///|
fn document_ontimeupdate_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_ontimeupdate"

///|
fn document_set_ontimeupdate_ffi(obj : JsValue, ontimeupdate : JsValue) -> Unit = "webapi_Document" "set_ontimeupdate"

///|
fn document_ontoggle_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_ontoggle"

///|
fn document_set_ontoggle_ffi(obj : JsValue, ontoggle : JsValue) -> Unit = "webapi_Document" "set_ontoggle"

///|
fn document_onvolumechange_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onvolumechange"

///|
fn document_set_onvolumechange_ffi(
  obj : JsValue,
  onvolumechange : JsValue,
) -> Unit = "webapi_Document" "set_onvolumechange"

///|
fn document_onwaiting_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onwaiting"

///|
fn document_set_onwaiting_ffi(obj : JsValue, onwaiting : JsValue) -> Unit = "webapi_Document" "set_onwaiting"

///|
fn document_onwebkitanimationend_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onwebkitanimationend"

///|
fn document_set_onwebkitanimationend_ffi(
  obj : JsValue,
  onwebkitanimationend : JsValue,
) -> Unit = "webapi_Document" "set_onwebkitanimationend"

///|
fn document_onwebkitanimationiteration_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onwebkitanimationiteration"

///|
fn document_set_onwebkitanimationiteration_ffi(
  obj : JsValue,
  onwebkitanimationiteration : JsValue,
) -> Unit = "webapi_Document" "set_onwebkitanimationiteration"

///|
fn document_onwebkitanimationstart_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onwebkitanimationstart"

///|
fn document_set_onwebkitanimationstart_ffi(
  obj : JsValue,
  onwebkitanimationstart : JsValue,
) -> Unit = "webapi_Document" "set_onwebkitanimationstart"

///|
fn document_onwebkittransitionend_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onwebkittransitionend"

///|
fn document_set_onwebkittransitionend_ffi(
  obj : JsValue,
  onwebkittransitionend : JsValue,
) -> Unit = "webapi_Document" "set_onwebkittransitionend"

///|
fn document_onwheel_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onwheel"

///|
fn document_set_onwheel_ffi(obj : JsValue, onwheel : JsValue) -> Unit = "webapi_Document" "set_onwheel"

///|
fn document_ontouchstart_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_ontouchstart"

///|
fn document_set_ontouchstart_ffi(obj : JsValue, ontouchstart : JsValue) -> Unit = "webapi_Document" "set_ontouchstart"

///|
fn document_ontouchend_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_ontouchend"

///|
fn document_set_ontouchend_ffi(obj : JsValue, ontouchend : JsValue) -> Unit = "webapi_Document" "set_ontouchend"

///|
fn document_ontouchmove_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_ontouchmove"

///|
fn document_set_ontouchmove_ffi(obj : JsValue, ontouchmove : JsValue) -> Unit = "webapi_Document" "set_ontouchmove"

///|
fn document_ontouchcancel_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_ontouchcancel"

///|
fn document_set_ontouchcancel_ffi(
  obj : JsValue,
  ontouchcancel : JsValue,
) -> Unit = "webapi_Document" "set_ontouchcancel"

///|
fn document_onpointerover_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onpointerover"

///|
fn document_set_onpointerover_ffi(
  obj : JsValue,
  onpointerover : JsValue,
) -> Unit = "webapi_Document" "set_onpointerover"

///|
fn document_onpointerenter_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onpointerenter"

///|
fn document_set_onpointerenter_ffi(
  obj : JsValue,
  onpointerenter : JsValue,
) -> Unit = "webapi_Document" "set_onpointerenter"

///|
fn document_onpointerdown_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onpointerdown"

///|
fn document_set_onpointerdown_ffi(
  obj : JsValue,
  onpointerdown : JsValue,
) -> Unit = "webapi_Document" "set_onpointerdown"

///|
fn document_onpointermove_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onpointermove"

///|
fn document_set_onpointermove_ffi(
  obj : JsValue,
  onpointermove : JsValue,
) -> Unit = "webapi_Document" "set_onpointermove"

///|
fn document_onpointerrawupdate_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onpointerrawupdate"

///|
fn document_set_onpointerrawupdate_ffi(
  obj : JsValue,
  onpointerrawupdate : JsValue,
) -> Unit = "webapi_Document" "set_onpointerrawupdate"

///|
fn document_onpointerup_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onpointerup"

///|
fn document_set_onpointerup_ffi(obj : JsValue, onpointerup : JsValue) -> Unit = "webapi_Document" "set_onpointerup"

///|
fn document_onpointercancel_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onpointercancel"

///|
fn document_set_onpointercancel_ffi(
  obj : JsValue,
  onpointercancel : JsValue,
) -> Unit = "webapi_Document" "set_onpointercancel"

///|
fn document_onpointerout_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onpointerout"

///|
fn document_set_onpointerout_ffi(obj : JsValue, onpointerout : JsValue) -> Unit = "webapi_Document" "set_onpointerout"

///|
fn document_onpointerleave_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onpointerleave"

///|
fn document_set_onpointerleave_ffi(
  obj : JsValue,
  onpointerleave : JsValue,
) -> Unit = "webapi_Document" "set_onpointerleave"

///|
fn document_ongotpointercapture_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_ongotpointercapture"

///|
fn document_set_ongotpointercapture_ffi(
  obj : JsValue,
  ongotpointercapture : JsValue,
) -> Unit = "webapi_Document" "set_ongotpointercapture"

///|
fn document_onlostpointercapture_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onlostpointercapture"

///|
fn document_set_onlostpointercapture_ffi(
  obj : JsValue,
  onlostpointercapture : JsValue,
) -> Unit = "webapi_Document" "set_onlostpointercapture"

///|
fn document_onselectstart_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onselectstart"

///|
fn document_set_onselectstart_ffi(
  obj : JsValue,
  onselectstart : JsValue,
) -> Unit = "webapi_Document" "set_onselectstart"

///|
fn document_onselectionchange_ffi(obj : JsValue) -> EventHandler = "webapi_Document" "get_onselectionchange"

///|
fn document_set_onselectionchange_ffi(
  obj : JsValue,
  onselectionchange : JsValue,
) -> Unit = "webapi_Document" "set_onselectionchange"

///|
fn document_get_box_quads_ffi_wasm(obj : JsValue, options : JsValue) -> JsValue = "webapi_Document" "getBoxQuads"

///|
fn document_get_box_quads_ffi(
  obj : JsValue,
  options : JsValue,
) -> Array[DOMQuad] {
  document_get_box_quads_ffi_wasm(obj, options).unsafe_cast()
}

///|
fn document_convert_quad_from_node_ffi(
  obj : JsValue,
  quad : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMQuad = "webapi_Document" "convertQuadFromNode"

///|
fn document_convert_rect_from_node_ffi(
  obj : JsValue,
  rect : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMQuad = "webapi_Document" "convertRectFromNode"

///|
fn document_convert_point_from_node_ffi(
  obj : JsValue,
  point : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMPoint = "webapi_Document" "convertPointFromNode"
