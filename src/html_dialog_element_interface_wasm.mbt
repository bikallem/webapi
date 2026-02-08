///|
fn html_dialog_element_new_ffi() -> HTMLDialogElement = "webapi_HTMLDialogElement" "new"

///|
fn html_dialog_element_open_ffi(obj : JsValue) -> JsValue = "webapi_HTMLDialogElement" "get_open"

///|
fn html_dialog_element_set_open_ffi(obj : JsValue, open : JsValue) -> Unit = "webapi_HTMLDialogElement" "set_open"

///|
fn html_dialog_element_return_value_ffi(obj : JsValue) -> JsValue = "webapi_HTMLDialogElement" "get_returnValue"

///|
fn html_dialog_element_set_return_value_ffi(
  obj : JsValue,
  return_value : JsValue,
) -> Unit = "webapi_HTMLDialogElement" "set_returnValue"

///|
fn html_dialog_element_closed_by_ffi(obj : JsValue) -> JsValue = "webapi_HTMLDialogElement" "get_closedBy"

///|
fn html_dialog_element_set_closed_by_ffi(
  obj : JsValue,
  closed_by : JsValue,
) -> Unit = "webapi_HTMLDialogElement" "set_closedBy"

///|
fn html_dialog_element_show_ffi(obj : JsValue) -> Unit = "webapi_HTMLDialogElement" "show"

///|
fn html_dialog_element_show_modal_ffi(obj : JsValue) -> Unit = "webapi_HTMLDialogElement" "showModal"

///|
fn html_dialog_element_close_ffi(obj : JsValue, return_value : JsValue) -> Unit = "webapi_HTMLDialogElement" "close"

///|
fn html_dialog_element_request_close_ffi(
  obj : JsValue,
  return_value : JsValue,
) -> Unit = "webapi_HTMLDialogElement" "requestClose"
