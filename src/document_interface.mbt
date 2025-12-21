///|
#external
pub type Document

///|
pub impl TJsValue for Document with to_js(self : Document) -> JsValue = "%identity"

///|
pub fn[T : TDocument] Document::into(self : Document) -> T = "%identity"

///|
pub impl TDocument for Document

///|
pub impl TNode for Document

///|
pub impl TEventTarget for Document

///|
extern "js" fn document_ffi() -> Document = "() => new Document()"

///|
pub fn Document::new() -> Document {
  document_ffi()
}

///|
pub(open) trait TDocumentCreateElementOptionsArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TDocumentCreateElementOptionsArg for String with to_js(self : String) -> JsValue = "%identity"

///|
pub impl TDocumentCreateElementOptionsArg for ElementCreationOptions with to_js(
  self : ElementCreationOptions,
) -> JsValue = "%identity"

///|
pub(open) trait TDocumentCreateElementNsOptionsArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TDocumentCreateElementNsOptionsArg for String with to_js(self : String) -> JsValue = "%identity"

///|
pub impl TDocumentCreateElementNsOptionsArg for ElementCreationOptions with to_js(
  self : ElementCreationOptions,
) -> JsValue = "%identity"

///|
pub(open) trait TDocumentImportNodeOptionsArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TDocumentImportNodeOptionsArg for Bool with to_js(self : Bool) -> JsValue = "%identity"

///|
pub impl TDocumentImportNodeOptionsArg for ImportNodeOptions with to_js(
  self : ImportNodeOptions,
) -> JsValue = "%identity"

///|
pub(open) trait TDocumentWriteTextArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TDocumentWriteTextArg for TrustedHTML with to_js(self : TrustedHTML) -> JsValue = "%identity"

///|
pub impl TDocumentWriteTextArg for String with to_js(self : String) -> JsValue = "%identity"

///|
pub(open) trait TDocumentWritelnTextArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TDocumentWritelnTextArg for TrustedHTML with to_js(self : TrustedHTML) -> JsValue = "%identity"

///|
pub impl TDocumentWritelnTextArg for String with to_js(self : String) -> JsValue = "%identity"

///|
pub trait TDocument: TNode {
  get_elements_by_tag_name(self : Self, qualified_name : String) -> HTMLCollection = _
  get_elements_by_tag_name_ns(
    self : Self,
    namespace_ : String,
    local_name : String,
  ) -> HTMLCollection = _
  get_elements_by_class_name(self : Self, class_names : String) -> HTMLCollection = _
  create_element(
    self : Self,
    local_name : String,
    options? : &TDocumentCreateElementOptionsArg,
  ) -> Element = _
  create_element_ns(
    self : Self,
    namespace_ : String,
    qualified_name : String,
    options? : &TDocumentCreateElementNsOptionsArg,
  ) -> Element = _
  create_document_fragment(self : Self) -> DocumentFragment = _
  create_text_node(self : Self, data : String) -> Text = _
  create_cdata_section(self : Self, data : String) -> CDATASection = _
  create_comment(self : Self, data : String) -> Comment = _
  create_processing_instruction(self : Self, target : String, data : String) -> ProcessingInstruction = _
  import_node(
    self : Self,
    node : &TNode,
    options? : &TDocumentImportNodeOptionsArg,
  ) -> Node = _
  adopt_node(self : Self, node : &TNode) -> Node = _
  create_attribute(self : Self, local_name : String) -> Attr = _
  create_attribute_ns(self : Self, namespace_ : String, qualified_name : String) -> Attr = _
  create_event(self : Self, interface : String) -> Event = _
  create_range(self : Self) -> Range = _
  create_node_iterator(
    self : Self,
    root : &TNode,
    what_to_show? : UInt,
    filter? : NodeFilter,
  ) -> NodeIterator = _
  create_tree_walker(
    self : Self,
    root : &TNode,
    what_to_show? : UInt,
    filter? : NodeFilter,
  ) -> TreeWalker = _
  get_elements_by_name(self : Self, element_name : String) -> NodeList = _
  open(self : Self, unused1? : String, unused2? : String) -> Document = _
  open_2(self : Self, url : String, name : String, features : String) -> JsValue = _
  close(self : Self) -> Unit = _
  write(self : Self, text : &TDocumentWriteTextArg) -> Unit = _
  writeln(self : Self, text : &TDocumentWritelnTextArg) -> Unit = _
  has_focus(self : Self) -> Bool = _
  exec_command(
    self : Self,
    command_id : String,
    show_ui? : Bool,
    value? : String,
  ) -> Bool = _
  query_command_enabled(self : Self, command_id : String) -> Bool = _
  query_command_indeterm(self : Self, command_id : String) -> Bool = _
  query_command_state(self : Self, command_id : String) -> Bool = _
  query_command_supported(self : Self, command_id : String) -> Bool = _
  query_command_value(self : Self, command_id : String) -> String = _
  clear(self : Self) -> Unit = _
  capture_events(self : Self) -> Unit = _
  release_events(self : Self) -> Unit = _
  element_from_point(self : Self, x : Double, y : Double) -> JsValue = _
  elements_from_point(self : Self, x : Double, y : Double) -> Array[Element] = _
  caret_position_from_point(
    self : Self,
    x : Double,
    y : Double,
    options? : CaretPositionFromPointOptions,
  ) -> JsValue = _
}

///|
extern "js" fn document_get_elements_by_tag_name_ffi(
  obj : JsValue,
  qualified_name : JsValue,
) -> HTMLCollection = "(obj, qualified_name) => obj.getElementsByTagName(obj, qualified_name)"

///|
impl TDocument with get_elements_by_tag_name(
  self : Self,
  qualified_name : String,
) -> HTMLCollection {
  document_get_elements_by_tag_name_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(qualified_name),
  )
}

///|
extern "js" fn document_get_elements_by_tag_name_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  local_name : JsValue,
) -> HTMLCollection = "(obj, namespace_, local_name) => obj.getElementsByTagNameNS(obj, namespace_, local_name)"

///|
impl TDocument with get_elements_by_tag_name_ns(
  self : Self,
  namespace_ : String,
  local_name : String,
) -> HTMLCollection {
  document_get_elements_by_tag_name_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
    TJsValue::to_js(local_name),
  )
}

///|
extern "js" fn document_get_elements_by_class_name_ffi(
  obj : JsValue,
  class_names : JsValue,
) -> HTMLCollection = "(obj, class_names) => obj.getElementsByClassName(obj, class_names)"

///|
impl TDocument with get_elements_by_class_name(
  self : Self,
  class_names : String,
) -> HTMLCollection {
  document_get_elements_by_class_name_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(class_names),
  )
}

///|
extern "js" fn document_create_element_ffi(
  obj : JsValue,
  local_name : JsValue,
  options : JsValue,
) -> Element = "(obj, local_name, options) => obj.createElement(obj, local_name, options)"

///|
impl TDocument with create_element(
  self : Self,
  local_name : String,
  options? : &TDocumentCreateElementOptionsArg = ElementCreationOptions::empty(),
) -> Element {
  document_create_element_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(local_name),
    options.to_js(),
  )
}

///|
extern "js" fn document_create_element_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  qualified_name : JsValue,
  options : JsValue,
) -> Element = "(obj, namespace_, qualified_name, options) => obj.createElementNS(obj, namespace_, qualified_name, options)"

///|
impl TDocument with create_element_ns(
  self : Self,
  namespace_ : String,
  qualified_name : String,
  options? : &TDocumentCreateElementNsOptionsArg = ElementCreationOptions::empty(),
) -> Element {
  document_create_element_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
    TJsValue::to_js(qualified_name),
    options.to_js(),
  )
}

///|
extern "js" fn document_create_document_fragment_ffi(
  obj : JsValue,
) -> DocumentFragment = "(obj) => obj.createDocumentFragment(obj)"

///|
impl TDocument with create_document_fragment(self : Self) -> DocumentFragment {
  document_create_document_fragment_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_create_text_node_ffi(
  obj : JsValue,
  data : JsValue,
) -> Text = "(obj, data) => obj.createTextNode(obj, data)"

///|
impl TDocument with create_text_node(self : Self, data : String) -> Text {
  document_create_text_node_ffi(TJsValue::to_js(self), TJsValue::to_js(data))
}

///|
extern "js" fn document_create_cdata_section_ffi(
  obj : JsValue,
  data : JsValue,
) -> CDATASection = "(obj, data) => obj.createCDATASection(obj, data)"

///|
impl TDocument with create_cdata_section(self : Self, data : String) -> CDATASection {
  document_create_cdata_section_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(data),
  )
}

///|
extern "js" fn document_create_comment_ffi(
  obj : JsValue,
  data : JsValue,
) -> Comment = "(obj, data) => obj.createComment(obj, data)"

///|
impl TDocument with create_comment(self : Self, data : String) -> Comment {
  document_create_comment_ffi(TJsValue::to_js(self), TJsValue::to_js(data))
}

///|
extern "js" fn document_create_processing_instruction_ffi(
  obj : JsValue,
  target : JsValue,
  data : JsValue,
) -> ProcessingInstruction = "(obj, target, data) => obj.createProcessingInstruction(obj, target, data)"

///|
impl TDocument with create_processing_instruction(
  self : Self,
  target : String,
  data : String,
) -> ProcessingInstruction {
  document_create_processing_instruction_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(target),
    TJsValue::to_js(data),
  )
}

///|
extern "js" fn document_import_node_ffi(
  obj : JsValue,
  node : JsValue,
  options : JsValue,
) -> Node = "(obj, node, options) => obj.importNode(obj, node, options)"

///|
impl TDocument with import_node(
  self : Self,
  node : &TNode,
  options? : &TDocumentImportNodeOptionsArg = false,
) -> Node {
  document_import_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node),
    options.to_js(),
  )
}

///|
extern "js" fn document_adopt_node_ffi(obj : JsValue, node : JsValue) -> Node = "(obj, node) => obj.adoptNode(obj, node)"

///|
impl TDocument with adopt_node(self : Self, node : &TNode) -> Node {
  document_adopt_node_ffi(TJsValue::to_js(self), TJsValue::to_js(node))
}

///|
extern "js" fn document_create_attribute_ffi(
  obj : JsValue,
  local_name : JsValue,
) -> Attr = "(obj, local_name) => obj.createAttribute(obj, local_name)"

///|
impl TDocument with create_attribute(self : Self, local_name : String) -> Attr {
  document_create_attribute_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(local_name),
  )
}

///|
extern "js" fn document_create_attribute_ns_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  qualified_name : JsValue,
) -> Attr = "(obj, namespace_, qualified_name) => obj.createAttributeNS(obj, namespace_, qualified_name)"

///|
impl TDocument with create_attribute_ns(
  self : Self,
  namespace_ : String,
  qualified_name : String,
) -> Attr {
  document_create_attribute_ns_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
    TJsValue::to_js(qualified_name),
  )
}

///|
extern "js" fn document_create_event_ffi(
  obj : JsValue,
  interface : JsValue,
) -> Event = "(obj, interface) => obj.createEvent(obj, interface)"

///|
impl TDocument with create_event(self : Self, interface : String) -> Event {
  document_create_event_ffi(TJsValue::to_js(self), TJsValue::to_js(interface))
}

///|
extern "js" fn document_create_range_ffi(obj : JsValue) -> Range = "(obj) => obj.createRange(obj)"

///|
impl TDocument with create_range(self : Self) -> Range {
  document_create_range_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_create_node_iterator_ffi(
  obj : JsValue,
  root : JsValue,
  what_to_show : JsValue,
  filter : JsValue,
) -> NodeIterator = "(obj, root, what_to_show, filter) => obj.createNodeIterator(obj, root, what_to_show, filter)"

///|
impl TDocument with create_node_iterator(
  self : Self,
  root : &TNode,
  what_to_show? : UInt = 0xFFFFFFFF,
  filter? : NodeFilter = JsValue::null(),
) -> NodeIterator {
  document_create_node_iterator_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(root),
    TJsValue::to_js(what_to_show),
    TJsValue::to_js(filter),
  )
}

///|
extern "js" fn document_create_tree_walker_ffi(
  obj : JsValue,
  root : JsValue,
  what_to_show : JsValue,
  filter : JsValue,
) -> TreeWalker = "(obj, root, what_to_show, filter) => obj.createTreeWalker(obj, root, what_to_show, filter)"

///|
impl TDocument with create_tree_walker(
  self : Self,
  root : &TNode,
  what_to_show? : UInt = 0xFFFFFFFF,
  filter? : NodeFilter = JsValue::null(),
) -> TreeWalker {
  document_create_tree_walker_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(root),
    TJsValue::to_js(what_to_show),
    TJsValue::to_js(filter),
  )
}

///|
extern "js" fn document_get_elements_by_name_ffi(
  obj : JsValue,
  element_name : JsValue,
) -> NodeList = "(obj, element_name) => obj.getElementsByName(obj, element_name)"

///|
impl TDocument with get_elements_by_name(self : Self, element_name : String) -> NodeList {
  document_get_elements_by_name_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(element_name),
  )
}

///|
extern "js" fn document_open_ffi(
  obj : JsValue,
  unused1 : JsValue,
  unused2 : JsValue,
) -> Document = "(obj, unused1, unused2) => obj.open(obj, unused1, unused2)"

///|
impl TDocument with open(self : Self, unused1? : String, unused2? : String) -> Document {
  document_open_ffi(
    TJsValue::to_js(self),
    opt_to_js(unused1),
    opt_to_js(unused2),
  )
}

///|
extern "js" fn document_open_2_ffi(
  obj : JsValue,
  url : JsValue,
  name : JsValue,
  features : JsValue,
) -> JsValue = "(obj, url, name, features) => obj.open_2(obj, url, name, features)"

///|
impl TDocument with open_2(
  self : Self,
  url : String,
  name : String,
  features : String,
) -> JsValue {
  document_open_2_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(url),
    TJsValue::to_js(name),
    TJsValue::to_js(features),
  )
}

///|
extern "js" fn document_close_ffi(obj : JsValue) -> Unit = "(obj) => obj.close(obj)"

///|
impl TDocument with close(self : Self) -> Unit {
  document_close_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_write_ffi(obj : JsValue, text : JsValue) -> Unit = "(obj, text) => obj.write(obj, text)"

///|
impl TDocument with write(self : Self, text : &TDocumentWriteTextArg) -> Unit {
  document_write_ffi(TJsValue::to_js(self), text.to_js())
}

///|
extern "js" fn document_writeln_ffi(obj : JsValue, text : JsValue) -> Unit = "(obj, text) => obj.writeln(obj, text)"

///|
impl TDocument with writeln(self : Self, text : &TDocumentWritelnTextArg) -> Unit {
  document_writeln_ffi(TJsValue::to_js(self), text.to_js())
}

///|
extern "js" fn document_has_focus_ffi(obj : JsValue) -> Bool = "(obj) => obj.hasFocus(obj)"

///|
impl TDocument with has_focus(self : Self) -> Bool {
  document_has_focus_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_exec_command_ffi(
  obj : JsValue,
  command_id : JsValue,
  show_ui : JsValue,
  value : JsValue,
) -> Bool = "(obj, command_id, show_ui, value) => obj.execCommand(obj, command_id, show_ui, value)"

///|
impl TDocument with exec_command(
  self : Self,
  command_id : String,
  show_ui? : Bool = false,
  value? : String = "",
) -> Bool {
  document_exec_command_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(command_id),
    TJsValue::to_js(show_ui),
    TJsValue::to_js(value),
  )
}

///|
extern "js" fn document_query_command_enabled_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> Bool = "(obj, command_id) => obj.queryCommandEnabled(obj, command_id)"

///|
impl TDocument with query_command_enabled(self : Self, command_id : String) -> Bool {
  document_query_command_enabled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(command_id),
  )
}

///|
extern "js" fn document_query_command_indeterm_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> Bool = "(obj, command_id) => obj.queryCommandIndeterm(obj, command_id)"

///|
impl TDocument with query_command_indeterm(self : Self, command_id : String) -> Bool {
  document_query_command_indeterm_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(command_id),
  )
}

///|
extern "js" fn document_query_command_state_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> Bool = "(obj, command_id) => obj.queryCommandState(obj, command_id)"

///|
impl TDocument with query_command_state(self : Self, command_id : String) -> Bool {
  document_query_command_state_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(command_id),
  )
}

///|
extern "js" fn document_query_command_supported_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> Bool = "(obj, command_id) => obj.queryCommandSupported(obj, command_id)"

///|
impl TDocument with query_command_supported(self : Self, command_id : String) -> Bool {
  document_query_command_supported_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(command_id),
  )
}

///|
extern "js" fn document_query_command_value_ffi(
  obj : JsValue,
  command_id : JsValue,
) -> String = "(obj, command_id) => obj.queryCommandValue(obj, command_id)"

///|
impl TDocument with query_command_value(self : Self, command_id : String) -> String {
  document_query_command_value_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(command_id),
  )
}

///|
extern "js" fn document_clear_ffi(obj : JsValue) -> Unit = "(obj) => obj.clear(obj)"

///|
impl TDocument with clear(self : Self) -> Unit {
  document_clear_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_capture_events_ffi(obj : JsValue) -> Unit = "(obj) => obj.captureEvents(obj)"

///|
impl TDocument with capture_events(self : Self) -> Unit {
  document_capture_events_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_release_events_ffi(obj : JsValue) -> Unit = "(obj) => obj.releaseEvents(obj)"

///|
impl TDocument with release_events(self : Self) -> Unit {
  document_release_events_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn document_element_from_point_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "(obj, x, y) => obj.elementFromPoint(obj, x, y)"

///|
impl TDocument with element_from_point(self : Self, x : Double, y : Double) -> JsValue {
  document_element_from_point_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
extern "js" fn document_elements_from_point_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Array[Element] = "(obj, x, y) => obj.elementsFromPoint(obj, x, y)"

///|
impl TDocument with elements_from_point(self : Self, x : Double, y : Double) -> Array[
  Element,
] {
  document_elements_from_point_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
extern "js" fn document_caret_position_from_point_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  options : JsValue,
) -> JsValue = "(obj, x, y, options) => obj.caretPositionFromPoint(obj, x, y, options)"

///|
impl TDocument with caret_position_from_point(
  self : Self,
  x : Double,
  y : Double,
  options? : CaretPositionFromPointOptions = CaretPositionFromPointOptions::empty(),
) -> JsValue {
  document_caret_position_from_point_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(options),
  )
}
