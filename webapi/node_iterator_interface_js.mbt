extern "js" fn node_iterator_root_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.root"

///|
fn node_iterator_root_ffi(obj: JsValue) -> Node {
  node_iterator_root_ffi_js(obj).unsafe_cast()
}

extern "js" fn node_iterator_reference_node_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.referenceNode"

///|
fn node_iterator_reference_node_ffi(obj: JsValue) -> Node {
  node_iterator_reference_node_ffi_js(obj).unsafe_cast()
}

extern "js" fn node_iterator_pointer_before_reference_node_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.pointerBeforeReferenceNode"

///|
fn node_iterator_pointer_before_reference_node_ffi(obj: JsValue) -> Bool {
  node_iterator_pointer_before_reference_node_ffi_js(obj).unsafe_cast()
}

extern "js" fn node_iterator_what_to_show_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.whatToShow"

///|
fn node_iterator_what_to_show_ffi(obj: JsValue) -> UInt {
  node_iterator_what_to_show_ffi_js(obj).unsafe_cast()
}

extern "js" fn node_iterator_filter_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.filter"

///|
fn node_iterator_filter_ffi(obj: JsValue) -> NodeFilter {
  node_iterator_filter_ffi_js(obj).unsafe_cast()
}

extern "js" fn node_iterator_next_node_ffi(obj: JsValue) -> JsValue = "(obj) => obj.nextNode()"

extern "js" fn node_iterator_previous_node_ffi(obj: JsValue) -> JsValue = "(obj) => obj.previousNode()"

extern "js" fn node_iterator_detach_ffi(obj: JsValue) -> Unit = "(obj) => obj.detach()"