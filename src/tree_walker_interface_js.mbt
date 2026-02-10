extern "js" fn tree_walker_root_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.root"

///|
fn tree_walker_root_ffi(obj: JsValue) -> Node {
  tree_walker_root_ffi_js(obj).unsafe_cast()
}

extern "js" fn tree_walker_what_to_show_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.whatToShow"

///|
fn tree_walker_what_to_show_ffi(obj: JsValue) -> UInt {
  tree_walker_what_to_show_ffi_js(obj).unsafe_cast()
}

extern "js" fn tree_walker_filter_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.filter"

///|
fn tree_walker_filter_ffi(obj: JsValue) -> NodeFilter {
  tree_walker_filter_ffi_js(obj).unsafe_cast()
}

extern "js" fn tree_walker_current_node_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.currentNode"

///|
fn tree_walker_current_node_ffi(obj: JsValue) -> Node {
  tree_walker_current_node_ffi_js(obj).unsafe_cast()
}

extern "js" fn tree_walker_set_current_node_ffi(obj: JsValue, current_node: JsValue) -> Unit = "(obj, currentNode) => { obj.currentNode = currentNode; }"

extern "js" fn tree_walker_parent_node_ffi(obj: JsValue) -> JsValue = "(obj) => obj.parentNode()"

extern "js" fn tree_walker_first_child_ffi(obj: JsValue) -> JsValue = "(obj) => obj.firstChild()"

extern "js" fn tree_walker_last_child_ffi(obj: JsValue) -> JsValue = "(obj) => obj.lastChild()"

extern "js" fn tree_walker_previous_sibling_ffi(obj: JsValue) -> JsValue = "(obj) => obj.previousSibling()"

extern "js" fn tree_walker_next_sibling_ffi(obj: JsValue) -> JsValue = "(obj) => obj.nextSibling()"

extern "js" fn tree_walker_previous_node_ffi(obj: JsValue) -> JsValue = "(obj) => obj.previousNode()"

extern "js" fn tree_walker_next_node_ffi(obj: JsValue) -> JsValue = "(obj) => obj.nextNode()"