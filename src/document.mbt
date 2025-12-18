// Auto-generated MoonBit bindings for Document interface
// Do not edit manually

#external
pub type Document

pub impl TJsValue for Document with to_js(self: Document) -> JsValue = "%identity"


pub fn[T: TDocument] Document::into(self : Document) -> T = "%identity"
pub impl TDocument for Document

pub fn Document::new() -> Document = "webapi_Document" "new"

/// Union arg trait
pub(open) trait TCreateElementOptionsArg {
  to_js(self : Self) -> JsValue
}

pub impl TCreateElementOptionsArg for String with to_js(self : String) -> JsValue = "%identity"

pub impl TCreateElementOptionsArg for ElementCreationOptions with to_js(self : ElementCreationOptions) -> JsValue = "%identity"

/// Union arg trait
pub(open) trait TCreateElementNSOptionsArg {
  to_js(self : Self) -> JsValue
}

pub impl TCreateElementNSOptionsArg for String with to_js(self : String) -> JsValue = "%identity"

pub impl TCreateElementNSOptionsArg for ElementCreationOptions with to_js(self : ElementCreationOptions) -> JsValue = "%identity"

/// Union arg trait
pub(open) trait TImportNodeOptionsArg {
  to_js(self : Self) -> JsValue
}

pub impl TImportNodeOptionsArg for Bool with to_js(self : Bool) -> JsValue = "%identity"

pub impl TImportNodeOptionsArg for ImportNodeOptions with to_js(self : ImportNodeOptions) -> JsValue = "%identity"

pub trait TDocument: TJsValue + TTNode {
  root_element(self: Self) -> SVGSVGElement = _
  implementation(self: Self) -> &TDOMImplementation = _
  u_r_l(self: Self) -> String = _
  document_u_r_i(self: Self) -> String = _
  compat_mode(self: Self) -> String = _
  character_set(self: Self) -> String = _
  charset(self: Self) -> String = _
  input_encoding(self: Self) -> String = _
  content_type(self: Self) -> String = _
  doctype(self: Self) -> &TDocumentType = _
  document_element(self: Self) -> &TElement = _
  get_elements_by_tag_name(self: Self, qualified_name : String) -> &THTMLCollection = _
  get_elements_by_tag_name_n_s(self: Self, namespace : String, local_name : String) -> &THTMLCollection = _
  get_elements_by_class_name(self: Self, class_names : String) -> &THTMLCollection = _
  create_element(self: Self, local_name : String, options? : &TCreateElementOptionsArg) -> &TElement = _
  create_element_n_s(self: Self, namespace : String, qualified_name : String, options? : &TCreateElementNSOptionsArg) -> &TElement = _
  create_document_fragment(self: Self) -> &TDocumentFragment = _
  create_text_node(self: Self, data : String) -> &TText = _
  create_c_d_a_t_a_section(self: Self, data : String) -> &TCDATASection = _
  create_comment(self: Self, data : String) -> &TComment = _
  create_processing_instruction(self: Self, target : String, data : String) -> &TProcessingInstruction = _
  import_node(self: Self, node : &TNode, options? : &TImportNodeOptionsArg) -> &TNode = _
  adopt_node(self: Self, node : &TNode) -> &TNode = _
  create_attribute(self: Self, local_name : String) -> &TAttr = _
  create_attribute_n_s(self: Self, namespace : String, qualified_name : String) -> &TAttr = _
  create_event(self: Self, interface : String) -> &TEvent = _
  create_range(self: Self) -> &TRange = _
  create_node_iterator(self: Self, root : &TNode, what_to_show? : UInt, filter? : NodeFilter) -> NodeIterator = _
  create_tree_walker(self: Self, root : &TNode, what_to_show? : UInt, filter? : NodeFilter) -> &TTreeWalker = _
  parse_h_t_m_l_unsafe(html : String) -> &TDocument = _
  location(self: Self) -> Location = _
  domain(self: Self) -> String = _
  set_domain(self: Self, value : String) -> Unit = _
  referrer(self: Self) -> String = _
  cookie(self: Self) -> String = _
  set_cookie(self: Self, value : String) -> Unit = _
  last_modified(self: Self) -> String = _
  ready_state(self: Self) -> DocumentReadyState = _
  title(self: Self) -> String = _
  set_title(self: Self, value : String) -> Unit = _
  dir(self: Self) -> String = _
  set_dir(self: Self, value : String) -> Unit = _
  body(self: Self) -> &THTMLElement = _
  set_body(self: Self, value : &THTMLElement) -> Unit = _
  head(self: Self) -> &THTMLHeadElement = _
  images(self: Self) -> &THTMLCollection = _
  embeds(self: Self) -> &THTMLCollection = _
  plugins(self: Self) -> &THTMLCollection = _
  links(self: Self) -> &THTMLCollection = _
  forms(self: Self) -> &THTMLCollection = _
  scripts(self: Self) -> &THTMLCollection = _
  get_elements_by_name(self: Self, element_name : String) -> &TNodeList = _
  current_script(self: Self) -> HTMLOrSVGScriptElement = _
  open(self: Self, unused1? : String, unused2? : String) -> &TDocument = _
  open(self: Self, url : String, name : String, features : String) -> WindowProxy = _
  close(self: Self) -> Unit = _
  write(self: Self, text : String) -> Unit = _
  writeln(self: Self, text : String) -> Unit = _
  default_view(self: Self) -> WindowProxy = _
  has_focus(self: Self) -> Bool = _
  design_mode(self: Self) -> String = _
  set_design_mode(self: Self, value : String) -> Unit = _
  exec_command(self: Self, command_id : String, show_u_i? : Bool, value? : String) -> Bool = _
  query_command_enabled(self: Self, command_id : String) -> Bool = _
  query_command_indeterm(self: Self, command_id : String) -> Bool = _
  query_command_state(self: Self, command_id : String) -> Bool = _
  query_command_supported(self: Self, command_id : String) -> Bool = _
  query_command_value(self: Self, command_id : String) -> String = _
  hidden(self: Self) -> Bool = _
  visibility_state(self: Self) -> DocumentVisibilityState = _
  onreadystatechange(self: Self) -> EventHandler = _
  set_onreadystatechange(self: Self, value : EventHandler) -> Unit = _
  onvisibilitychange(self: Self) -> EventHandler = _
  set_onvisibilitychange(self: Self, value : EventHandler) -> Unit = _
  fg_color(self: Self) -> String = _
  set_fg_color(self: Self, value : String) -> Unit = _
  link_color(self: Self) -> String = _
  set_link_color(self: Self, value : String) -> Unit = _
  vlink_color(self: Self) -> String = _
  set_vlink_color(self: Self, value : String) -> Unit = _
  alink_color(self: Self) -> String = _
  set_alink_color(self: Self, value : String) -> Unit = _
  bg_color(self: Self) -> String = _
  set_bg_color(self: Self, value : String) -> Unit = _
  anchors(self: Self) -> &THTMLCollection = _
  applets(self: Self) -> &THTMLCollection = _
  clear(self: Self) -> Unit = _
  capture_events(self: Self) -> Unit = _
  release_events(self: Self) -> Unit = _
  all(self: Self) -> HTMLAllCollection = _
  element_from_point(self: Self, x : Double, y : Double) -> &TElement = _
  elements_from_point(self: Self, x : Double, y : Double) -> Array[&TElement] = _
  caret_position_from_point(self: Self, x : Double, y : Double, options? : CaretPositionFromPointOptions) -> CaretPosition = _
  scrolling_element(self: Self) -> &TElement = _
}

///|
fn document_root_element_ffi(obj : JsValue) -> JsValue = "webapi_Document" "rootElement"

///|
impl TDocument with root_element(self : Self) -> SVGSVGElement {
  document_root_element_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_implementation_ffi(obj : JsValue) -> JsValue = "webapi_Document" "implementation"

///|
impl TDocument with implementation(self : Self) -> &TDOMImplementation {
  document_implementation_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_u_r_l_ffi(obj : JsValue) -> String = "webapi_Document" "URL"

///|
impl TDocument with u_r_l(self : Self) -> String {
  document_u_r_l_ffi(self.to_js())
}

///|
fn document_document_u_r_i_ffi(obj : JsValue) -> String = "webapi_Document" "documentURI"

///|
impl TDocument with document_u_r_i(self : Self) -> String {
  document_document_u_r_i_ffi(self.to_js())
}

///|
fn document_compat_mode_ffi(obj : JsValue) -> String = "webapi_Document" "compatMode"

///|
impl TDocument with compat_mode(self : Self) -> String {
  document_compat_mode_ffi(self.to_js())
}

///|
fn document_character_set_ffi(obj : JsValue) -> String = "webapi_Document" "characterSet"

///|
impl TDocument with character_set(self : Self) -> String {
  document_character_set_ffi(self.to_js())
}

///|
fn document_charset_ffi(obj : JsValue) -> String = "webapi_Document" "charset"

///|
impl TDocument with charset(self : Self) -> String {
  document_charset_ffi(self.to_js())
}

///|
fn document_input_encoding_ffi(obj : JsValue) -> String = "webapi_Document" "inputEncoding"

///|
impl TDocument with input_encoding(self : Self) -> String {
  document_input_encoding_ffi(self.to_js())
}

///|
fn document_content_type_ffi(obj : JsValue) -> String = "webapi_Document" "contentType"

///|
impl TDocument with content_type(self : Self) -> String {
  document_content_type_ffi(self.to_js())
}

///|
fn document_doctype_ffi(obj : JsValue) -> JsValue = "webapi_Document" "doctype"

///|
impl TDocument with doctype(self : Self) -> &TDocumentType {
  document_doctype_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_document_element_ffi(obj : JsValue) -> JsValue = "webapi_Document" "documentElement"

///|
impl TDocument with document_element(self : Self) -> &TElement {
  document_document_element_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_location_ffi(obj : JsValue) -> JsValue = "webapi_Document" "location"

///|
impl TDocument with location(self : Self) -> Location {
  document_location_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_domain_ffi(obj : JsValue) -> String = "webapi_Document" "domain"

///|
impl TDocument with domain(self : Self) -> String {
  document_domain_ffi(self.to_js())
}

///|
fn document_set_domain_ffi(obj : JsValue, value : String) -> Unit = "webapi_Document" "set_domain"

///|
impl TDocument with set_domain(self : Self, value : String) -> Unit {
  document_set_domain_ffi(self.to_js(), value)
}

///|
fn document_referrer_ffi(obj : JsValue) -> String = "webapi_Document" "referrer"

///|
impl TDocument with referrer(self : Self) -> String {
  document_referrer_ffi(self.to_js())
}

///|
fn document_cookie_ffi(obj : JsValue) -> String = "webapi_Document" "cookie"

///|
impl TDocument with cookie(self : Self) -> String {
  document_cookie_ffi(self.to_js())
}

///|
fn document_set_cookie_ffi(obj : JsValue, value : String) -> Unit = "webapi_Document" "set_cookie"

///|
impl TDocument with set_cookie(self : Self, value : String) -> Unit {
  document_set_cookie_ffi(self.to_js(), value)
}

///|
fn document_last_modified_ffi(obj : JsValue) -> String = "webapi_Document" "lastModified"

///|
impl TDocument with last_modified(self : Self) -> String {
  document_last_modified_ffi(self.to_js())
}

///|
fn document_ready_state_ffi(obj : JsValue) -> JsValue = "webapi_Document" "readyState"

///|
impl TDocument with ready_state(self : Self) -> DocumentReadyState {
  document_ready_state_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_title_ffi(obj : JsValue) -> String = "webapi_Document" "title"

///|
impl TDocument with title(self : Self) -> String {
  document_title_ffi(self.to_js())
}

///|
fn document_set_title_ffi(obj : JsValue, value : String) -> Unit = "webapi_Document" "set_title"

///|
impl TDocument with set_title(self : Self, value : String) -> Unit {
  document_set_title_ffi(self.to_js(), value)
}

///|
fn document_dir_ffi(obj : JsValue) -> String = "webapi_Document" "dir"

///|
impl TDocument with dir(self : Self) -> String {
  document_dir_ffi(self.to_js())
}

///|
fn document_set_dir_ffi(obj : JsValue, value : String) -> Unit = "webapi_Document" "set_dir"

///|
impl TDocument with set_dir(self : Self, value : String) -> Unit {
  document_set_dir_ffi(self.to_js(), value)
}

///|
fn document_body_ffi(obj : JsValue) -> JsValue = "webapi_Document" "body"

///|
impl TDocument with body(self : Self) -> &THTMLElement {
  document_body_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_body_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_body"

///|
impl TDocument with set_body(self : Self, value : &THTMLElement) -> Unit {
  document_set_body_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_head_ffi(obj : JsValue) -> JsValue = "webapi_Document" "head"

///|
impl TDocument with head(self : Self) -> &THTMLHeadElement {
  document_head_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_images_ffi(obj : JsValue) -> JsValue = "webapi_Document" "images"

///|
impl TDocument with images(self : Self) -> &THTMLCollection {
  document_images_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_embeds_ffi(obj : JsValue) -> JsValue = "webapi_Document" "embeds"

///|
impl TDocument with embeds(self : Self) -> &THTMLCollection {
  document_embeds_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_plugins_ffi(obj : JsValue) -> JsValue = "webapi_Document" "plugins"

///|
impl TDocument with plugins(self : Self) -> &THTMLCollection {
  document_plugins_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_links_ffi(obj : JsValue) -> JsValue = "webapi_Document" "links"

///|
impl TDocument with links(self : Self) -> &THTMLCollection {
  document_links_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_forms_ffi(obj : JsValue) -> JsValue = "webapi_Document" "forms"

///|
impl TDocument with forms(self : Self) -> &THTMLCollection {
  document_forms_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_scripts_ffi(obj : JsValue) -> JsValue = "webapi_Document" "scripts"

///|
impl TDocument with scripts(self : Self) -> &THTMLCollection {
  document_scripts_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_current_script_ffi(obj : JsValue) -> JsValue = "webapi_Document" "currentScript"

///|
impl TDocument with current_script(self : Self) -> HTMLOrSVGScriptElement {
  document_current_script_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_default_view_ffi(obj : JsValue) -> JsValue = "webapi_Document" "defaultView"

///|
impl TDocument with default_view(self : Self) -> WindowProxy {
  document_default_view_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_design_mode_ffi(obj : JsValue) -> String = "webapi_Document" "designMode"

///|
impl TDocument with design_mode(self : Self) -> String {
  document_design_mode_ffi(self.to_js())
}

///|
fn document_set_design_mode_ffi(obj : JsValue, value : String) -> Unit = "webapi_Document" "set_designMode"

///|
impl TDocument with set_design_mode(self : Self, value : String) -> Unit {
  document_set_design_mode_ffi(self.to_js(), value)
}

///|
fn document_hidden_ffi(obj : JsValue) -> Bool = "webapi_Document" "hidden"

///|
impl TDocument with hidden(self : Self) -> Bool {
  document_hidden_ffi(self.to_js())
}

///|
fn document_visibility_state_ffi(obj : JsValue) -> JsValue = "webapi_Document" "visibilityState"

///|
impl TDocument with visibility_state(self : Self) -> DocumentVisibilityState {
  document_visibility_state_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_onreadystatechange_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onreadystatechange"

///|
impl TDocument with onreadystatechange(self : Self) -> EventHandler {
  document_onreadystatechange_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onreadystatechange_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onreadystatechange"

///|
impl TDocument with set_onreadystatechange(self : Self, value : EventHandler) -> Unit {
  document_set_onreadystatechange_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_onvisibilitychange_ffi(obj : JsValue) -> JsValue = "webapi_Document" "onvisibilitychange"

///|
impl TDocument with onvisibilitychange(self : Self) -> EventHandler {
  document_onvisibilitychange_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_set_onvisibilitychange_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Document" "set_onvisibilitychange"

///|
impl TDocument with set_onvisibilitychange(self : Self, value : EventHandler) -> Unit {
  document_set_onvisibilitychange_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn document_fg_color_ffi(obj : JsValue) -> String = "webapi_Document" "fgColor"

///|
impl TDocument with fg_color(self : Self) -> String {
  document_fg_color_ffi(self.to_js())
}

///|
fn document_set_fg_color_ffi(obj : JsValue, value : String) -> Unit = "webapi_Document" "set_fgColor"

///|
impl TDocument with set_fg_color(self : Self, value : String) -> Unit {
  document_set_fg_color_ffi(self.to_js(), value)
}

///|
fn document_link_color_ffi(obj : JsValue) -> String = "webapi_Document" "linkColor"

///|
impl TDocument with link_color(self : Self) -> String {
  document_link_color_ffi(self.to_js())
}

///|
fn document_set_link_color_ffi(obj : JsValue, value : String) -> Unit = "webapi_Document" "set_linkColor"

///|
impl TDocument with set_link_color(self : Self, value : String) -> Unit {
  document_set_link_color_ffi(self.to_js(), value)
}

///|
fn document_vlink_color_ffi(obj : JsValue) -> String = "webapi_Document" "vlinkColor"

///|
impl TDocument with vlink_color(self : Self) -> String {
  document_vlink_color_ffi(self.to_js())
}

///|
fn document_set_vlink_color_ffi(obj : JsValue, value : String) -> Unit = "webapi_Document" "set_vlinkColor"

///|
impl TDocument with set_vlink_color(self : Self, value : String) -> Unit {
  document_set_vlink_color_ffi(self.to_js(), value)
}

///|
fn document_alink_color_ffi(obj : JsValue) -> String = "webapi_Document" "alinkColor"

///|
impl TDocument with alink_color(self : Self) -> String {
  document_alink_color_ffi(self.to_js())
}

///|
fn document_set_alink_color_ffi(obj : JsValue, value : String) -> Unit = "webapi_Document" "set_alinkColor"

///|
impl TDocument with set_alink_color(self : Self, value : String) -> Unit {
  document_set_alink_color_ffi(self.to_js(), value)
}

///|
fn document_bg_color_ffi(obj : JsValue) -> String = "webapi_Document" "bgColor"

///|
impl TDocument with bg_color(self : Self) -> String {
  document_bg_color_ffi(self.to_js())
}

///|
fn document_set_bg_color_ffi(obj : JsValue, value : String) -> Unit = "webapi_Document" "set_bgColor"

///|
impl TDocument with set_bg_color(self : Self, value : String) -> Unit {
  document_set_bg_color_ffi(self.to_js(), value)
}

///|
fn document_anchors_ffi(obj : JsValue) -> JsValue = "webapi_Document" "anchors"

///|
impl TDocument with anchors(self : Self) -> &THTMLCollection {
  document_anchors_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_applets_ffi(obj : JsValue) -> JsValue = "webapi_Document" "applets"

///|
impl TDocument with applets(self : Self) -> &THTMLCollection {
  document_applets_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_all_ffi(obj : JsValue) -> JsValue = "webapi_Document" "all"

///|
impl TDocument with all(self : Self) -> HTMLAllCollection {
  document_all_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_scrolling_element_ffi(obj : JsValue) -> JsValue = "webapi_Document" "scrollingElement"

///|
impl TDocument with scrolling_element(self : Self) -> &TElement {
  document_scrolling_element_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_get_elements_by_tag_name_ffi(obj : JsValue, qualified_name : JsValue) -> JsValue = "webapi_Document" "getElementsByTagName"

///|
impl TDocument with get_elements_by_tag_name(self : Self, qualified_name : String) -> &THTMLCollection {
  document_get_elements_by_tag_name_ffi(self.to_js(), TJsValue::to_js(qualified_name)).unsafe_cast()
}

///|
fn document_get_elements_by_tag_name_n_s_ffi(obj : JsValue, namespace : JsValue, local_name : JsValue) -> JsValue = "webapi_Document" "getElementsByTagNameNS"

///|
impl TDocument with get_elements_by_tag_name_n_s(self : Self, namespace : String, local_name : String) -> &THTMLCollection {
  document_get_elements_by_tag_name_n_s_ffi(self.to_js(), TJsValue::to_js(namespace), TJsValue::to_js(local_name)).unsafe_cast()
}

///|
fn document_get_elements_by_class_name_ffi(obj : JsValue, class_names : JsValue) -> JsValue = "webapi_Document" "getElementsByClassName"

///|
impl TDocument with get_elements_by_class_name(self : Self, class_names : String) -> &THTMLCollection {
  document_get_elements_by_class_name_ffi(self.to_js(), TJsValue::to_js(class_names)).unsafe_cast()
}

///|
fn document_create_element_ffi(obj : JsValue, local_name : JsValue, options : JsValue) -> JsValue = "webapi_Document" "createElement"

///|
impl TDocument with create_element(self : Self, local_name : String, options? : &TCreateElementOptionsArg) -> &TElement {
  document_create_element_ffi(self.to_js(), TJsValue::to_js(local_name), options.to_js()).unsafe_cast()
}

///|
fn document_create_element_n_s_ffi(obj : JsValue, namespace : JsValue, qualified_name : JsValue, options : JsValue) -> JsValue = "webapi_Document" "createElementNS"

///|
impl TDocument with create_element_n_s(self : Self, namespace : String, qualified_name : String, options? : &TCreateElementNSOptionsArg) -> &TElement {
  document_create_element_n_s_ffi(self.to_js(), TJsValue::to_js(namespace), TJsValue::to_js(qualified_name), options.to_js()).unsafe_cast()
}

///|
fn document_create_document_fragment_ffi(obj : JsValue) -> JsValue = "webapi_Document" "createDocumentFragment"

///|
impl TDocument with create_document_fragment(self : Self) -> &TDocumentFragment {
  document_create_document_fragment_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_create_text_node_ffi(obj : JsValue, data : JsValue) -> JsValue = "webapi_Document" "createTextNode"

///|
impl TDocument with create_text_node(self : Self, data : String) -> &TText {
  document_create_text_node_ffi(self.to_js(), TJsValue::to_js(data)).unsafe_cast()
}

///|
fn document_create_c_d_a_t_a_section_ffi(obj : JsValue, data : JsValue) -> JsValue = "webapi_Document" "createCDATASection"

///|
impl TDocument with create_c_d_a_t_a_section(self : Self, data : String) -> &TCDATASection {
  document_create_c_d_a_t_a_section_ffi(self.to_js(), TJsValue::to_js(data)).unsafe_cast()
}

///|
fn document_create_comment_ffi(obj : JsValue, data : JsValue) -> JsValue = "webapi_Document" "createComment"

///|
impl TDocument with create_comment(self : Self, data : String) -> &TComment {
  document_create_comment_ffi(self.to_js(), TJsValue::to_js(data)).unsafe_cast()
}

///|
fn document_create_processing_instruction_ffi(obj : JsValue, target : JsValue, data : JsValue) -> JsValue = "webapi_Document" "createProcessingInstruction"

///|
impl TDocument with create_processing_instruction(self : Self, target : String, data : String) -> &TProcessingInstruction {
  document_create_processing_instruction_ffi(self.to_js(), TJsValue::to_js(target), TJsValue::to_js(data)).unsafe_cast()
}

///|
fn document_import_node_ffi(obj : JsValue, node : JsValue, options : JsValue) -> JsValue = "webapi_Document" "importNode"

///|
impl TDocument with import_node(self : Self, node : &TNode, options? : &TImportNodeOptionsArg) -> &TNode {
  document_import_node_ffi(self.to_js(), node.to_js(), options.to_js()).unsafe_cast()
}

///|
fn document_adopt_node_ffi(obj : JsValue, node : JsValue) -> JsValue = "webapi_Document" "adoptNode"

///|
impl TDocument with adopt_node(self : Self, node : &TNode) -> &TNode {
  document_adopt_node_ffi(self.to_js(), node.to_js()).unsafe_cast()
}

///|
fn document_create_attribute_ffi(obj : JsValue, local_name : JsValue) -> JsValue = "webapi_Document" "createAttribute"

///|
impl TDocument with create_attribute(self : Self, local_name : String) -> &TAttr {
  document_create_attribute_ffi(self.to_js(), TJsValue::to_js(local_name)).unsafe_cast()
}

///|
fn document_create_attribute_n_s_ffi(obj : JsValue, namespace : JsValue, qualified_name : JsValue) -> JsValue = "webapi_Document" "createAttributeNS"

///|
impl TDocument with create_attribute_n_s(self : Self, namespace : String, qualified_name : String) -> &TAttr {
  document_create_attribute_n_s_ffi(self.to_js(), TJsValue::to_js(namespace), TJsValue::to_js(qualified_name)).unsafe_cast()
}

///|
fn document_create_event_ffi(obj : JsValue, interface : JsValue) -> JsValue = "webapi_Document" "createEvent"

///|
impl TDocument with create_event(self : Self, interface : String) -> &TEvent {
  document_create_event_ffi(self.to_js(), TJsValue::to_js(interface)).unsafe_cast()
}

///|
fn document_create_range_ffi(obj : JsValue) -> JsValue = "webapi_Document" "createRange"

///|
impl TDocument with create_range(self : Self) -> &TRange {
  document_create_range_ffi(self.to_js()).unsafe_cast()
}

///|
fn document_create_node_iterator_ffi(obj : JsValue, root : JsValue, what_to_show : JsValue, filter : JsValue) -> JsValue = "webapi_Document" "createNodeIterator"

///|
impl TDocument with create_node_iterator(self : Self, root : &TNode, what_to_show? : UInt, filter? : NodeFilter) -> NodeIterator {
  document_create_node_iterator_ffi(self.to_js(), root.to_js(), TJsValue::to_js(what_to_show), TJsValue::to_js(filter)).unsafe_cast()
}

///|
fn document_create_tree_walker_ffi(obj : JsValue, root : JsValue, what_to_show : JsValue, filter : JsValue) -> JsValue = "webapi_Document" "createTreeWalker"

///|
impl TDocument with create_tree_walker(self : Self, root : &TNode, what_to_show? : UInt, filter? : NodeFilter) -> &TTreeWalker {
  document_create_tree_walker_ffi(self.to_js(), root.to_js(), TJsValue::to_js(what_to_show), TJsValue::to_js(filter)).unsafe_cast()
}

///|
fn document_parse_h_t_m_l_unsafe_ffi(html : JsValue) -> JsValue = "webapi_Document" "parseHTMLUnsafe"

///|
impl TDocument with parse_h_t_m_l_unsafe(html : String) -> &TDocument {
  document_parse_h_t_m_l_unsafe_ffi(TJsValue::to_js(html)).unsafe_cast()
}

///|
fn document_get_elements_by_name_ffi(obj : JsValue, element_name : JsValue) -> JsValue = "webapi_Document" "getElementsByName"

///|
impl TDocument with get_elements_by_name(self : Self, element_name : String) -> &TNodeList {
  document_get_elements_by_name_ffi(self.to_js(), TJsValue::to_js(element_name)).unsafe_cast()
}

///|
fn document_open_ffi(obj : JsValue, unused1 : JsValue, unused2 : JsValue) -> JsValue = "webapi_Document" "open"

///|
impl TDocument with open(self : Self, unused1? : String, unused2? : String) -> &TDocument {
  document_open_ffi(self.to_js(), TJsValue::to_js(unused1), TJsValue::to_js(unused2)).unsafe_cast()
}

///|
fn document_open_ffi(obj : JsValue, url : JsValue, name : JsValue, features : JsValue) -> JsValue = "webapi_Document" "open"

///|
impl TDocument with open(self : Self, url : String, name : String, features : String) -> WindowProxy {
  document_open_ffi(self.to_js(), TJsValue::to_js(url), TJsValue::to_js(name), TJsValue::to_js(features)).unsafe_cast()
}

///|
fn document_close_ffi(obj : JsValue) -> Unit = "webapi_Document" "close"

///|
impl TDocument with close(self : Self) -> Unit {
  document_close_ffi(self.to_js())
}

///|
fn document_write_ffi(obj : JsValue, text : JsValue) -> Unit = "webapi_Document" "write"

///|
impl TDocument with write(self : Self, text : String) -> Unit {
  document_write_ffi(self.to_js(), TJsValue::to_js(text))
}

///|
fn document_writeln_ffi(obj : JsValue, text : JsValue) -> Unit = "webapi_Document" "writeln"

///|
impl TDocument with writeln(self : Self, text : String) -> Unit {
  document_writeln_ffi(self.to_js(), TJsValue::to_js(text))
}

///|
fn document_has_focus_ffi(obj : JsValue) -> Bool = "webapi_Document" "hasFocus"

///|
impl TDocument with has_focus(self : Self) -> Bool {
  document_has_focus_ffi(self.to_js())
}

///|
fn document_exec_command_ffi(obj : JsValue, command_id : JsValue, show_u_i : JsValue, value : JsValue) -> Bool = "webapi_Document" "execCommand"

///|
impl TDocument with exec_command(self : Self, command_id : String, show_u_i? : Bool, value? : String) -> Bool {
  document_exec_command_ffi(self.to_js(), TJsValue::to_js(command_id), TJsValue::to_js(show_u_i), TJsValue::to_js(value))
}

///|
fn document_query_command_enabled_ffi(obj : JsValue, command_id : JsValue) -> Bool = "webapi_Document" "queryCommandEnabled"

///|
impl TDocument with query_command_enabled(self : Self, command_id : String) -> Bool {
  document_query_command_enabled_ffi(self.to_js(), TJsValue::to_js(command_id))
}

///|
fn document_query_command_indeterm_ffi(obj : JsValue, command_id : JsValue) -> Bool = "webapi_Document" "queryCommandIndeterm"

///|
impl TDocument with query_command_indeterm(self : Self, command_id : String) -> Bool {
  document_query_command_indeterm_ffi(self.to_js(), TJsValue::to_js(command_id))
}

///|
fn document_query_command_state_ffi(obj : JsValue, command_id : JsValue) -> Bool = "webapi_Document" "queryCommandState"

///|
impl TDocument with query_command_state(self : Self, command_id : String) -> Bool {
  document_query_command_state_ffi(self.to_js(), TJsValue::to_js(command_id))
}

///|
fn document_query_command_supported_ffi(obj : JsValue, command_id : JsValue) -> Bool = "webapi_Document" "queryCommandSupported"

///|
impl TDocument with query_command_supported(self : Self, command_id : String) -> Bool {
  document_query_command_supported_ffi(self.to_js(), TJsValue::to_js(command_id))
}

///|
fn document_query_command_value_ffi(obj : JsValue, command_id : JsValue) -> String = "webapi_Document" "queryCommandValue"

///|
impl TDocument with query_command_value(self : Self, command_id : String) -> String {
  document_query_command_value_ffi(self.to_js(), TJsValue::to_js(command_id))
}

///|
fn document_clear_ffi(obj : JsValue) -> Unit = "webapi_Document" "clear"

///|
impl TDocument with clear(self : Self) -> Unit {
  document_clear_ffi(self.to_js())
}

///|
fn document_capture_events_ffi(obj : JsValue) -> Unit = "webapi_Document" "captureEvents"

///|
impl TDocument with capture_events(self : Self) -> Unit {
  document_capture_events_ffi(self.to_js())
}

///|
fn document_release_events_ffi(obj : JsValue) -> Unit = "webapi_Document" "releaseEvents"

///|
impl TDocument with release_events(self : Self) -> Unit {
  document_release_events_ffi(self.to_js())
}

///|
fn document_element_from_point_ffi(obj : JsValue, x : JsValue, y : JsValue) -> JsValue = "webapi_Document" "elementFromPoint"

///|
impl TDocument with element_from_point(self : Self, x : Double, y : Double) -> &TElement {
  document_element_from_point_ffi(self.to_js(), TJsValue::to_js(x), TJsValue::to_js(y)).unsafe_cast()
}

///|
fn document_elements_from_point_ffi(obj : JsValue, x : JsValue, y : JsValue) -> JsValue = "webapi_Document" "elementsFromPoint"

///|
impl TDocument with elements_from_point(self : Self, x : Double, y : Double) -> Array[&TElement] {
  document_elements_from_point_ffi(self.to_js(), TJsValue::to_js(x), TJsValue::to_js(y)).unsafe_cast()
}

///|
fn document_caret_position_from_point_ffi(obj : JsValue, x : JsValue, y : JsValue, options : JsValue) -> JsValue = "webapi_Document" "caretPositionFromPoint"

///|
impl TDocument with caret_position_from_point(self : Self, x : Double, y : Double, options? : CaretPositionFromPointOptions) -> CaretPosition {
  document_caret_position_from_point_ffi(self.to_js(), TJsValue::to_js(x), TJsValue::to_js(y), TJsValue::to_js(options)).unsafe_cast()
}