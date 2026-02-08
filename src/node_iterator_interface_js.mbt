extern "js" fn node_iterator_root_ffi(obj: JsValue) -> JsValue = "(obj) => obj.root"

extern "js" fn node_iterator_reference_node_ffi(obj: JsValue) -> JsValue = "(obj) => obj.referenceNode"

extern "js" fn node_iterator_pointer_before_reference_node_ffi(obj: JsValue) -> JsValue = "(obj) => obj.pointerBeforeReferenceNode"

extern "js" fn node_iterator_what_to_show_ffi(obj: JsValue) -> JsValue = "(obj) => obj.whatToShow"

extern "js" fn node_iterator_filter_ffi(obj: JsValue) -> JsValue = "(obj) => obj.filter"

extern "js" fn node_iterator_next_node_ffi(obj: JsValue) -> JsValue = "(obj) => obj.nextNode()"

extern "js" fn node_iterator_previous_node_ffi(obj: JsValue) -> JsValue = "(obj) => obj.previousNode()"

extern "js" fn node_iterator_detach_ffi(obj: JsValue) -> Unit = "(obj) => obj.detach()"