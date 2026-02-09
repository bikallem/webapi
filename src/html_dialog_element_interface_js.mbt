///|
extern "js" fn html_dialog_element_new_ffi() -> HTMLDialogElement = "() => new HTMLDialogElement()"

///|
extern "js" fn html_dialog_element_open_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.open"

///|
fn html_dialog_element_open_ffi(obj : JsValue) -> Bool {
  html_dialog_element_open_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_dialog_element_set_open_ffi(
  obj : JsValue,
  open : JsValue,
) -> Unit = "(obj, open) => { obj.open = open; }"

///|
extern "js" fn html_dialog_element_return_value_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.returnValue"

///|
fn html_dialog_element_return_value_ffi(obj : JsValue) -> String {
  html_dialog_element_return_value_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_dialog_element_set_return_value_ffi(
  obj : JsValue,
  return_value : JsValue,
) -> Unit = "(obj, returnValue) => { obj.returnValue = returnValue; }"

///|
extern "js" fn html_dialog_element_closed_by_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.closedBy"

///|
fn html_dialog_element_closed_by_ffi(obj : JsValue) -> String {
  html_dialog_element_closed_by_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_dialog_element_set_closed_by_ffi(
  obj : JsValue,
  closed_by : JsValue,
) -> Unit = "(obj, closedBy) => { obj.closedBy = closedBy; }"

///|
extern "js" fn html_dialog_element_show_ffi(obj : JsValue) -> Unit = "(obj) => obj.show()"

///|
extern "js" fn html_dialog_element_show_modal_ffi(obj : JsValue) -> Unit = "(obj) => obj.showModal()"

///|
extern "js" fn html_dialog_element_close_ffi(
  obj : JsValue,
  return_value : JsValue,
) -> Unit = "(obj, return_value) => obj.close(return_value)"

///|
extern "js" fn html_dialog_element_request_close_ffi(
  obj : JsValue,
  return_value : JsValue,
) -> Unit = "(obj, return_value) => obj.requestClose(return_value)"
