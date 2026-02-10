fn tree_walker_root_ffi(obj: JsValue) -> Node = "webapi_TreeWalker" "get_root"

fn tree_walker_what_to_show_ffi(obj: JsValue) -> UInt = "webapi_TreeWalker" "get_whatToShow"

fn tree_walker_filter_ffi(obj: JsValue) -> NodeFilter = "webapi_TreeWalker" "get_filter"

fn tree_walker_current_node_ffi(obj: JsValue) -> Node = "webapi_TreeWalker" "get_currentNode"

fn tree_walker_set_current_node_ffi(obj: JsValue, current_node: JsValue) -> Unit = "webapi_TreeWalker" "set_currentNode"

fn tree_walker_parent_node_ffi(obj: JsValue) -> JsValue = "webapi_TreeWalker" "parentNode"

fn tree_walker_first_child_ffi(obj: JsValue) -> JsValue = "webapi_TreeWalker" "firstChild"

fn tree_walker_last_child_ffi(obj: JsValue) -> JsValue = "webapi_TreeWalker" "lastChild"

fn tree_walker_previous_sibling_ffi(obj: JsValue) -> JsValue = "webapi_TreeWalker" "previousSibling"

fn tree_walker_next_sibling_ffi(obj: JsValue) -> JsValue = "webapi_TreeWalker" "nextSibling"

fn tree_walker_previous_node_ffi(obj: JsValue) -> JsValue = "webapi_TreeWalker" "previousNode"

fn tree_walker_next_node_ffi(obj: JsValue) -> JsValue = "webapi_TreeWalker" "nextNode"