///|
extern "js" fn document_new_ffi() -> Document = "() => new Document()"

///|
extern "js" fn document_root_element_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.rootElement"

///|
fn document_root_element_ffi(obj : JsValue) -> SVGSVGElement {
  document_root_element_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_implementation_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.implementation"

///|
fn document_implementation_ffi(obj : JsValue) -> DOMImplementation {
  document_implementation_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_url_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.URL"

///|
fn document_url_ffi(obj : JsValue) -> String {
  document_url_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_document_uri_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.documentURI"

///|
fn document_document_uri_ffi(obj : JsValue) -> String {
  document_document_uri_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_compat_mode_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.compatMode"

///|
fn document_compat_mode_ffi(obj : JsValue) -> String {
  document_compat_mode_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_character_set_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.characterSet"

///|
fn document_character_set_ffi(obj : JsValue) -> String {
  document_character_set_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_charset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.charset"

///|
fn document_charset_ffi(obj : JsValue) -> String {
  document_charset_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_input_encoding_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.inputEncoding"

///|
fn document_input_encoding_ffi(obj : JsValue) -> String {
  document_input_encoding_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_content_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.contentType"

///|
fn document_content_type_ffi(obj : JsValue) -> String {
  document_content_type_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_doctype_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.doctype"

///|
fn document_doctype_ffi(obj : JsValue) -> DocumentType {
  document_doctype_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_document_element_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.documentElement"

///|
fn document_document_element_ffi(obj : JsValue) -> Element {
  document_document_element_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_get_elements_by_tag_name_ffi_js(
  obj : JsValue,
  qualified_name : JsValue,
) -> JsValue = "(obj, qualified_name) => obj.getElementsByTagName(qualified_name)"

///|
fn document_get_elements_by_tag_name_ffi(
  obj : JsValue,
  qualified_name : JsValue,
) -> HTMLCollection {
  document_get_elements_by_tag_name_ffi_js(obj, qualified_name).unsafe_cast()
}

///|
extern "js" fn document_get_elements_by_tag_name_ns_ffi_js(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> JsValue = "(obj, namespace_, local_name) => obj.getElementsByTagNameNS(namespace_, local_name)"

///|
fn document_get_elements_by_tag_name_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> HTMLCollection {
  document_get_elements_by_tag_name_ns_ffi_js(obj, namespace_, local_name).unsafe_cast()
}

///|
extern "js" fn document_get_elements_by_class_name_ffi_js(
  obj : JsValue,
  class_names : JsValue,
) -> JsValue = "(obj, class_names) => obj.getElementsByClassName(class_names)"

///|
fn document_get_elements_by_class_name_ffi(
  obj : JsValue,
  class_names : JsValue,
) -> HTMLCollection {
  document_get_elements_by_class_name_ffi_js(obj, class_names).unsafe_cast()
}

///|
extern "js" fn document_create_element_ffi_js(
  obj : JsValue,
  local_name : JsValue,
  options : JsValue,
) -> JsValue = "(obj, local_name, options) => obj.createElement(local_name, options)"

///|
fn document_create_element_ffi(
  obj : JsValue,
  local_name : JsValue,
  options : JsValue,
) -> Element {
  document_create_element_ffi_js(obj, local_name, options).unsafe_cast()
}

///|
extern "js" fn document_create_element_ns_ffi_js(
  obj : JsValue,
  namespace_ : JsValue,
  qualified_name : JsValue,
  options : JsValue,
) -> JsValue = "(obj, namespace_, qualified_name, options) => obj.createElementNS(namespace_, qualified_name, options)"

///|
fn document_create_element_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  qualified_name : JsValue,
  options : JsValue,
) -> Element {
  document_create_element_ns_ffi_js(obj, namespace_, qualified_name, options).unsafe_cast()
}

///|
extern "js" fn document_create_document_fragment_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.createDocumentFragment()"

///|
fn document_create_document_fragment_ffi(obj : JsValue) -> DocumentFragment {
  document_create_document_fragment_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_create_text_node_ffi_js(
  obj : JsValue,
  data : JsValue,
) -> JsValue = "(obj, data) => obj.createTextNode(data)"

///|
fn document_create_text_node_ffi(obj : JsValue, data : JsValue) -> Text {
  document_create_text_node_ffi_js(obj, data).unsafe_cast()
}

///|
extern "js" fn document_create_cdata_section_ffi_js(
  obj : JsValue,
  data : JsValue,
) -> JsValue = "(obj, data) => obj.createCDATASection(data)"

///|
fn document_create_cdata_section_ffi(
  obj : JsValue,
  data : JsValue,
) -> CDATASection {
  document_create_cdata_section_ffi_js(obj, data).unsafe_cast()
}

///|
extern "js" fn document_create_comment_ffi_js(
  obj : JsValue,
  data : JsValue,
) -> JsValue = "(obj, data) => obj.createComment(data)"

///|
fn document_create_comment_ffi(obj : JsValue, data : JsValue) -> Comment {
  document_create_comment_ffi_js(obj, data).unsafe_cast()
}

///|
extern "js" fn document_create_processing_instruction_ffi_js(
  obj : JsValue,
  target : JsValue,
  data : JsValue,
) -> JsValue = "(obj, target, data) => obj.createProcessingInstruction(target, data)"

///|
fn document_create_processing_instruction_ffi(
  obj : JsValue,
  target : JsValue,
  data : JsValue,
) -> ProcessingInstruction {
  document_create_processing_instruction_ffi_js(obj, target, data).unsafe_cast()
}

///|
extern "js" fn document_import_node_ffi_js(
  obj : JsValue,
  node : JsValue,
  options : JsValue,
) -> JsValue = "(obj, node, options) => obj.importNode(node, options)"

///|
fn document_import_node_ffi(
  obj : JsValue,
  node : JsValue,
  options : JsValue,
) -> Node {
  document_import_node_ffi_js(obj, node, options).unsafe_cast()
}

///|
extern "js" fn document_adopt_node_ffi_js(
  obj : JsValue,
  node : JsValue,
) -> JsValue = "(obj, node) => obj.adoptNode(node)"

///|
fn document_adopt_node_ffi(obj : JsValue, node : JsValue) -> Node {
  document_adopt_node_ffi_js(obj, node).unsafe_cast()
}

///|
extern "js" fn document_create_attribute_ffi_js(
  obj : JsValue,
  local_name : JsValue,
) -> JsValue = "(obj, local_name) => obj.createAttribute(local_name)"

///|
fn document_create_attribute_ffi(obj : JsValue, local_name : JsValue) -> Attr {
  document_create_attribute_ffi_js(obj, local_name).unsafe_cast()
}

///|
extern "js" fn document_create_attribute_ns_ffi_js(
  obj : JsValue,
  namespace_ : JsValue,
  qualified_name : JsValue,
) -> JsValue = "(obj, namespace_, qualified_name) => obj.createAttributeNS(namespace_, qualified_name)"

///|
fn document_create_attribute_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  qualified_name : JsValue,
) -> Attr {
  document_create_attribute_ns_ffi_js(obj, namespace_, qualified_name).unsafe_cast()
}

///|
extern "js" fn document_create_event_ffi_js(
  obj : JsValue,
  interface : JsValue,
) -> JsValue = "(obj, _interface) => obj.createEvent(_interface)"

///|
fn document_create_event_ffi(obj : JsValue, interface : JsValue) -> Event {
  document_create_event_ffi_js(obj, interface).unsafe_cast()
}

///|
extern "js" fn document_create_range_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.createRange()"

///|
fn document_create_range_ffi(obj : JsValue) -> Range {
  document_create_range_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_create_node_iterator_ffi_js(
  obj : JsValue,
  root : JsValue,
  what_to_show : JsValue,
  filter : JsValue,
) -> JsValue = "(obj, root, what_to_show, filter) => obj.createNodeIterator(root, what_to_show, filter)"

///|
fn document_create_node_iterator_ffi(
  obj : JsValue,
  root : JsValue,
  what_to_show : JsValue,
  filter : JsValue,
) -> NodeIterator {
  document_create_node_iterator_ffi_js(obj, root, what_to_show, filter).unsafe_cast()
}

///|
extern "js" fn document_create_tree_walker_ffi_js(
  obj : JsValue,
  root : JsValue,
  what_to_show : JsValue,
  filter : JsValue,
) -> JsValue = "(obj, root, what_to_show, filter) => obj.createTreeWalker(root, what_to_show, filter)"

///|
fn document_create_tree_walker_ffi(
  obj : JsValue,
  root : JsValue,
  what_to_show : JsValue,
  filter : JsValue,
) -> TreeWalker {
  document_create_tree_walker_ffi_js(obj, root, what_to_show, filter).unsafe_cast()
}

///|
extern "js" fn document_parse_html_unsafe_ffi_js(html : JsValue) -> JsValue = "(html) => Document.parseHTMLUnsafe(html)"

///|
fn document_parse_html_unsafe_ffi(html : JsValue) -> Document {
  document_parse_html_unsafe_ffi_js(html).unsafe_cast()
}

///|
extern "js" fn document_location_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.location"

///|
fn document_location_ffi(obj : JsValue) -> Location {
  document_location_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_domain_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.domain"

///|
fn document_domain_ffi(obj : JsValue) -> String {
  document_domain_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_domain_ffi(obj : JsValue, domain : JsValue) -> Unit = "(obj, domain) => { obj.domain = domain; }"

///|
extern "js" fn document_referrer_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.referrer"

///|
fn document_referrer_ffi(obj : JsValue) -> String {
  document_referrer_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_cookie_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cookie"

///|
fn document_cookie_ffi(obj : JsValue) -> String {
  document_cookie_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_cookie_ffi(obj : JsValue, cookie : JsValue) -> Unit = "(obj, cookie) => { obj.cookie = cookie; }"

///|
extern "js" fn document_last_modified_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.lastModified"

///|
fn document_last_modified_ffi(obj : JsValue) -> String {
  document_last_modified_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_ready_state_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.readyState"

///|
fn document_ready_state_ffi(obj : JsValue) -> DocumentReadyState {
  document_ready_state_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_get_ffi(obj : JsValue, name : JsValue) -> JsValue = "(obj, name) => obj[name]"

///|
extern "js" fn document_title_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.title"

///|
fn document_title_ffi(obj : JsValue) -> String {
  document_title_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_title_ffi(obj : JsValue, title : JsValue) -> Unit = "(obj, title) => { obj.title = title; }"

///|
extern "js" fn document_dir_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.dir"

///|
fn document_dir_ffi(obj : JsValue) -> String {
  document_dir_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_dir_ffi(obj : JsValue, dir : JsValue) -> Unit = "(obj, dir) => { obj.dir = dir; }"

///|
extern "js" fn document_body_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.body"

///|
fn document_body_ffi(obj : JsValue) -> HTMLElement {
  document_body_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_body_ffi(obj : JsValue, body : JsValue) -> Unit = "(obj, body) => { obj.body = body; }"

///|
extern "js" fn document_head_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.head"

///|
fn document_head_ffi(obj : JsValue) -> HTMLHeadElement {
  document_head_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_images_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.images"

///|
fn document_images_ffi(obj : JsValue) -> HTMLCollection {
  document_images_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_embeds_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.embeds"

///|
fn document_embeds_ffi(obj : JsValue) -> HTMLCollection {
  document_embeds_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_plugins_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.plugins"

///|
fn document_plugins_ffi(obj : JsValue) -> HTMLCollection {
  document_plugins_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_links_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.links"

///|
fn document_links_ffi(obj : JsValue) -> HTMLCollection {
  document_links_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_forms_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.forms"

///|
fn document_forms_ffi(obj : JsValue) -> HTMLCollection {
  document_forms_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_scripts_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.scripts"

///|
fn document_scripts_ffi(obj : JsValue) -> HTMLCollection {
  document_scripts_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_get_elements_by_name_ffi_js(
  obj : JsValue,
  element_name : JsValue,
) -> JsValue = "(obj, element_name) => obj.getElementsByName(element_name)"

///|
fn document_get_elements_by_name_ffi(
  obj : JsValue,
  element_name : JsValue,
) -> NodeList {
  document_get_elements_by_name_ffi_js(obj, element_name).unsafe_cast()
}

///|
extern "js" fn document_current_script_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.currentScript"

///|
fn document_current_script_ffi(obj : JsValue) -> HTMLOrSVGScriptElement {
  document_current_script_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_open_ffi_js(
  obj : JsValue,
  unused1 : JsValue,
  unused2 : JsValue,
) -> JsValue = "(obj, unused1, unused2) => obj.open(unused1, unused2)"

///|
fn document_open_ffi(
  obj : JsValue,
  unused1 : JsValue,
  unused2 : JsValue,
) -> Document {
  document_open_ffi_js(obj, unused1, unused2).unsafe_cast()
}

///|
extern "js" fn document_open_window_ffi(
  obj : JsValue,
  url : JsValue,
  name : JsValue,
  features : JsValue,
) -> JsValue = "(obj, url, name, features) => obj.open(url, name, features)"

///|
extern "js" fn document_close_ffi(obj : JsValue) -> Unit = "(obj) => obj.close()"

///|
extern "js" fn document_write_ffi(obj : JsValue, text : JsValue) -> Unit = "(obj, text) => obj.write(...text)"

///|
extern "js" fn document_writeln_ffi(obj : JsValue, text : JsValue) -> Unit = "(obj, text) => obj.writeln(...text)"

///|
extern "js" fn document_default_view_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.defaultView"

///|
fn document_default_view_ffi(obj : JsValue) -> WindowProxy {
  document_default_view_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_has_focus_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.hasFocus()"

///|
fn document_has_focus_ffi(obj : JsValue) -> Bool {
  document_has_focus_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_design_mode_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.designMode"

///|
fn document_design_mode_ffi(obj : JsValue) -> String {
  document_design_mode_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_design_mode_ffi(
  obj : JsValue,
  design_mode : JsValue,
) -> Unit = "(obj, designMode) => { obj.designMode = designMode; }"

///|
extern "js" fn document_exec_command_ffi_js(
  obj : JsValue,
  command_id : JsValue,
  show_ui : JsValue,
  value : JsValue,
) -> JsValue = "(obj, command_id, show_ui, value) => obj.execCommand(command_id, show_ui, value)"

///|
fn document_exec_command_ffi(
  obj : JsValue,
  command_id : JsValue,
  show_ui : JsValue,
  value : JsValue,
) -> Bool {
  document_exec_command_ffi_js(obj, command_id, show_ui, value).unsafe_cast()
}

///|
extern "js" fn document_query_command_enabled_ffi_js(
  obj : JsValue,
  command_id : JsValue,
) -> JsValue = "(obj, command_id) => obj.queryCommandEnabled(command_id)"

///|
fn document_query_command_enabled_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> Bool {
  document_query_command_enabled_ffi_js(obj, command_id).unsafe_cast()
}

///|
extern "js" fn document_query_command_indeterm_ffi_js(
  obj : JsValue,
  command_id : JsValue,
) -> JsValue = "(obj, command_id) => obj.queryCommandIndeterm(command_id)"

///|
fn document_query_command_indeterm_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> Bool {
  document_query_command_indeterm_ffi_js(obj, command_id).unsafe_cast()
}

///|
extern "js" fn document_query_command_state_ffi_js(
  obj : JsValue,
  command_id : JsValue,
) -> JsValue = "(obj, command_id) => obj.queryCommandState(command_id)"

///|
fn document_query_command_state_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> Bool {
  document_query_command_state_ffi_js(obj, command_id).unsafe_cast()
}

///|
extern "js" fn document_query_command_supported_ffi_js(
  obj : JsValue,
  command_id : JsValue,
) -> JsValue = "(obj, command_id) => obj.queryCommandSupported(command_id)"

///|
fn document_query_command_supported_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> Bool {
  document_query_command_supported_ffi_js(obj, command_id).unsafe_cast()
}

///|
extern "js" fn document_query_command_value_ffi_js(
  obj : JsValue,
  command_id : JsValue,
) -> JsValue = "(obj, command_id) => obj.queryCommandValue(command_id)"

///|
fn document_query_command_value_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> String {
  document_query_command_value_ffi_js(obj, command_id).unsafe_cast()
}

///|
extern "js" fn document_hidden_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.hidden"

///|
fn document_hidden_ffi(obj : JsValue) -> Bool {
  document_hidden_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_visibility_state_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.visibilityState"

///|
fn document_visibility_state_ffi(obj : JsValue) -> DocumentVisibilityState {
  document_visibility_state_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_onreadystatechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onreadystatechange"

///|
fn document_onreadystatechange_ffi(obj : JsValue) -> EventHandler {
  document_onreadystatechange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onreadystatechange_ffi(
  obj : JsValue,
  onreadystatechange : JsValue,
) -> Unit = "(obj, onreadystatechange) => { obj.onreadystatechange = onreadystatechange; }"

///|
extern "js" fn document_onvisibilitychange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onvisibilitychange"

///|
fn document_onvisibilitychange_ffi(obj : JsValue) -> EventHandler {
  document_onvisibilitychange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onvisibilitychange_ffi(
  obj : JsValue,
  onvisibilitychange : JsValue,
) -> Unit = "(obj, onvisibilitychange) => { obj.onvisibilitychange = onvisibilitychange; }"

///|
extern "js" fn document_fg_color_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.fgColor"

///|
fn document_fg_color_ffi(obj : JsValue) -> String {
  document_fg_color_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_fg_color_ffi(
  obj : JsValue,
  fg_color : JsValue,
) -> Unit = "(obj, fgColor) => { obj.fgColor = fgColor; }"

///|
extern "js" fn document_link_color_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.linkColor"

///|
fn document_link_color_ffi(obj : JsValue) -> String {
  document_link_color_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_link_color_ffi(
  obj : JsValue,
  link_color : JsValue,
) -> Unit = "(obj, linkColor) => { obj.linkColor = linkColor; }"

///|
extern "js" fn document_vlink_color_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.vlinkColor"

///|
fn document_vlink_color_ffi(obj : JsValue) -> String {
  document_vlink_color_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_vlink_color_ffi(
  obj : JsValue,
  vlink_color : JsValue,
) -> Unit = "(obj, vlinkColor) => { obj.vlinkColor = vlinkColor; }"

///|
extern "js" fn document_alink_color_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.alinkColor"

///|
fn document_alink_color_ffi(obj : JsValue) -> String {
  document_alink_color_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_alink_color_ffi(
  obj : JsValue,
  alink_color : JsValue,
) -> Unit = "(obj, alinkColor) => { obj.alinkColor = alinkColor; }"

///|
extern "js" fn document_bg_color_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.bgColor"

///|
fn document_bg_color_ffi(obj : JsValue) -> String {
  document_bg_color_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_bg_color_ffi(
  obj : JsValue,
  bg_color : JsValue,
) -> Unit = "(obj, bgColor) => { obj.bgColor = bgColor; }"

///|
extern "js" fn document_anchors_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.anchors"

///|
fn document_anchors_ffi(obj : JsValue) -> HTMLCollection {
  document_anchors_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_applets_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.applets"

///|
fn document_applets_ffi(obj : JsValue) -> HTMLCollection {
  document_applets_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_clear_ffi(obj : JsValue) -> Unit = "(obj) => obj.clear()"

///|
extern "js" fn document_capture_events_ffi(obj : JsValue) -> Unit = "(obj) => obj.captureEvents()"

///|
extern "js" fn document_release_events_ffi(obj : JsValue) -> Unit = "(obj) => obj.releaseEvents()"

///|
extern "js" fn document_all_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.all"

///|
fn document_all_ffi(obj : JsValue) -> HTMLAllCollection {
  document_all_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_element_from_point_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "(obj, x, y) => obj.elementFromPoint(x, y)"

///|
extern "js" fn document_elements_from_point_ffi_js(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "(obj, x, y) => obj.elementsFromPoint(x, y)"

///|
fn document_elements_from_point_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Array[Element] {
  document_elements_from_point_ffi_js(obj, x, y).unsafe_cast()
}

///|
extern "js" fn document_caret_position_from_point_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  options : JsValue,
) -> JsValue = "(obj, x, y, options) => obj.caretPositionFromPoint(x, y, options)"

///|
extern "js" fn document_scrolling_element_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.scrollingElement"

///|
fn document_scrolling_element_ffi(obj : JsValue) -> Element {
  document_scrolling_element_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_fullscreen_enabled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.fullscreenEnabled"

///|
fn document_fullscreen_enabled_ffi(obj : JsValue) -> Bool {
  document_fullscreen_enabled_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_fullscreen_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.fullscreen"

///|
fn document_fullscreen_ffi(obj : JsValue) -> Bool {
  document_fullscreen_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_exit_fullscreen_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.exitFullscreen()"

///|
fn document_exit_fullscreen_ffi(obj : JsValue) -> JsPromise[JsValue] {
  document_exit_fullscreen_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_onfullscreenchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onfullscreenchange"

///|
fn document_onfullscreenchange_ffi(obj : JsValue) -> EventHandler {
  document_onfullscreenchange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onfullscreenchange_ffi(
  obj : JsValue,
  onfullscreenchange : JsValue,
) -> Unit = "(obj, onfullscreenchange) => { obj.onfullscreenchange = onfullscreenchange; }"

///|
extern "js" fn document_onfullscreenerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onfullscreenerror"

///|
fn document_onfullscreenerror_ffi(obj : JsValue) -> EventHandler {
  document_onfullscreenerror_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onfullscreenerror_ffi(
  obj : JsValue,
  onfullscreenerror : JsValue,
) -> Unit = "(obj, onfullscreenerror) => { obj.onfullscreenerror = onfullscreenerror; }"

///|
extern "js" fn document_get_selection_ffi(obj : JsValue) -> JsValue = "(obj) => obj.getSelection()"

///|
extern "js" fn document_get_element_by_id_ffi(
  obj : JsValue,
  element_id : JsValue,
) -> JsValue = "(obj, element_id) => obj.getElementById(element_id)"

///|
extern "js" fn document_custom_element_registry_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.customElementRegistry"

///|
fn document_custom_element_registry_ffi(obj : JsValue) -> CustomElementRegistry {
  document_custom_element_registry_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_active_element_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.activeElement"

///|
fn document_active_element_ffi(obj : JsValue) -> Element {
  document_active_element_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_style_sheets_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.styleSheets"

///|
fn document_style_sheets_ffi(obj : JsValue) -> StyleSheetList {
  document_style_sheets_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_adopted_style_sheets_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.adoptedStyleSheets"

///|
fn document_adopted_style_sheets_ffi(obj : JsValue) -> JsValue {
  document_adopted_style_sheets_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_adopted_style_sheets_ffi(
  obj : JsValue,
  adopted_style_sheets : JsValue,
) -> Unit = "(obj, adoptedStyleSheets) => { obj.adoptedStyleSheets = adoptedStyleSheets; }"

///|
extern "js" fn document_fullscreen_element_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.fullscreenElement"

///|
fn document_fullscreen_element_ffi(obj : JsValue) -> Element {
  document_fullscreen_element_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_children_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.children"

///|
fn document_children_ffi(obj : JsValue) -> HTMLCollection {
  document_children_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_first_element_child_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.firstElementChild"

///|
fn document_first_element_child_ffi(obj : JsValue) -> Element {
  document_first_element_child_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_last_element_child_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.lastElementChild"

///|
fn document_last_element_child_ffi(obj : JsValue) -> Element {
  document_last_element_child_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_child_element_count_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.childElementCount"

///|
fn document_child_element_count_ffi(obj : JsValue) -> UInt {
  document_child_element_count_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_prepend_ffi(obj : JsValue, nodes : JsValue) -> Unit = "(obj, nodes) => obj.prepend(...nodes)"

///|
extern "js" fn document_append_ffi(obj : JsValue, nodes : JsValue) -> Unit = "(obj, nodes) => obj.append(...nodes)"

///|
extern "js" fn document_replace_children_ffi(
  obj : JsValue,
  nodes : JsValue,
) -> Unit = "(obj, nodes) => obj.replaceChildren(...nodes)"

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
extern "js" fn document_query_selector_all_ffi_js(
  obj : JsValue,
  selectors : JsValue,
) -> JsValue = "(obj, selectors) => obj.querySelectorAll(selectors)"

///|
fn document_query_selector_all_ffi(
  obj : JsValue,
  selectors : JsValue,
) -> NodeList {
  document_query_selector_all_ffi_js(obj, selectors).unsafe_cast()
}

///|
extern "js" fn document_create_expression_ffi_js(
  obj : JsValue,
  expression : JsValue,
  resolver : JsValue,
) -> JsValue = "(obj, expression, resolver) => obj.createExpression(expression, resolver)"

///|
fn document_create_expression_ffi(
  obj : JsValue,
  expression : JsValue,
  resolver : JsValue,
) -> XPathExpression {
  document_create_expression_ffi_js(obj, expression, resolver).unsafe_cast()
}

///|
extern "js" fn document_create_ns_resolver_ffi_js(
  obj : JsValue,
  node_resolver : JsValue,
) -> JsValue = "(obj, node_resolver) => obj.createNSResolver(node_resolver)"

///|
fn document_create_ns_resolver_ffi(
  obj : JsValue,
  node_resolver : JsValue,
) -> Node {
  document_create_ns_resolver_ffi_js(obj, node_resolver).unsafe_cast()
}

///|
extern "js" fn document_evaluate_ffi_js(
  obj : JsValue,
  expression : JsValue,
  context_node : JsValue,
  resolver : JsValue,
  type_ : JsValue,
  result : JsValue,
) -> JsValue = "(obj, expression, context_node, resolver, type_, result) => obj.evaluate(expression, context_node, resolver, type_, result)"

///|
fn document_evaluate_ffi(
  obj : JsValue,
  expression : JsValue,
  context_node : JsValue,
  resolver : JsValue,
  type_ : JsValue,
  result : JsValue,
) -> XPathResult {
  document_evaluate_ffi_js(
    obj, expression, context_node, resolver, type_, result,
  ).unsafe_cast()
}

///|
extern "js" fn document_onabort_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onabort"

///|
fn document_onabort_ffi(obj : JsValue) -> EventHandler {
  document_onabort_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onabort_ffi(
  obj : JsValue,
  onabort : JsValue,
) -> Unit = "(obj, onabort) => { obj.onabort = onabort; }"

///|
extern "js" fn document_onauxclick_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onauxclick"

///|
fn document_onauxclick_ffi(obj : JsValue) -> EventHandler {
  document_onauxclick_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onauxclick_ffi(
  obj : JsValue,
  onauxclick : JsValue,
) -> Unit = "(obj, onauxclick) => { obj.onauxclick = onauxclick; }"

///|
extern "js" fn document_onbeforeinput_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforeinput"

///|
fn document_onbeforeinput_ffi(obj : JsValue) -> EventHandler {
  document_onbeforeinput_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onbeforeinput_ffi(
  obj : JsValue,
  onbeforeinput : JsValue,
) -> Unit = "(obj, onbeforeinput) => { obj.onbeforeinput = onbeforeinput; }"

///|
extern "js" fn document_onbeforematch_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforematch"

///|
fn document_onbeforematch_ffi(obj : JsValue) -> EventHandler {
  document_onbeforematch_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onbeforematch_ffi(
  obj : JsValue,
  onbeforematch : JsValue,
) -> Unit = "(obj, onbeforematch) => { obj.onbeforematch = onbeforematch; }"

///|
extern "js" fn document_onbeforetoggle_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforetoggle"

///|
fn document_onbeforetoggle_ffi(obj : JsValue) -> EventHandler {
  document_onbeforetoggle_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onbeforetoggle_ffi(
  obj : JsValue,
  onbeforetoggle : JsValue,
) -> Unit = "(obj, onbeforetoggle) => { obj.onbeforetoggle = onbeforetoggle; }"

///|
extern "js" fn document_onblur_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onblur"

///|
fn document_onblur_ffi(obj : JsValue) -> EventHandler {
  document_onblur_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onblur_ffi(obj : JsValue, onblur : JsValue) -> Unit = "(obj, onblur) => { obj.onblur = onblur; }"

///|
extern "js" fn document_oncancel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncancel"

///|
fn document_oncancel_ffi(obj : JsValue) -> EventHandler {
  document_oncancel_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_oncancel_ffi(
  obj : JsValue,
  oncancel : JsValue,
) -> Unit = "(obj, oncancel) => { obj.oncancel = oncancel; }"

///|
extern "js" fn document_oncanplay_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncanplay"

///|
fn document_oncanplay_ffi(obj : JsValue) -> EventHandler {
  document_oncanplay_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_oncanplay_ffi(
  obj : JsValue,
  oncanplay : JsValue,
) -> Unit = "(obj, oncanplay) => { obj.oncanplay = oncanplay; }"

///|
extern "js" fn document_oncanplaythrough_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncanplaythrough"

///|
fn document_oncanplaythrough_ffi(obj : JsValue) -> EventHandler {
  document_oncanplaythrough_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_oncanplaythrough_ffi(
  obj : JsValue,
  oncanplaythrough : JsValue,
) -> Unit = "(obj, oncanplaythrough) => { obj.oncanplaythrough = oncanplaythrough; }"

///|
extern "js" fn document_onchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onchange"

///|
fn document_onchange_ffi(obj : JsValue) -> EventHandler {
  document_onchange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onchange_ffi(
  obj : JsValue,
  onchange : JsValue,
) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"

///|
extern "js" fn document_onclick_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onclick"

///|
fn document_onclick_ffi(obj : JsValue) -> EventHandler {
  document_onclick_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onclick_ffi(
  obj : JsValue,
  onclick : JsValue,
) -> Unit = "(obj, onclick) => { obj.onclick = onclick; }"

///|
extern "js" fn document_onclose_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onclose"

///|
fn document_onclose_ffi(obj : JsValue) -> EventHandler {
  document_onclose_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onclose_ffi(
  obj : JsValue,
  onclose : JsValue,
) -> Unit = "(obj, onclose) => { obj.onclose = onclose; }"

///|
extern "js" fn document_oncommand_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncommand"

///|
fn document_oncommand_ffi(obj : JsValue) -> EventHandler {
  document_oncommand_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_oncommand_ffi(
  obj : JsValue,
  oncommand : JsValue,
) -> Unit = "(obj, oncommand) => { obj.oncommand = oncommand; }"

///|
extern "js" fn document_oncontextlost_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncontextlost"

///|
fn document_oncontextlost_ffi(obj : JsValue) -> EventHandler {
  document_oncontextlost_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_oncontextlost_ffi(
  obj : JsValue,
  oncontextlost : JsValue,
) -> Unit = "(obj, oncontextlost) => { obj.oncontextlost = oncontextlost; }"

///|
extern "js" fn document_oncontextmenu_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncontextmenu"

///|
fn document_oncontextmenu_ffi(obj : JsValue) -> EventHandler {
  document_oncontextmenu_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_oncontextmenu_ffi(
  obj : JsValue,
  oncontextmenu : JsValue,
) -> Unit = "(obj, oncontextmenu) => { obj.oncontextmenu = oncontextmenu; }"

///|
extern "js" fn document_oncontextrestored_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncontextrestored"

///|
fn document_oncontextrestored_ffi(obj : JsValue) -> EventHandler {
  document_oncontextrestored_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_oncontextrestored_ffi(
  obj : JsValue,
  oncontextrestored : JsValue,
) -> Unit = "(obj, oncontextrestored) => { obj.oncontextrestored = oncontextrestored; }"

///|
extern "js" fn document_oncopy_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncopy"

///|
fn document_oncopy_ffi(obj : JsValue) -> EventHandler {
  document_oncopy_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_oncopy_ffi(obj : JsValue, oncopy : JsValue) -> Unit = "(obj, oncopy) => { obj.oncopy = oncopy; }"

///|
extern "js" fn document_oncuechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncuechange"

///|
fn document_oncuechange_ffi(obj : JsValue) -> EventHandler {
  document_oncuechange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_oncuechange_ffi(
  obj : JsValue,
  oncuechange : JsValue,
) -> Unit = "(obj, oncuechange) => { obj.oncuechange = oncuechange; }"

///|
extern "js" fn document_oncut_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncut"

///|
fn document_oncut_ffi(obj : JsValue) -> EventHandler {
  document_oncut_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_oncut_ffi(obj : JsValue, oncut : JsValue) -> Unit = "(obj, oncut) => { obj.oncut = oncut; }"

///|
extern "js" fn document_ondblclick_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondblclick"

///|
fn document_ondblclick_ffi(obj : JsValue) -> EventHandler {
  document_ondblclick_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_ondblclick_ffi(
  obj : JsValue,
  ondblclick : JsValue,
) -> Unit = "(obj, ondblclick) => { obj.ondblclick = ondblclick; }"

///|
extern "js" fn document_ondrag_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondrag"

///|
fn document_ondrag_ffi(obj : JsValue) -> EventHandler {
  document_ondrag_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_ondrag_ffi(obj : JsValue, ondrag : JsValue) -> Unit = "(obj, ondrag) => { obj.ondrag = ondrag; }"

///|
extern "js" fn document_ondragend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragend"

///|
fn document_ondragend_ffi(obj : JsValue) -> EventHandler {
  document_ondragend_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_ondragend_ffi(
  obj : JsValue,
  ondragend : JsValue,
) -> Unit = "(obj, ondragend) => { obj.ondragend = ondragend; }"

///|
extern "js" fn document_ondragenter_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragenter"

///|
fn document_ondragenter_ffi(obj : JsValue) -> EventHandler {
  document_ondragenter_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_ondragenter_ffi(
  obj : JsValue,
  ondragenter : JsValue,
) -> Unit = "(obj, ondragenter) => { obj.ondragenter = ondragenter; }"

///|
extern "js" fn document_ondragleave_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragleave"

///|
fn document_ondragleave_ffi(obj : JsValue) -> EventHandler {
  document_ondragleave_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_ondragleave_ffi(
  obj : JsValue,
  ondragleave : JsValue,
) -> Unit = "(obj, ondragleave) => { obj.ondragleave = ondragleave; }"

///|
extern "js" fn document_ondragover_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragover"

///|
fn document_ondragover_ffi(obj : JsValue) -> EventHandler {
  document_ondragover_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_ondragover_ffi(
  obj : JsValue,
  ondragover : JsValue,
) -> Unit = "(obj, ondragover) => { obj.ondragover = ondragover; }"

///|
extern "js" fn document_ondragstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragstart"

///|
fn document_ondragstart_ffi(obj : JsValue) -> EventHandler {
  document_ondragstart_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_ondragstart_ffi(
  obj : JsValue,
  ondragstart : JsValue,
) -> Unit = "(obj, ondragstart) => { obj.ondragstart = ondragstart; }"

///|
extern "js" fn document_ondrop_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondrop"

///|
fn document_ondrop_ffi(obj : JsValue) -> EventHandler {
  document_ondrop_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_ondrop_ffi(obj : JsValue, ondrop : JsValue) -> Unit = "(obj, ondrop) => { obj.ondrop = ondrop; }"

///|
extern "js" fn document_ondurationchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondurationchange"

///|
fn document_ondurationchange_ffi(obj : JsValue) -> EventHandler {
  document_ondurationchange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_ondurationchange_ffi(
  obj : JsValue,
  ondurationchange : JsValue,
) -> Unit = "(obj, ondurationchange) => { obj.ondurationchange = ondurationchange; }"

///|
extern "js" fn document_onemptied_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onemptied"

///|
fn document_onemptied_ffi(obj : JsValue) -> EventHandler {
  document_onemptied_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onemptied_ffi(
  obj : JsValue,
  onemptied : JsValue,
) -> Unit = "(obj, onemptied) => { obj.onemptied = onemptied; }"

///|
extern "js" fn document_onended_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onended"

///|
fn document_onended_ffi(obj : JsValue) -> EventHandler {
  document_onended_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onended_ffi(
  obj : JsValue,
  onended : JsValue,
) -> Unit = "(obj, onended) => { obj.onended = onended; }"

///|
extern "js" fn document_onerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onerror"

///|
fn document_onerror_ffi(obj : JsValue) -> OnErrorEventHandler {
  document_onerror_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onerror_ffi(
  obj : JsValue,
  onerror : JsValue,
) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
extern "js" fn document_onfocus_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onfocus"

///|
fn document_onfocus_ffi(obj : JsValue) -> EventHandler {
  document_onfocus_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onfocus_ffi(
  obj : JsValue,
  onfocus : JsValue,
) -> Unit = "(obj, onfocus) => { obj.onfocus = onfocus; }"

///|
extern "js" fn document_onformdata_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onformdata"

///|
fn document_onformdata_ffi(obj : JsValue) -> EventHandler {
  document_onformdata_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onformdata_ffi(
  obj : JsValue,
  onformdata : JsValue,
) -> Unit = "(obj, onformdata) => { obj.onformdata = onformdata; }"

///|
extern "js" fn document_oninput_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oninput"

///|
fn document_oninput_ffi(obj : JsValue) -> EventHandler {
  document_oninput_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_oninput_ffi(
  obj : JsValue,
  oninput : JsValue,
) -> Unit = "(obj, oninput) => { obj.oninput = oninput; }"

///|
extern "js" fn document_oninvalid_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oninvalid"

///|
fn document_oninvalid_ffi(obj : JsValue) -> EventHandler {
  document_oninvalid_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_oninvalid_ffi(
  obj : JsValue,
  oninvalid : JsValue,
) -> Unit = "(obj, oninvalid) => { obj.oninvalid = oninvalid; }"

///|
extern "js" fn document_onkeydown_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onkeydown"

///|
fn document_onkeydown_ffi(obj : JsValue) -> EventHandler {
  document_onkeydown_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onkeydown_ffi(
  obj : JsValue,
  onkeydown : JsValue,
) -> Unit = "(obj, onkeydown) => { obj.onkeydown = onkeydown; }"

///|
extern "js" fn document_onkeypress_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onkeypress"

///|
fn document_onkeypress_ffi(obj : JsValue) -> EventHandler {
  document_onkeypress_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onkeypress_ffi(
  obj : JsValue,
  onkeypress : JsValue,
) -> Unit = "(obj, onkeypress) => { obj.onkeypress = onkeypress; }"

///|
extern "js" fn document_onkeyup_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onkeyup"

///|
fn document_onkeyup_ffi(obj : JsValue) -> EventHandler {
  document_onkeyup_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onkeyup_ffi(
  obj : JsValue,
  onkeyup : JsValue,
) -> Unit = "(obj, onkeyup) => { obj.onkeyup = onkeyup; }"

///|
extern "js" fn document_onload_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onload"

///|
fn document_onload_ffi(obj : JsValue) -> EventHandler {
  document_onload_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onload_ffi(obj : JsValue, onload : JsValue) -> Unit = "(obj, onload) => { obj.onload = onload; }"

///|
extern "js" fn document_onloadeddata_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onloadeddata"

///|
fn document_onloadeddata_ffi(obj : JsValue) -> EventHandler {
  document_onloadeddata_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onloadeddata_ffi(
  obj : JsValue,
  onloadeddata : JsValue,
) -> Unit = "(obj, onloadeddata) => { obj.onloadeddata = onloadeddata; }"

///|
extern "js" fn document_onloadedmetadata_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onloadedmetadata"

///|
fn document_onloadedmetadata_ffi(obj : JsValue) -> EventHandler {
  document_onloadedmetadata_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onloadedmetadata_ffi(
  obj : JsValue,
  onloadedmetadata : JsValue,
) -> Unit = "(obj, onloadedmetadata) => { obj.onloadedmetadata = onloadedmetadata; }"

///|
extern "js" fn document_onloadstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onloadstart"

///|
fn document_onloadstart_ffi(obj : JsValue) -> EventHandler {
  document_onloadstart_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onloadstart_ffi(
  obj : JsValue,
  onloadstart : JsValue,
) -> Unit = "(obj, onloadstart) => { obj.onloadstart = onloadstart; }"

///|
extern "js" fn document_onmousedown_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmousedown"

///|
fn document_onmousedown_ffi(obj : JsValue) -> EventHandler {
  document_onmousedown_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onmousedown_ffi(
  obj : JsValue,
  onmousedown : JsValue,
) -> Unit = "(obj, onmousedown) => { obj.onmousedown = onmousedown; }"

///|
extern "js" fn document_onmouseenter_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseenter"

///|
fn document_onmouseenter_ffi(obj : JsValue) -> EventHandler {
  document_onmouseenter_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onmouseenter_ffi(
  obj : JsValue,
  onmouseenter : JsValue,
) -> Unit = "(obj, onmouseenter) => { obj.onmouseenter = onmouseenter; }"

///|
extern "js" fn document_onmouseleave_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseleave"

///|
fn document_onmouseleave_ffi(obj : JsValue) -> EventHandler {
  document_onmouseleave_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onmouseleave_ffi(
  obj : JsValue,
  onmouseleave : JsValue,
) -> Unit = "(obj, onmouseleave) => { obj.onmouseleave = onmouseleave; }"

///|
extern "js" fn document_onmousemove_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmousemove"

///|
fn document_onmousemove_ffi(obj : JsValue) -> EventHandler {
  document_onmousemove_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onmousemove_ffi(
  obj : JsValue,
  onmousemove : JsValue,
) -> Unit = "(obj, onmousemove) => { obj.onmousemove = onmousemove; }"

///|
extern "js" fn document_onmouseout_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseout"

///|
fn document_onmouseout_ffi(obj : JsValue) -> EventHandler {
  document_onmouseout_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onmouseout_ffi(
  obj : JsValue,
  onmouseout : JsValue,
) -> Unit = "(obj, onmouseout) => { obj.onmouseout = onmouseout; }"

///|
extern "js" fn document_onmouseover_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseover"

///|
fn document_onmouseover_ffi(obj : JsValue) -> EventHandler {
  document_onmouseover_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onmouseover_ffi(
  obj : JsValue,
  onmouseover : JsValue,
) -> Unit = "(obj, onmouseover) => { obj.onmouseover = onmouseover; }"

///|
extern "js" fn document_onmouseup_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseup"

///|
fn document_onmouseup_ffi(obj : JsValue) -> EventHandler {
  document_onmouseup_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onmouseup_ffi(
  obj : JsValue,
  onmouseup : JsValue,
) -> Unit = "(obj, onmouseup) => { obj.onmouseup = onmouseup; }"

///|
extern "js" fn document_onpaste_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpaste"

///|
fn document_onpaste_ffi(obj : JsValue) -> EventHandler {
  document_onpaste_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onpaste_ffi(
  obj : JsValue,
  onpaste : JsValue,
) -> Unit = "(obj, onpaste) => { obj.onpaste = onpaste; }"

///|
extern "js" fn document_onpause_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpause"

///|
fn document_onpause_ffi(obj : JsValue) -> EventHandler {
  document_onpause_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onpause_ffi(
  obj : JsValue,
  onpause : JsValue,
) -> Unit = "(obj, onpause) => { obj.onpause = onpause; }"

///|
extern "js" fn document_onplay_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onplay"

///|
fn document_onplay_ffi(obj : JsValue) -> EventHandler {
  document_onplay_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onplay_ffi(obj : JsValue, onplay : JsValue) -> Unit = "(obj, onplay) => { obj.onplay = onplay; }"

///|
extern "js" fn document_onplaying_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onplaying"

///|
fn document_onplaying_ffi(obj : JsValue) -> EventHandler {
  document_onplaying_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onplaying_ffi(
  obj : JsValue,
  onplaying : JsValue,
) -> Unit = "(obj, onplaying) => { obj.onplaying = onplaying; }"

///|
extern "js" fn document_onprogress_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onprogress"

///|
fn document_onprogress_ffi(obj : JsValue) -> EventHandler {
  document_onprogress_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onprogress_ffi(
  obj : JsValue,
  onprogress : JsValue,
) -> Unit = "(obj, onprogress) => { obj.onprogress = onprogress; }"

///|
extern "js" fn document_onratechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onratechange"

///|
fn document_onratechange_ffi(obj : JsValue) -> EventHandler {
  document_onratechange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onratechange_ffi(
  obj : JsValue,
  onratechange : JsValue,
) -> Unit = "(obj, onratechange) => { obj.onratechange = onratechange; }"

///|
extern "js" fn document_onreset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onreset"

///|
fn document_onreset_ffi(obj : JsValue) -> EventHandler {
  document_onreset_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onreset_ffi(
  obj : JsValue,
  onreset : JsValue,
) -> Unit = "(obj, onreset) => { obj.onreset = onreset; }"

///|
extern "js" fn document_onresize_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onresize"

///|
fn document_onresize_ffi(obj : JsValue) -> EventHandler {
  document_onresize_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onresize_ffi(
  obj : JsValue,
  onresize : JsValue,
) -> Unit = "(obj, onresize) => { obj.onresize = onresize; }"

///|
extern "js" fn document_onscroll_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onscroll"

///|
fn document_onscroll_ffi(obj : JsValue) -> EventHandler {
  document_onscroll_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onscroll_ffi(
  obj : JsValue,
  onscroll : JsValue,
) -> Unit = "(obj, onscroll) => { obj.onscroll = onscroll; }"

///|
extern "js" fn document_onscrollend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onscrollend"

///|
fn document_onscrollend_ffi(obj : JsValue) -> EventHandler {
  document_onscrollend_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onscrollend_ffi(
  obj : JsValue,
  onscrollend : JsValue,
) -> Unit = "(obj, onscrollend) => { obj.onscrollend = onscrollend; }"

///|
extern "js" fn document_onsecuritypolicyviolation_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onsecuritypolicyviolation"

///|
fn document_onsecuritypolicyviolation_ffi(obj : JsValue) -> EventHandler {
  document_onsecuritypolicyviolation_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onsecuritypolicyviolation_ffi(
  obj : JsValue,
  onsecuritypolicyviolation : JsValue,
) -> Unit = "(obj, onsecuritypolicyviolation) => { obj.onsecuritypolicyviolation = onsecuritypolicyviolation; }"

///|
extern "js" fn document_onseeked_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onseeked"

///|
fn document_onseeked_ffi(obj : JsValue) -> EventHandler {
  document_onseeked_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onseeked_ffi(
  obj : JsValue,
  onseeked : JsValue,
) -> Unit = "(obj, onseeked) => { obj.onseeked = onseeked; }"

///|
extern "js" fn document_onseeking_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onseeking"

///|
fn document_onseeking_ffi(obj : JsValue) -> EventHandler {
  document_onseeking_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onseeking_ffi(
  obj : JsValue,
  onseeking : JsValue,
) -> Unit = "(obj, onseeking) => { obj.onseeking = onseeking; }"

///|
extern "js" fn document_onselect_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onselect"

///|
fn document_onselect_ffi(obj : JsValue) -> EventHandler {
  document_onselect_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onselect_ffi(
  obj : JsValue,
  onselect : JsValue,
) -> Unit = "(obj, onselect) => { obj.onselect = onselect; }"

///|
extern "js" fn document_onslotchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onslotchange"

///|
fn document_onslotchange_ffi(obj : JsValue) -> EventHandler {
  document_onslotchange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onslotchange_ffi(
  obj : JsValue,
  onslotchange : JsValue,
) -> Unit = "(obj, onslotchange) => { obj.onslotchange = onslotchange; }"

///|
extern "js" fn document_onstalled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onstalled"

///|
fn document_onstalled_ffi(obj : JsValue) -> EventHandler {
  document_onstalled_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onstalled_ffi(
  obj : JsValue,
  onstalled : JsValue,
) -> Unit = "(obj, onstalled) => { obj.onstalled = onstalled; }"

///|
extern "js" fn document_onsubmit_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onsubmit"

///|
fn document_onsubmit_ffi(obj : JsValue) -> EventHandler {
  document_onsubmit_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onsubmit_ffi(
  obj : JsValue,
  onsubmit : JsValue,
) -> Unit = "(obj, onsubmit) => { obj.onsubmit = onsubmit; }"

///|
extern "js" fn document_onsuspend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onsuspend"

///|
fn document_onsuspend_ffi(obj : JsValue) -> EventHandler {
  document_onsuspend_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onsuspend_ffi(
  obj : JsValue,
  onsuspend : JsValue,
) -> Unit = "(obj, onsuspend) => { obj.onsuspend = onsuspend; }"

///|
extern "js" fn document_ontimeupdate_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontimeupdate"

///|
fn document_ontimeupdate_ffi(obj : JsValue) -> EventHandler {
  document_ontimeupdate_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_ontimeupdate_ffi(
  obj : JsValue,
  ontimeupdate : JsValue,
) -> Unit = "(obj, ontimeupdate) => { obj.ontimeupdate = ontimeupdate; }"

///|
extern "js" fn document_ontoggle_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontoggle"

///|
fn document_ontoggle_ffi(obj : JsValue) -> EventHandler {
  document_ontoggle_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_ontoggle_ffi(
  obj : JsValue,
  ontoggle : JsValue,
) -> Unit = "(obj, ontoggle) => { obj.ontoggle = ontoggle; }"

///|
extern "js" fn document_onvolumechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onvolumechange"

///|
fn document_onvolumechange_ffi(obj : JsValue) -> EventHandler {
  document_onvolumechange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onvolumechange_ffi(
  obj : JsValue,
  onvolumechange : JsValue,
) -> Unit = "(obj, onvolumechange) => { obj.onvolumechange = onvolumechange; }"

///|
extern "js" fn document_onwaiting_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onwaiting"

///|
fn document_onwaiting_ffi(obj : JsValue) -> EventHandler {
  document_onwaiting_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onwaiting_ffi(
  obj : JsValue,
  onwaiting : JsValue,
) -> Unit = "(obj, onwaiting) => { obj.onwaiting = onwaiting; }"

///|
extern "js" fn document_onwebkitanimationend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onwebkitanimationend"

///|
fn document_onwebkitanimationend_ffi(obj : JsValue) -> EventHandler {
  document_onwebkitanimationend_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onwebkitanimationend_ffi(
  obj : JsValue,
  onwebkitanimationend : JsValue,
) -> Unit = "(obj, onwebkitanimationend) => { obj.onwebkitanimationend = onwebkitanimationend; }"

///|
extern "js" fn document_onwebkitanimationiteration_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onwebkitanimationiteration"

///|
fn document_onwebkitanimationiteration_ffi(obj : JsValue) -> EventHandler {
  document_onwebkitanimationiteration_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onwebkitanimationiteration_ffi(
  obj : JsValue,
  onwebkitanimationiteration : JsValue,
) -> Unit = "(obj, onwebkitanimationiteration) => { obj.onwebkitanimationiteration = onwebkitanimationiteration; }"

///|
extern "js" fn document_onwebkitanimationstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onwebkitanimationstart"

///|
fn document_onwebkitanimationstart_ffi(obj : JsValue) -> EventHandler {
  document_onwebkitanimationstart_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onwebkitanimationstart_ffi(
  obj : JsValue,
  onwebkitanimationstart : JsValue,
) -> Unit = "(obj, onwebkitanimationstart) => { obj.onwebkitanimationstart = onwebkitanimationstart; }"

///|
extern "js" fn document_onwebkittransitionend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onwebkittransitionend"

///|
fn document_onwebkittransitionend_ffi(obj : JsValue) -> EventHandler {
  document_onwebkittransitionend_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onwebkittransitionend_ffi(
  obj : JsValue,
  onwebkittransitionend : JsValue,
) -> Unit = "(obj, onwebkittransitionend) => { obj.onwebkittransitionend = onwebkittransitionend; }"

///|
extern "js" fn document_onwheel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onwheel"

///|
fn document_onwheel_ffi(obj : JsValue) -> EventHandler {
  document_onwheel_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onwheel_ffi(
  obj : JsValue,
  onwheel : JsValue,
) -> Unit = "(obj, onwheel) => { obj.onwheel = onwheel; }"

///|
extern "js" fn document_ontouchstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontouchstart"

///|
fn document_ontouchstart_ffi(obj : JsValue) -> EventHandler {
  document_ontouchstart_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_ontouchstart_ffi(
  obj : JsValue,
  ontouchstart : JsValue,
) -> Unit = "(obj, ontouchstart) => { obj.ontouchstart = ontouchstart; }"

///|
extern "js" fn document_ontouchend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontouchend"

///|
fn document_ontouchend_ffi(obj : JsValue) -> EventHandler {
  document_ontouchend_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_ontouchend_ffi(
  obj : JsValue,
  ontouchend : JsValue,
) -> Unit = "(obj, ontouchend) => { obj.ontouchend = ontouchend; }"

///|
extern "js" fn document_ontouchmove_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontouchmove"

///|
fn document_ontouchmove_ffi(obj : JsValue) -> EventHandler {
  document_ontouchmove_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_ontouchmove_ffi(
  obj : JsValue,
  ontouchmove : JsValue,
) -> Unit = "(obj, ontouchmove) => { obj.ontouchmove = ontouchmove; }"

///|
extern "js" fn document_ontouchcancel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontouchcancel"

///|
fn document_ontouchcancel_ffi(obj : JsValue) -> EventHandler {
  document_ontouchcancel_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_ontouchcancel_ffi(
  obj : JsValue,
  ontouchcancel : JsValue,
) -> Unit = "(obj, ontouchcancel) => { obj.ontouchcancel = ontouchcancel; }"

///|
extern "js" fn document_onpointerover_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerover"

///|
fn document_onpointerover_ffi(obj : JsValue) -> EventHandler {
  document_onpointerover_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onpointerover_ffi(
  obj : JsValue,
  onpointerover : JsValue,
) -> Unit = "(obj, onpointerover) => { obj.onpointerover = onpointerover; }"

///|
extern "js" fn document_onpointerenter_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerenter"

///|
fn document_onpointerenter_ffi(obj : JsValue) -> EventHandler {
  document_onpointerenter_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onpointerenter_ffi(
  obj : JsValue,
  onpointerenter : JsValue,
) -> Unit = "(obj, onpointerenter) => { obj.onpointerenter = onpointerenter; }"

///|
extern "js" fn document_onpointerdown_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerdown"

///|
fn document_onpointerdown_ffi(obj : JsValue) -> EventHandler {
  document_onpointerdown_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onpointerdown_ffi(
  obj : JsValue,
  onpointerdown : JsValue,
) -> Unit = "(obj, onpointerdown) => { obj.onpointerdown = onpointerdown; }"

///|
extern "js" fn document_onpointermove_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointermove"

///|
fn document_onpointermove_ffi(obj : JsValue) -> EventHandler {
  document_onpointermove_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onpointermove_ffi(
  obj : JsValue,
  onpointermove : JsValue,
) -> Unit = "(obj, onpointermove) => { obj.onpointermove = onpointermove; }"

///|
extern "js" fn document_onpointerrawupdate_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerrawupdate"

///|
fn document_onpointerrawupdate_ffi(obj : JsValue) -> EventHandler {
  document_onpointerrawupdate_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onpointerrawupdate_ffi(
  obj : JsValue,
  onpointerrawupdate : JsValue,
) -> Unit = "(obj, onpointerrawupdate) => { obj.onpointerrawupdate = onpointerrawupdate; }"

///|
extern "js" fn document_onpointerup_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerup"

///|
fn document_onpointerup_ffi(obj : JsValue) -> EventHandler {
  document_onpointerup_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onpointerup_ffi(
  obj : JsValue,
  onpointerup : JsValue,
) -> Unit = "(obj, onpointerup) => { obj.onpointerup = onpointerup; }"

///|
extern "js" fn document_onpointercancel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointercancel"

///|
fn document_onpointercancel_ffi(obj : JsValue) -> EventHandler {
  document_onpointercancel_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onpointercancel_ffi(
  obj : JsValue,
  onpointercancel : JsValue,
) -> Unit = "(obj, onpointercancel) => { obj.onpointercancel = onpointercancel; }"

///|
extern "js" fn document_onpointerout_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerout"

///|
fn document_onpointerout_ffi(obj : JsValue) -> EventHandler {
  document_onpointerout_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onpointerout_ffi(
  obj : JsValue,
  onpointerout : JsValue,
) -> Unit = "(obj, onpointerout) => { obj.onpointerout = onpointerout; }"

///|
extern "js" fn document_onpointerleave_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerleave"

///|
fn document_onpointerleave_ffi(obj : JsValue) -> EventHandler {
  document_onpointerleave_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onpointerleave_ffi(
  obj : JsValue,
  onpointerleave : JsValue,
) -> Unit = "(obj, onpointerleave) => { obj.onpointerleave = onpointerleave; }"

///|
extern "js" fn document_ongotpointercapture_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ongotpointercapture"

///|
fn document_ongotpointercapture_ffi(obj : JsValue) -> EventHandler {
  document_ongotpointercapture_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_ongotpointercapture_ffi(
  obj : JsValue,
  ongotpointercapture : JsValue,
) -> Unit = "(obj, ongotpointercapture) => { obj.ongotpointercapture = ongotpointercapture; }"

///|
extern "js" fn document_onlostpointercapture_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onlostpointercapture"

///|
fn document_onlostpointercapture_ffi(obj : JsValue) -> EventHandler {
  document_onlostpointercapture_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onlostpointercapture_ffi(
  obj : JsValue,
  onlostpointercapture : JsValue,
) -> Unit = "(obj, onlostpointercapture) => { obj.onlostpointercapture = onlostpointercapture; }"

///|
extern "js" fn document_onselectstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onselectstart"

///|
fn document_onselectstart_ffi(obj : JsValue) -> EventHandler {
  document_onselectstart_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onselectstart_ffi(
  obj : JsValue,
  onselectstart : JsValue,
) -> Unit = "(obj, onselectstart) => { obj.onselectstart = onselectstart; }"

///|
extern "js" fn document_onselectionchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onselectionchange"

///|
fn document_onselectionchange_ffi(obj : JsValue) -> EventHandler {
  document_onselectionchange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn document_set_onselectionchange_ffi(
  obj : JsValue,
  onselectionchange : JsValue,
) -> Unit = "(obj, onselectionchange) => { obj.onselectionchange = onselectionchange; }"

///|
extern "js" fn document_get_box_quads_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.getBoxQuads(options)"

///|
fn document_get_box_quads_ffi(
  obj : JsValue,
  options : JsValue,
) -> Array[DOMQuad] {
  document_get_box_quads_ffi_js(obj, options).unsafe_cast()
}

///|
extern "js" fn document_convert_quad_from_node_ffi_js(
  obj : JsValue,
  quad : JsValue,
  from : JsValue,
  options : JsValue,
) -> JsValue = "(obj, quad, from, options) => obj.convertQuadFromNode(quad, from, options)"

///|
fn document_convert_quad_from_node_ffi(
  obj : JsValue,
  quad : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMQuad {
  document_convert_quad_from_node_ffi_js(obj, quad, from, options).unsafe_cast()
}

///|
extern "js" fn document_convert_rect_from_node_ffi_js(
  obj : JsValue,
  rect : JsValue,
  from : JsValue,
  options : JsValue,
) -> JsValue = "(obj, rect, from, options) => obj.convertRectFromNode(rect, from, options)"

///|
fn document_convert_rect_from_node_ffi(
  obj : JsValue,
  rect : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMQuad {
  document_convert_rect_from_node_ffi_js(obj, rect, from, options).unsafe_cast()
}

///|
extern "js" fn document_convert_point_from_node_ffi_js(
  obj : JsValue,
  point : JsValue,
  from : JsValue,
  options : JsValue,
) -> JsValue = "(obj, point, from, options) => obj.convertPointFromNode(point, from, options)"

///|
fn document_convert_point_from_node_ffi(
  obj : JsValue,
  point : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMPoint {
  document_convert_point_from_node_ffi_js(obj, point, from, options).unsafe_cast()
}
