///|
extern "js" fn document_new_ffi() -> Document = "() => new Document()"

///|
extern "js" fn document_root_element_ffi(obj : JsValue) -> JsValue = "(obj) => obj.rootElement"

///|
extern "js" fn document_implementation_ffi(obj : JsValue) -> JsValue = "(obj) => obj.implementation"

///|
extern "js" fn document_url_ffi(obj : JsValue) -> JsValue = "(obj) => obj.URL"

///|
extern "js" fn document_document_uri_ffi(obj : JsValue) -> JsValue = "(obj) => obj.documentURI"

///|
extern "js" fn document_compat_mode_ffi(obj : JsValue) -> JsValue = "(obj) => obj.compatMode"

///|
extern "js" fn document_character_set_ffi(obj : JsValue) -> JsValue = "(obj) => obj.characterSet"

///|
extern "js" fn document_charset_ffi(obj : JsValue) -> JsValue = "(obj) => obj.charset"

///|
extern "js" fn document_input_encoding_ffi(obj : JsValue) -> JsValue = "(obj) => obj.inputEncoding"

///|
extern "js" fn document_content_type_ffi(obj : JsValue) -> JsValue = "(obj) => obj.contentType"

///|
extern "js" fn document_doctype_ffi(obj : JsValue) -> JsValue = "(obj) => obj.doctype"

///|
extern "js" fn document_document_element_ffi(obj : JsValue) -> JsValue = "(obj) => obj.documentElement"

///|
extern "js" fn document_get_elements_by_tag_name_ffi(
  obj : JsValue,
  qualified_name : JsValue,
) -> JsValue = "(obj, qualified_name) => obj.getElementsByTagName(qualified_name)"

///|
extern "js" fn document_get_elements_by_tag_name_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> JsValue = "(obj, namespace_, local_name) => obj.getElementsByTagNameNS(namespace_, local_name)"

///|
extern "js" fn document_get_elements_by_class_name_ffi(
  obj : JsValue,
  class_names : JsValue,
) -> JsValue = "(obj, class_names) => obj.getElementsByClassName(class_names)"

///|
extern "js" fn document_create_element_ffi(
  obj : JsValue,
  local_name : JsValue,
  options : JsValue,
) -> JsValue = "(obj, local_name, options) => obj.createElement(local_name, options)"

///|
extern "js" fn document_create_element_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  qualified_name : JsValue,
  options : JsValue,
) -> JsValue = "(obj, namespace_, qualified_name, options) => obj.createElementNS(namespace_, qualified_name, options)"

///|
extern "js" fn document_create_document_fragment_ffi(obj : JsValue) -> JsValue = "(obj) => obj.createDocumentFragment()"

///|
extern "js" fn document_create_text_node_ffi(
  obj : JsValue,
  data : JsValue,
) -> JsValue = "(obj, data) => obj.createTextNode(data)"

///|
extern "js" fn document_create_cdata_section_ffi(
  obj : JsValue,
  data : JsValue,
) -> JsValue = "(obj, data) => obj.createCDATASection(data)"

///|
extern "js" fn document_create_comment_ffi(
  obj : JsValue,
  data : JsValue,
) -> JsValue = "(obj, data) => obj.createComment(data)"

///|
extern "js" fn document_create_processing_instruction_ffi(
  obj : JsValue,
  target : JsValue,
  data : JsValue,
) -> JsValue = "(obj, target, data) => obj.createProcessingInstruction(target, data)"

///|
extern "js" fn document_import_node_ffi(
  obj : JsValue,
  node : JsValue,
  options : JsValue,
) -> JsValue = "(obj, node, options) => obj.importNode(node, options)"

///|
extern "js" fn document_adopt_node_ffi(
  obj : JsValue,
  node : JsValue,
) -> JsValue = "(obj, node) => obj.adoptNode(node)"

///|
extern "js" fn document_create_attribute_ffi(
  obj : JsValue,
  local_name : JsValue,
) -> JsValue = "(obj, local_name) => obj.createAttribute(local_name)"

///|
extern "js" fn document_create_attribute_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  qualified_name : JsValue,
) -> JsValue = "(obj, namespace_, qualified_name) => obj.createAttributeNS(namespace_, qualified_name)"

///|
extern "js" fn document_create_event_ffi(
  obj : JsValue,
  interface : JsValue,
) -> JsValue = "(obj, interface) => obj.createEvent(interface)"

///|
extern "js" fn document_create_range_ffi(obj : JsValue) -> JsValue = "(obj) => obj.createRange()"

///|
extern "js" fn document_create_node_iterator_ffi(
  obj : JsValue,
  root : JsValue,
  what_to_show : JsValue,
  filter : JsValue,
) -> JsValue = "(obj, root, what_to_show, filter) => obj.createNodeIterator(root, what_to_show, filter)"

///|
extern "js" fn document_create_tree_walker_ffi(
  obj : JsValue,
  root : JsValue,
  what_to_show : JsValue,
  filter : JsValue,
) -> JsValue = "(obj, root, what_to_show, filter) => obj.createTreeWalker(root, what_to_show, filter)"

///|
extern "js" fn document_parse_html_unsafe_ffi(html : JsValue) -> JsValue = "(html) => Document.parseHTMLUnsafe(html)"

///|
extern "js" fn document_location_ffi(obj : JsValue) -> JsValue = "(obj) => obj.location"

///|
extern "js" fn document_domain_ffi(obj : JsValue) -> JsValue = "(obj) => obj.domain"

///|
extern "js" fn document_set_domain_ffi(obj : JsValue, domain : JsValue) -> Unit = "(obj, domain) => { obj.domain = domain; }"

///|
extern "js" fn document_referrer_ffi(obj : JsValue) -> JsValue = "(obj) => obj.referrer"

///|
extern "js" fn document_cookie_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cookie"

///|
extern "js" fn document_set_cookie_ffi(obj : JsValue, cookie : JsValue) -> Unit = "(obj, cookie) => { obj.cookie = cookie; }"

///|
extern "js" fn document_last_modified_ffi(obj : JsValue) -> JsValue = "(obj) => obj.lastModified"

///|
extern "js" fn document_ready_state_ffi(obj : JsValue) -> JsValue = "(obj) => obj.readyState"

///|
extern "js" fn document_title_ffi(obj : JsValue) -> JsValue = "(obj) => obj.title"

///|
extern "js" fn document_set_title_ffi(obj : JsValue, title : JsValue) -> Unit = "(obj, title) => { obj.title = title; }"

///|
extern "js" fn document_dir_ffi(obj : JsValue) -> JsValue = "(obj) => obj.dir"

///|
extern "js" fn document_set_dir_ffi(obj : JsValue, dir : JsValue) -> Unit = "(obj, dir) => { obj.dir = dir; }"

///|
extern "js" fn document_body_ffi(obj : JsValue) -> JsValue = "(obj) => obj.body"

///|
extern "js" fn document_set_body_ffi(obj : JsValue, body : JsValue) -> Unit = "(obj, body) => { obj.body = body; }"

///|
extern "js" fn document_head_ffi(obj : JsValue) -> JsValue = "(obj) => obj.head"

///|
extern "js" fn document_images_ffi(obj : JsValue) -> JsValue = "(obj) => obj.images"

///|
extern "js" fn document_embeds_ffi(obj : JsValue) -> JsValue = "(obj) => obj.embeds"

///|
extern "js" fn document_plugins_ffi(obj : JsValue) -> JsValue = "(obj) => obj.plugins"

///|
extern "js" fn document_links_ffi(obj : JsValue) -> JsValue = "(obj) => obj.links"

///|
extern "js" fn document_forms_ffi(obj : JsValue) -> JsValue = "(obj) => obj.forms"

///|
extern "js" fn document_scripts_ffi(obj : JsValue) -> JsValue = "(obj) => obj.scripts"

///|
extern "js" fn document_get_elements_by_name_ffi(
  obj : JsValue,
  element_name : JsValue,
) -> JsValue = "(obj, element_name) => obj.getElementsByName(element_name)"

///|
extern "js" fn document_current_script_ffi(obj : JsValue) -> JsValue = "(obj) => obj.currentScript"

///|
extern "js" fn document_open_ffi(
  obj : JsValue,
  unused1 : JsValue,
  unused2 : JsValue,
) -> JsValue = "(obj, unused1, unused2) => obj.open(unused1, unused2)"

///|
extern "js" fn document_open_2_ffi(
  obj : JsValue,
  url : JsValue,
  name : JsValue,
  features : JsValue,
) -> JsValue = "(obj, url, name, features) => obj.open_2(url, name, features)"

///|
extern "js" fn document_close_ffi(obj : JsValue) -> Unit = "(obj) => obj.close()"

///|
extern "js" fn document_write_ffi(obj : JsValue, text : JsValue) -> Unit = "(obj, text) => obj.write(text)"

///|
extern "js" fn document_writeln_ffi(obj : JsValue, text : JsValue) -> Unit = "(obj, text) => obj.writeln(text)"

///|
extern "js" fn document_default_view_ffi(obj : JsValue) -> JsValue = "(obj) => obj.defaultView"

///|
extern "js" fn document_has_focus_ffi(obj : JsValue) -> JsValue = "(obj) => obj.hasFocus()"

///|
extern "js" fn document_design_mode_ffi(obj : JsValue) -> JsValue = "(obj) => obj.designMode"

///|
extern "js" fn document_set_design_mode_ffi(
  obj : JsValue,
  design_mode : JsValue,
) -> Unit = "(obj, designMode) => { obj.designMode = designMode; }"

///|
extern "js" fn document_exec_command_ffi(
  obj : JsValue,
  command_id : JsValue,
  show_ui : JsValue,
  value : JsValue,
) -> JsValue = "(obj, command_id, show_ui, value) => obj.execCommand(command_id, show_ui, value)"

///|
extern "js" fn document_query_command_enabled_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> JsValue = "(obj, command_id) => obj.queryCommandEnabled(command_id)"

///|
extern "js" fn document_query_command_indeterm_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> JsValue = "(obj, command_id) => obj.queryCommandIndeterm(command_id)"

///|
extern "js" fn document_query_command_state_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> JsValue = "(obj, command_id) => obj.queryCommandState(command_id)"

///|
extern "js" fn document_query_command_supported_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> JsValue = "(obj, command_id) => obj.queryCommandSupported(command_id)"

///|
extern "js" fn document_query_command_value_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> JsValue = "(obj, command_id) => obj.queryCommandValue(command_id)"

///|
extern "js" fn document_hidden_ffi(obj : JsValue) -> JsValue = "(obj) => obj.hidden"

///|
extern "js" fn document_visibility_state_ffi(obj : JsValue) -> JsValue = "(obj) => obj.visibilityState"

///|
extern "js" fn document_onreadystatechange_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onreadystatechange"

///|
extern "js" fn document_set_onreadystatechange_ffi(
  obj : JsValue,
  onreadystatechange : JsValue,
) -> Unit = "(obj, onreadystatechange) => { obj.onreadystatechange = onreadystatechange; }"

///|
extern "js" fn document_onvisibilitychange_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onvisibilitychange"

///|
extern "js" fn document_set_onvisibilitychange_ffi(
  obj : JsValue,
  onvisibilitychange : JsValue,
) -> Unit = "(obj, onvisibilitychange) => { obj.onvisibilitychange = onvisibilitychange; }"

///|
extern "js" fn document_fg_color_ffi(obj : JsValue) -> JsValue = "(obj) => obj.fgColor"

///|
extern "js" fn document_set_fg_color_ffi(
  obj : JsValue,
  fg_color : JsValue,
) -> Unit = "(obj, fgColor) => { obj.fgColor = fgColor; }"

///|
extern "js" fn document_link_color_ffi(obj : JsValue) -> JsValue = "(obj) => obj.linkColor"

///|
extern "js" fn document_set_link_color_ffi(
  obj : JsValue,
  link_color : JsValue,
) -> Unit = "(obj, linkColor) => { obj.linkColor = linkColor; }"

///|
extern "js" fn document_vlink_color_ffi(obj : JsValue) -> JsValue = "(obj) => obj.vlinkColor"

///|
extern "js" fn document_set_vlink_color_ffi(
  obj : JsValue,
  vlink_color : JsValue,
) -> Unit = "(obj, vlinkColor) => { obj.vlinkColor = vlinkColor; }"

///|
extern "js" fn document_alink_color_ffi(obj : JsValue) -> JsValue = "(obj) => obj.alinkColor"

///|
extern "js" fn document_set_alink_color_ffi(
  obj : JsValue,
  alink_color : JsValue,
) -> Unit = "(obj, alinkColor) => { obj.alinkColor = alinkColor; }"

///|
extern "js" fn document_bg_color_ffi(obj : JsValue) -> JsValue = "(obj) => obj.bgColor"

///|
extern "js" fn document_set_bg_color_ffi(
  obj : JsValue,
  bg_color : JsValue,
) -> Unit = "(obj, bgColor) => { obj.bgColor = bgColor; }"

///|
extern "js" fn document_anchors_ffi(obj : JsValue) -> JsValue = "(obj) => obj.anchors"

///|
extern "js" fn document_applets_ffi(obj : JsValue) -> JsValue = "(obj) => obj.applets"

///|
extern "js" fn document_clear_ffi(obj : JsValue) -> Unit = "(obj) => obj.clear()"

///|
extern "js" fn document_capture_events_ffi(obj : JsValue) -> Unit = "(obj) => obj.captureEvents()"

///|
extern "js" fn document_release_events_ffi(obj : JsValue) -> Unit = "(obj) => obj.releaseEvents()"

///|
extern "js" fn document_all_ffi(obj : JsValue) -> JsValue = "(obj) => obj.all"

///|
extern "js" fn document_element_from_point_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "(obj, x, y) => obj.elementFromPoint(x, y)"

///|
extern "js" fn document_elements_from_point_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "(obj, x, y) => obj.elementsFromPoint(x, y)"

///|
extern "js" fn document_caret_position_from_point_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  options : JsValue,
) -> JsValue = "(obj, x, y, options) => obj.caretPositionFromPoint(x, y, options)"

///|
extern "js" fn document_scrolling_element_ffi(obj : JsValue) -> JsValue = "(obj) => obj.scrollingElement"

///|
extern "js" fn document_get_element_by_id_ffi(
  obj : JsValue,
  element_id : JsValue,
) -> JsValue = "(obj, element_id) => obj.getElementById(element_id)"

///|
extern "js" fn document_custom_element_registry_ffi(obj : JsValue) -> JsValue = "(obj) => obj.customElementRegistry"

///|
extern "js" fn document_active_element_ffi(obj : JsValue) -> JsValue = "(obj) => obj.activeElement"

///|
extern "js" fn document_style_sheets_ffi(obj : JsValue) -> JsValue = "(obj) => obj.styleSheets"

///|
extern "js" fn document_adopted_style_sheets_ffi(obj : JsValue) -> JsValue = "(obj) => obj.adoptedStyleSheets"

///|
extern "js" fn document_set_adopted_style_sheets_ffi(
  obj : JsValue,
  adopted_style_sheets : JsValue,
) -> Unit = "(obj, adoptedStyleSheets) => { obj.adoptedStyleSheets = adoptedStyleSheets; }"

///|
extern "js" fn document_children_ffi(obj : JsValue) -> JsValue = "(obj) => obj.children"

///|
extern "js" fn document_first_element_child_ffi(obj : JsValue) -> JsValue = "(obj) => obj.firstElementChild"

///|
extern "js" fn document_last_element_child_ffi(obj : JsValue) -> JsValue = "(obj) => obj.lastElementChild"

///|
extern "js" fn document_child_element_count_ffi(obj : JsValue) -> JsValue = "(obj) => obj.childElementCount"

///|
extern "js" fn document_prepend_ffi(obj : JsValue, nodes : JsValue) -> Unit = "(obj, nodes) => obj.prepend(nodes)"

///|
extern "js" fn document_append_ffi(obj : JsValue, nodes : JsValue) -> Unit = "(obj, nodes) => obj.append(nodes)"

///|
extern "js" fn document_replace_children_ffi(
  obj : JsValue,
  nodes : JsValue,
) -> Unit = "(obj, nodes) => obj.replaceChildren(nodes)"

///|
extern "js" fn document_move_before_ffi(
  obj : JsValue,
  node : JsValue,
  child : JsValue,
) -> Unit = "(obj, node, child) => obj.moveBefore(node, child)"

///|
extern "js" fn document_query_selector_ffi(
  obj : JsValue,
  selectors : JsValue,
) -> JsValue = "(obj, selectors) => obj.querySelector(selectors)"

///|
extern "js" fn document_query_selector_all_ffi(
  obj : JsValue,
  selectors : JsValue,
) -> JsValue = "(obj, selectors) => obj.querySelectorAll(selectors)"

///|
extern "js" fn document_create_expression_ffi(
  obj : JsValue,
  expression : JsValue,
  resolver : JsValue,
) -> JsValue = "(obj, expression, resolver) => obj.createExpression(expression, resolver)"

///|
extern "js" fn document_create_ns_resolver_ffi(
  obj : JsValue,
  node_resolver : JsValue,
) -> JsValue = "(obj, node_resolver) => obj.createNSResolver(node_resolver)"

///|
extern "js" fn document_evaluate_ffi(
  obj : JsValue,
  expression : JsValue,
  context_node : JsValue,
  resolver : JsValue,
  type_ : JsValue,
  result : JsValue,
) -> JsValue = "(obj, expression, context_node, resolver, type_, result) => obj.evaluate(expression, context_node, resolver, type_, result)"

///|
extern "js" fn document_onabort_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onabort"

///|
extern "js" fn document_set_onabort_ffi(
  obj : JsValue,
  onabort : JsValue,
) -> Unit = "(obj, onabort) => { obj.onabort = onabort; }"

///|
extern "js" fn document_onauxclick_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onauxclick"

///|
extern "js" fn document_set_onauxclick_ffi(
  obj : JsValue,
  onauxclick : JsValue,
) -> Unit = "(obj, onauxclick) => { obj.onauxclick = onauxclick; }"

///|
extern "js" fn document_onbeforeinput_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onbeforeinput"

///|
extern "js" fn document_set_onbeforeinput_ffi(
  obj : JsValue,
  onbeforeinput : JsValue,
) -> Unit = "(obj, onbeforeinput) => { obj.onbeforeinput = onbeforeinput; }"

///|
extern "js" fn document_onbeforematch_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onbeforematch"

///|
extern "js" fn document_set_onbeforematch_ffi(
  obj : JsValue,
  onbeforematch : JsValue,
) -> Unit = "(obj, onbeforematch) => { obj.onbeforematch = onbeforematch; }"

///|
extern "js" fn document_onbeforetoggle_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onbeforetoggle"

///|
extern "js" fn document_set_onbeforetoggle_ffi(
  obj : JsValue,
  onbeforetoggle : JsValue,
) -> Unit = "(obj, onbeforetoggle) => { obj.onbeforetoggle = onbeforetoggle; }"

///|
extern "js" fn document_onblur_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onblur"

///|
extern "js" fn document_set_onblur_ffi(obj : JsValue, onblur : JsValue) -> Unit = "(obj, onblur) => { obj.onblur = onblur; }"

///|
extern "js" fn document_oncancel_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oncancel"

///|
extern "js" fn document_set_oncancel_ffi(
  obj : JsValue,
  oncancel : JsValue,
) -> Unit = "(obj, oncancel) => { obj.oncancel = oncancel; }"

///|
extern "js" fn document_oncanplay_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oncanplay"

///|
extern "js" fn document_set_oncanplay_ffi(
  obj : JsValue,
  oncanplay : JsValue,
) -> Unit = "(obj, oncanplay) => { obj.oncanplay = oncanplay; }"

///|
extern "js" fn document_oncanplaythrough_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oncanplaythrough"

///|
extern "js" fn document_set_oncanplaythrough_ffi(
  obj : JsValue,
  oncanplaythrough : JsValue,
) -> Unit = "(obj, oncanplaythrough) => { obj.oncanplaythrough = oncanplaythrough; }"

///|
extern "js" fn document_onchange_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onchange"

///|
extern "js" fn document_set_onchange_ffi(
  obj : JsValue,
  onchange : JsValue,
) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"

///|
extern "js" fn document_onclick_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onclick"

///|
extern "js" fn document_set_onclick_ffi(
  obj : JsValue,
  onclick : JsValue,
) -> Unit = "(obj, onclick) => { obj.onclick = onclick; }"

///|
extern "js" fn document_onclose_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onclose"

///|
extern "js" fn document_set_onclose_ffi(
  obj : JsValue,
  onclose : JsValue,
) -> Unit = "(obj, onclose) => { obj.onclose = onclose; }"

///|
extern "js" fn document_oncommand_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oncommand"

///|
extern "js" fn document_set_oncommand_ffi(
  obj : JsValue,
  oncommand : JsValue,
) -> Unit = "(obj, oncommand) => { obj.oncommand = oncommand; }"

///|
extern "js" fn document_oncontextlost_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oncontextlost"

///|
extern "js" fn document_set_oncontextlost_ffi(
  obj : JsValue,
  oncontextlost : JsValue,
) -> Unit = "(obj, oncontextlost) => { obj.oncontextlost = oncontextlost; }"

///|
extern "js" fn document_oncontextmenu_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oncontextmenu"

///|
extern "js" fn document_set_oncontextmenu_ffi(
  obj : JsValue,
  oncontextmenu : JsValue,
) -> Unit = "(obj, oncontextmenu) => { obj.oncontextmenu = oncontextmenu; }"

///|
extern "js" fn document_oncontextrestored_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oncontextrestored"

///|
extern "js" fn document_set_oncontextrestored_ffi(
  obj : JsValue,
  oncontextrestored : JsValue,
) -> Unit = "(obj, oncontextrestored) => { obj.oncontextrestored = oncontextrestored; }"

///|
extern "js" fn document_oncopy_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oncopy"

///|
extern "js" fn document_set_oncopy_ffi(obj : JsValue, oncopy : JsValue) -> Unit = "(obj, oncopy) => { obj.oncopy = oncopy; }"

///|
extern "js" fn document_oncuechange_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oncuechange"

///|
extern "js" fn document_set_oncuechange_ffi(
  obj : JsValue,
  oncuechange : JsValue,
) -> Unit = "(obj, oncuechange) => { obj.oncuechange = oncuechange; }"

///|
extern "js" fn document_oncut_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oncut"

///|
extern "js" fn document_set_oncut_ffi(obj : JsValue, oncut : JsValue) -> Unit = "(obj, oncut) => { obj.oncut = oncut; }"

///|
extern "js" fn document_ondblclick_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ondblclick"

///|
extern "js" fn document_set_ondblclick_ffi(
  obj : JsValue,
  ondblclick : JsValue,
) -> Unit = "(obj, ondblclick) => { obj.ondblclick = ondblclick; }"

///|
extern "js" fn document_ondrag_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ondrag"

///|
extern "js" fn document_set_ondrag_ffi(obj : JsValue, ondrag : JsValue) -> Unit = "(obj, ondrag) => { obj.ondrag = ondrag; }"

///|
extern "js" fn document_ondragend_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ondragend"

///|
extern "js" fn document_set_ondragend_ffi(
  obj : JsValue,
  ondragend : JsValue,
) -> Unit = "(obj, ondragend) => { obj.ondragend = ondragend; }"

///|
extern "js" fn document_ondragenter_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ondragenter"

///|
extern "js" fn document_set_ondragenter_ffi(
  obj : JsValue,
  ondragenter : JsValue,
) -> Unit = "(obj, ondragenter) => { obj.ondragenter = ondragenter; }"

///|
extern "js" fn document_ondragleave_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ondragleave"

///|
extern "js" fn document_set_ondragleave_ffi(
  obj : JsValue,
  ondragleave : JsValue,
) -> Unit = "(obj, ondragleave) => { obj.ondragleave = ondragleave; }"

///|
extern "js" fn document_ondragover_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ondragover"

///|
extern "js" fn document_set_ondragover_ffi(
  obj : JsValue,
  ondragover : JsValue,
) -> Unit = "(obj, ondragover) => { obj.ondragover = ondragover; }"

///|
extern "js" fn document_ondragstart_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ondragstart"

///|
extern "js" fn document_set_ondragstart_ffi(
  obj : JsValue,
  ondragstart : JsValue,
) -> Unit = "(obj, ondragstart) => { obj.ondragstart = ondragstart; }"

///|
extern "js" fn document_ondrop_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ondrop"

///|
extern "js" fn document_set_ondrop_ffi(obj : JsValue, ondrop : JsValue) -> Unit = "(obj, ondrop) => { obj.ondrop = ondrop; }"

///|
extern "js" fn document_ondurationchange_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ondurationchange"

///|
extern "js" fn document_set_ondurationchange_ffi(
  obj : JsValue,
  ondurationchange : JsValue,
) -> Unit = "(obj, ondurationchange) => { obj.ondurationchange = ondurationchange; }"

///|
extern "js" fn document_onemptied_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onemptied"

///|
extern "js" fn document_set_onemptied_ffi(
  obj : JsValue,
  onemptied : JsValue,
) -> Unit = "(obj, onemptied) => { obj.onemptied = onemptied; }"

///|
extern "js" fn document_onended_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onended"

///|
extern "js" fn document_set_onended_ffi(
  obj : JsValue,
  onended : JsValue,
) -> Unit = "(obj, onended) => { obj.onended = onended; }"

///|
extern "js" fn document_onerror_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onerror"

///|
extern "js" fn document_set_onerror_ffi(
  obj : JsValue,
  onerror : JsValue,
) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
extern "js" fn document_onfocus_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onfocus"

///|
extern "js" fn document_set_onfocus_ffi(
  obj : JsValue,
  onfocus : JsValue,
) -> Unit = "(obj, onfocus) => { obj.onfocus = onfocus; }"

///|
extern "js" fn document_onformdata_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onformdata"

///|
extern "js" fn document_set_onformdata_ffi(
  obj : JsValue,
  onformdata : JsValue,
) -> Unit = "(obj, onformdata) => { obj.onformdata = onformdata; }"

///|
extern "js" fn document_oninput_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oninput"

///|
extern "js" fn document_set_oninput_ffi(
  obj : JsValue,
  oninput : JsValue,
) -> Unit = "(obj, oninput) => { obj.oninput = oninput; }"

///|
extern "js" fn document_oninvalid_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oninvalid"

///|
extern "js" fn document_set_oninvalid_ffi(
  obj : JsValue,
  oninvalid : JsValue,
) -> Unit = "(obj, oninvalid) => { obj.oninvalid = oninvalid; }"

///|
extern "js" fn document_onkeydown_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onkeydown"

///|
extern "js" fn document_set_onkeydown_ffi(
  obj : JsValue,
  onkeydown : JsValue,
) -> Unit = "(obj, onkeydown) => { obj.onkeydown = onkeydown; }"

///|
extern "js" fn document_onkeypress_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onkeypress"

///|
extern "js" fn document_set_onkeypress_ffi(
  obj : JsValue,
  onkeypress : JsValue,
) -> Unit = "(obj, onkeypress) => { obj.onkeypress = onkeypress; }"

///|
extern "js" fn document_onkeyup_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onkeyup"

///|
extern "js" fn document_set_onkeyup_ffi(
  obj : JsValue,
  onkeyup : JsValue,
) -> Unit = "(obj, onkeyup) => { obj.onkeyup = onkeyup; }"

///|
extern "js" fn document_onload_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onload"

///|
extern "js" fn document_set_onload_ffi(obj : JsValue, onload : JsValue) -> Unit = "(obj, onload) => { obj.onload = onload; }"

///|
extern "js" fn document_onloadeddata_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onloadeddata"

///|
extern "js" fn document_set_onloadeddata_ffi(
  obj : JsValue,
  onloadeddata : JsValue,
) -> Unit = "(obj, onloadeddata) => { obj.onloadeddata = onloadeddata; }"

///|
extern "js" fn document_onloadedmetadata_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onloadedmetadata"

///|
extern "js" fn document_set_onloadedmetadata_ffi(
  obj : JsValue,
  onloadedmetadata : JsValue,
) -> Unit = "(obj, onloadedmetadata) => { obj.onloadedmetadata = onloadedmetadata; }"

///|
extern "js" fn document_onloadstart_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onloadstart"

///|
extern "js" fn document_set_onloadstart_ffi(
  obj : JsValue,
  onloadstart : JsValue,
) -> Unit = "(obj, onloadstart) => { obj.onloadstart = onloadstart; }"

///|
extern "js" fn document_onmousedown_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onmousedown"

///|
extern "js" fn document_set_onmousedown_ffi(
  obj : JsValue,
  onmousedown : JsValue,
) -> Unit = "(obj, onmousedown) => { obj.onmousedown = onmousedown; }"

///|
extern "js" fn document_onmouseenter_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onmouseenter"

///|
extern "js" fn document_set_onmouseenter_ffi(
  obj : JsValue,
  onmouseenter : JsValue,
) -> Unit = "(obj, onmouseenter) => { obj.onmouseenter = onmouseenter; }"

///|
extern "js" fn document_onmouseleave_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onmouseleave"

///|
extern "js" fn document_set_onmouseleave_ffi(
  obj : JsValue,
  onmouseleave : JsValue,
) -> Unit = "(obj, onmouseleave) => { obj.onmouseleave = onmouseleave; }"

///|
extern "js" fn document_onmousemove_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onmousemove"

///|
extern "js" fn document_set_onmousemove_ffi(
  obj : JsValue,
  onmousemove : JsValue,
) -> Unit = "(obj, onmousemove) => { obj.onmousemove = onmousemove; }"

///|
extern "js" fn document_onmouseout_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onmouseout"

///|
extern "js" fn document_set_onmouseout_ffi(
  obj : JsValue,
  onmouseout : JsValue,
) -> Unit = "(obj, onmouseout) => { obj.onmouseout = onmouseout; }"

///|
extern "js" fn document_onmouseover_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onmouseover"

///|
extern "js" fn document_set_onmouseover_ffi(
  obj : JsValue,
  onmouseover : JsValue,
) -> Unit = "(obj, onmouseover) => { obj.onmouseover = onmouseover; }"

///|
extern "js" fn document_onmouseup_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onmouseup"

///|
extern "js" fn document_set_onmouseup_ffi(
  obj : JsValue,
  onmouseup : JsValue,
) -> Unit = "(obj, onmouseup) => { obj.onmouseup = onmouseup; }"

///|
extern "js" fn document_onpaste_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onpaste"

///|
extern "js" fn document_set_onpaste_ffi(
  obj : JsValue,
  onpaste : JsValue,
) -> Unit = "(obj, onpaste) => { obj.onpaste = onpaste; }"

///|
extern "js" fn document_onpause_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onpause"

///|
extern "js" fn document_set_onpause_ffi(
  obj : JsValue,
  onpause : JsValue,
) -> Unit = "(obj, onpause) => { obj.onpause = onpause; }"

///|
extern "js" fn document_onplay_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onplay"

///|
extern "js" fn document_set_onplay_ffi(obj : JsValue, onplay : JsValue) -> Unit = "(obj, onplay) => { obj.onplay = onplay; }"

///|
extern "js" fn document_onplaying_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onplaying"

///|
extern "js" fn document_set_onplaying_ffi(
  obj : JsValue,
  onplaying : JsValue,
) -> Unit = "(obj, onplaying) => { obj.onplaying = onplaying; }"

///|
extern "js" fn document_onprogress_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onprogress"

///|
extern "js" fn document_set_onprogress_ffi(
  obj : JsValue,
  onprogress : JsValue,
) -> Unit = "(obj, onprogress) => { obj.onprogress = onprogress; }"

///|
extern "js" fn document_onratechange_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onratechange"

///|
extern "js" fn document_set_onratechange_ffi(
  obj : JsValue,
  onratechange : JsValue,
) -> Unit = "(obj, onratechange) => { obj.onratechange = onratechange; }"

///|
extern "js" fn document_onreset_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onreset"

///|
extern "js" fn document_set_onreset_ffi(
  obj : JsValue,
  onreset : JsValue,
) -> Unit = "(obj, onreset) => { obj.onreset = onreset; }"

///|
extern "js" fn document_onresize_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onresize"

///|
extern "js" fn document_set_onresize_ffi(
  obj : JsValue,
  onresize : JsValue,
) -> Unit = "(obj, onresize) => { obj.onresize = onresize; }"

///|
extern "js" fn document_onscroll_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onscroll"

///|
extern "js" fn document_set_onscroll_ffi(
  obj : JsValue,
  onscroll : JsValue,
) -> Unit = "(obj, onscroll) => { obj.onscroll = onscroll; }"

///|
extern "js" fn document_onscrollend_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onscrollend"

///|
extern "js" fn document_set_onscrollend_ffi(
  obj : JsValue,
  onscrollend : JsValue,
) -> Unit = "(obj, onscrollend) => { obj.onscrollend = onscrollend; }"

///|
extern "js" fn document_onsecuritypolicyviolation_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onsecuritypolicyviolation"

///|
extern "js" fn document_set_onsecuritypolicyviolation_ffi(
  obj : JsValue,
  onsecuritypolicyviolation : JsValue,
) -> Unit = "(obj, onsecuritypolicyviolation) => { obj.onsecuritypolicyviolation = onsecuritypolicyviolation; }"

///|
extern "js" fn document_onseeked_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onseeked"

///|
extern "js" fn document_set_onseeked_ffi(
  obj : JsValue,
  onseeked : JsValue,
) -> Unit = "(obj, onseeked) => { obj.onseeked = onseeked; }"

///|
extern "js" fn document_onseeking_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onseeking"

///|
extern "js" fn document_set_onseeking_ffi(
  obj : JsValue,
  onseeking : JsValue,
) -> Unit = "(obj, onseeking) => { obj.onseeking = onseeking; }"

///|
extern "js" fn document_onselect_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onselect"

///|
extern "js" fn document_set_onselect_ffi(
  obj : JsValue,
  onselect : JsValue,
) -> Unit = "(obj, onselect) => { obj.onselect = onselect; }"

///|
extern "js" fn document_onslotchange_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onslotchange"

///|
extern "js" fn document_set_onslotchange_ffi(
  obj : JsValue,
  onslotchange : JsValue,
) -> Unit = "(obj, onslotchange) => { obj.onslotchange = onslotchange; }"

///|
extern "js" fn document_onstalled_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onstalled"

///|
extern "js" fn document_set_onstalled_ffi(
  obj : JsValue,
  onstalled : JsValue,
) -> Unit = "(obj, onstalled) => { obj.onstalled = onstalled; }"

///|
extern "js" fn document_onsubmit_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onsubmit"

///|
extern "js" fn document_set_onsubmit_ffi(
  obj : JsValue,
  onsubmit : JsValue,
) -> Unit = "(obj, onsubmit) => { obj.onsubmit = onsubmit; }"

///|
extern "js" fn document_onsuspend_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onsuspend"

///|
extern "js" fn document_set_onsuspend_ffi(
  obj : JsValue,
  onsuspend : JsValue,
) -> Unit = "(obj, onsuspend) => { obj.onsuspend = onsuspend; }"

///|
extern "js" fn document_ontimeupdate_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ontimeupdate"

///|
extern "js" fn document_set_ontimeupdate_ffi(
  obj : JsValue,
  ontimeupdate : JsValue,
) -> Unit = "(obj, ontimeupdate) => { obj.ontimeupdate = ontimeupdate; }"

///|
extern "js" fn document_ontoggle_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ontoggle"

///|
extern "js" fn document_set_ontoggle_ffi(
  obj : JsValue,
  ontoggle : JsValue,
) -> Unit = "(obj, ontoggle) => { obj.ontoggle = ontoggle; }"

///|
extern "js" fn document_onvolumechange_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onvolumechange"

///|
extern "js" fn document_set_onvolumechange_ffi(
  obj : JsValue,
  onvolumechange : JsValue,
) -> Unit = "(obj, onvolumechange) => { obj.onvolumechange = onvolumechange; }"

///|
extern "js" fn document_onwaiting_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onwaiting"

///|
extern "js" fn document_set_onwaiting_ffi(
  obj : JsValue,
  onwaiting : JsValue,
) -> Unit = "(obj, onwaiting) => { obj.onwaiting = onwaiting; }"

///|
extern "js" fn document_onwebkitanimationend_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onwebkitanimationend"

///|
extern "js" fn document_set_onwebkitanimationend_ffi(
  obj : JsValue,
  onwebkitanimationend : JsValue,
) -> Unit = "(obj, onwebkitanimationend) => { obj.onwebkitanimationend = onwebkitanimationend; }"

///|
extern "js" fn document_onwebkitanimationiteration_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onwebkitanimationiteration"

///|
extern "js" fn document_set_onwebkitanimationiteration_ffi(
  obj : JsValue,
  onwebkitanimationiteration : JsValue,
) -> Unit = "(obj, onwebkitanimationiteration) => { obj.onwebkitanimationiteration = onwebkitanimationiteration; }"

///|
extern "js" fn document_onwebkitanimationstart_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onwebkitanimationstart"

///|
extern "js" fn document_set_onwebkitanimationstart_ffi(
  obj : JsValue,
  onwebkitanimationstart : JsValue,
) -> Unit = "(obj, onwebkitanimationstart) => { obj.onwebkitanimationstart = onwebkitanimationstart; }"

///|
extern "js" fn document_onwebkittransitionend_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onwebkittransitionend"

///|
extern "js" fn document_set_onwebkittransitionend_ffi(
  obj : JsValue,
  onwebkittransitionend : JsValue,
) -> Unit = "(obj, onwebkittransitionend) => { obj.onwebkittransitionend = onwebkittransitionend; }"

///|
extern "js" fn document_onwheel_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onwheel"

///|
extern "js" fn document_set_onwheel_ffi(
  obj : JsValue,
  onwheel : JsValue,
) -> Unit = "(obj, onwheel) => { obj.onwheel = onwheel; }"

///|
extern "js" fn document_get_box_quads_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.getBoxQuads(options)"

///|
extern "js" fn document_convert_quad_from_node_ffi(
  obj : JsValue,
  quad : JsValue,
  from : JsValue,
  options : JsValue,
) -> JsValue = "(obj, quad, from, options) => obj.convertQuadFromNode(quad, from, options)"

///|
extern "js" fn document_convert_rect_from_node_ffi(
  obj : JsValue,
  rect : JsValue,
  from : JsValue,
  options : JsValue,
) -> JsValue = "(obj, rect, from, options) => obj.convertRectFromNode(rect, from, options)"

///|
extern "js" fn document_convert_point_from_node_ffi(
  obj : JsValue,
  point : JsValue,
  from : JsValue,
  options : JsValue,
) -> JsValue = "(obj, point, from, options) => obj.convertPointFromNode(point, from, options)"
