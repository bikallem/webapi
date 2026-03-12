fn node_iterator_root_ffi(obj: JsValue) -> Node = "webapi_NodeIterator" "get_root"

fn node_iterator_reference_node_ffi(obj: JsValue) -> Node = "webapi_NodeIterator" "get_referenceNode"

fn node_iterator_pointer_before_reference_node_ffi(obj: JsValue) -> Bool = "webapi_NodeIterator" "get_pointerBeforeReferenceNode"

fn node_iterator_what_to_show_ffi(obj: JsValue) -> UInt = "webapi_NodeIterator" "get_whatToShow"

fn node_iterator_filter_ffi_wasm(obj: JsValue) -> JsValue = "webapi_NodeIterator" "get_filter"

///|
fn node_iterator_filter_ffi(obj: JsValue) -> NodeFilter {
  node_iterator_filter_ffi_wasm(obj).unsafe_cast()
}

fn node_iterator_next_node_ffi(obj: JsValue) -> JsValue = "webapi_NodeIterator" "nextNode"

fn node_iterator_previous_node_ffi(obj: JsValue) -> JsValue = "webapi_NodeIterator" "previousNode"

fn node_iterator_detach_ffi(obj: JsValue) -> Unit = "webapi_NodeIterator" "detach"