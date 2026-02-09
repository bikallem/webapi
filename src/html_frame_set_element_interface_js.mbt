///|
extern "js" fn html_frame_set_element_new_ffi() -> HTMLFrameSetElement = "() => new HTMLFrameSetElement()"

///|
extern "js" fn html_frame_set_element_cols_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cols"

///|
fn html_frame_set_element_cols_ffi(obj : JsValue) -> String {
  html_frame_set_element_cols_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_frame_set_element_set_cols_ffi(
  obj : JsValue,
  cols : JsValue,
) -> Unit = "(obj, cols) => { obj.cols = cols; }"

///|
extern "js" fn html_frame_set_element_rows_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.rows"

///|
fn html_frame_set_element_rows_ffi(obj : JsValue) -> String {
  html_frame_set_element_rows_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_frame_set_element_set_rows_ffi(
  obj : JsValue,
  rows : JsValue,
) -> Unit = "(obj, rows) => { obj.rows = rows; }"

///|
extern "js" fn html_frame_set_element_onafterprint_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onafterprint"

///|
fn html_frame_set_element_onafterprint_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onafterprint_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_frame_set_element_set_onafterprint_ffi(
  obj : JsValue,
  onafterprint : JsValue,
) -> Unit = "(obj, onafterprint) => { obj.onafterprint = onafterprint; }"

///|
extern "js" fn html_frame_set_element_onbeforeprint_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onbeforeprint"

///|
fn html_frame_set_element_onbeforeprint_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onbeforeprint_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_frame_set_element_set_onbeforeprint_ffi(
  obj : JsValue,
  onbeforeprint : JsValue,
) -> Unit = "(obj, onbeforeprint) => { obj.onbeforeprint = onbeforeprint; }"

///|
extern "js" fn html_frame_set_element_onbeforeunload_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onbeforeunload"

///|
fn html_frame_set_element_onbeforeunload_ffi(
  obj : JsValue,
) -> OnBeforeUnloadEventHandler {
  html_frame_set_element_onbeforeunload_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_frame_set_element_set_onbeforeunload_ffi(
  obj : JsValue,
  onbeforeunload : JsValue,
) -> Unit = "(obj, onbeforeunload) => { obj.onbeforeunload = onbeforeunload; }"

///|
extern "js" fn html_frame_set_element_onhashchange_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onhashchange"

///|
fn html_frame_set_element_onhashchange_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onhashchange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_frame_set_element_set_onhashchange_ffi(
  obj : JsValue,
  onhashchange : JsValue,
) -> Unit = "(obj, onhashchange) => { obj.onhashchange = onhashchange; }"

///|
extern "js" fn html_frame_set_element_onlanguagechange_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onlanguagechange"

///|
fn html_frame_set_element_onlanguagechange_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onlanguagechange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_frame_set_element_set_onlanguagechange_ffi(
  obj : JsValue,
  onlanguagechange : JsValue,
) -> Unit = "(obj, onlanguagechange) => { obj.onlanguagechange = onlanguagechange; }"

///|
extern "js" fn html_frame_set_element_onmessage_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onmessage"

///|
fn html_frame_set_element_onmessage_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onmessage_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_frame_set_element_set_onmessage_ffi(
  obj : JsValue,
  onmessage : JsValue,
) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

///|
extern "js" fn html_frame_set_element_onmessageerror_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onmessageerror"

///|
fn html_frame_set_element_onmessageerror_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onmessageerror_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_frame_set_element_set_onmessageerror_ffi(
  obj : JsValue,
  onmessageerror : JsValue,
) -> Unit = "(obj, onmessageerror) => { obj.onmessageerror = onmessageerror; }"

///|
extern "js" fn html_frame_set_element_onoffline_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onoffline"

///|
fn html_frame_set_element_onoffline_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onoffline_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_frame_set_element_set_onoffline_ffi(
  obj : JsValue,
  onoffline : JsValue,
) -> Unit = "(obj, onoffline) => { obj.onoffline = onoffline; }"

///|
extern "js" fn html_frame_set_element_ononline_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ononline"

///|
fn html_frame_set_element_ononline_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_ononline_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_frame_set_element_set_ononline_ffi(
  obj : JsValue,
  ononline : JsValue,
) -> Unit = "(obj, ononline) => { obj.ononline = ononline; }"

///|
extern "js" fn html_frame_set_element_onpagehide_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onpagehide"

///|
fn html_frame_set_element_onpagehide_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onpagehide_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_frame_set_element_set_onpagehide_ffi(
  obj : JsValue,
  onpagehide : JsValue,
) -> Unit = "(obj, onpagehide) => { obj.onpagehide = onpagehide; }"

///|
extern "js" fn html_frame_set_element_onpagereveal_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onpagereveal"

///|
fn html_frame_set_element_onpagereveal_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onpagereveal_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_frame_set_element_set_onpagereveal_ffi(
  obj : JsValue,
  onpagereveal : JsValue,
) -> Unit = "(obj, onpagereveal) => { obj.onpagereveal = onpagereveal; }"

///|
extern "js" fn html_frame_set_element_onpageshow_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onpageshow"

///|
fn html_frame_set_element_onpageshow_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onpageshow_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_frame_set_element_set_onpageshow_ffi(
  obj : JsValue,
  onpageshow : JsValue,
) -> Unit = "(obj, onpageshow) => { obj.onpageshow = onpageshow; }"

///|
extern "js" fn html_frame_set_element_onpageswap_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onpageswap"

///|
fn html_frame_set_element_onpageswap_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onpageswap_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_frame_set_element_set_onpageswap_ffi(
  obj : JsValue,
  onpageswap : JsValue,
) -> Unit = "(obj, onpageswap) => { obj.onpageswap = onpageswap; }"

///|
extern "js" fn html_frame_set_element_onpopstate_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onpopstate"

///|
fn html_frame_set_element_onpopstate_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onpopstate_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_frame_set_element_set_onpopstate_ffi(
  obj : JsValue,
  onpopstate : JsValue,
) -> Unit = "(obj, onpopstate) => { obj.onpopstate = onpopstate; }"

///|
extern "js" fn html_frame_set_element_onrejectionhandled_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onrejectionhandled"

///|
fn html_frame_set_element_onrejectionhandled_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onrejectionhandled_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_frame_set_element_set_onrejectionhandled_ffi(
  obj : JsValue,
  onrejectionhandled : JsValue,
) -> Unit = "(obj, onrejectionhandled) => { obj.onrejectionhandled = onrejectionhandled; }"

///|
extern "js" fn html_frame_set_element_onstorage_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onstorage"

///|
fn html_frame_set_element_onstorage_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onstorage_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_frame_set_element_set_onstorage_ffi(
  obj : JsValue,
  onstorage : JsValue,
) -> Unit = "(obj, onstorage) => { obj.onstorage = onstorage; }"

///|
extern "js" fn html_frame_set_element_onunhandledrejection_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onunhandledrejection"

///|
fn html_frame_set_element_onunhandledrejection_ffi(
  obj : JsValue,
) -> EventHandler {
  html_frame_set_element_onunhandledrejection_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_frame_set_element_set_onunhandledrejection_ffi(
  obj : JsValue,
  onunhandledrejection : JsValue,
) -> Unit = "(obj, onunhandledrejection) => { obj.onunhandledrejection = onunhandledrejection; }"

///|
extern "js" fn html_frame_set_element_onunload_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onunload"

///|
fn html_frame_set_element_onunload_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onunload_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_frame_set_element_set_onunload_ffi(
  obj : JsValue,
  onunload : JsValue,
) -> Unit = "(obj, onunload) => { obj.onunload = onunload; }"
