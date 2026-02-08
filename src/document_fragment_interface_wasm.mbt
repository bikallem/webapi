///|
fn document_fragment_new_ffi() -> DocumentFragment = "webapi_DocumentFragment" "new"

///|
fn document_fragment_get_element_by_id_ffi(
  obj : JsValue,
  element_id : JsValue,
) -> JsValue = "webapi_DocumentFragment" "getElementById"

///|
fn document_fragment_children_ffi(obj : JsValue) -> JsValue = "webapi_DocumentFragment" "get_children"

///|
fn document_fragment_first_element_child_ffi(obj : JsValue) -> JsValue = "webapi_DocumentFragment" "get_firstElementChild"

///|
fn document_fragment_last_element_child_ffi(obj : JsValue) -> JsValue = "webapi_DocumentFragment" "get_lastElementChild"

///|
fn document_fragment_child_element_count_ffi(obj : JsValue) -> JsValue = "webapi_DocumentFragment" "get_childElementCount"

///|
fn document_fragment_prepend_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_DocumentFragment" "prepend"

///|
fn document_fragment_append_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_DocumentFragment" "append"

///|
fn document_fragment_replace_children_ffi(
  obj : JsValue,
  nodes : JsValue,
) -> Unit = "webapi_DocumentFragment" "replaceChildren"

///|
fn document_fragment_move_before_ffi(
  obj : JsValue,
  node : JsValue,
  child : JsValue,
) -> Unit = "webapi_DocumentFragment" "moveBefore"

///|
fn document_fragment_query_selector_ffi(
  obj : JsValue,
  selectors : JsValue,
) -> JsValue = "webapi_DocumentFragment" "querySelector"

///|
fn document_fragment_query_selector_all_ffi(
  obj : JsValue,
  selectors : JsValue,
) -> JsValue = "webapi_DocumentFragment" "querySelectorAll"
