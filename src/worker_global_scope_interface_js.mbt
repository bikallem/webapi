///|
extern "js" fn worker_global_scope_self_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.self"

///|
fn worker_global_scope_self_ffi(obj : JsValue) -> WorkerGlobalScope {
  worker_global_scope_self_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn worker_global_scope_location_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.location"

///|
fn worker_global_scope_location_ffi(obj : JsValue) -> WorkerLocation {
  worker_global_scope_location_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn worker_global_scope_navigator_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.navigator"

///|
fn worker_global_scope_navigator_ffi(obj : JsValue) -> WorkerNavigator {
  worker_global_scope_navigator_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn worker_global_scope_import_scripts_ffi(
  obj : JsValue,
  urls : JsValue,
) -> Unit = "(obj, urls) => obj.importScripts(urls)"

///|
extern "js" fn worker_global_scope_onerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onerror"

///|
fn worker_global_scope_onerror_ffi(obj : JsValue) -> OnErrorEventHandler {
  worker_global_scope_onerror_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn worker_global_scope_set_onerror_ffi(
  obj : JsValue,
  onerror : JsValue,
) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
extern "js" fn worker_global_scope_onlanguagechange_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onlanguagechange"

///|
fn worker_global_scope_onlanguagechange_ffi(obj : JsValue) -> EventHandler {
  worker_global_scope_onlanguagechange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn worker_global_scope_set_onlanguagechange_ffi(
  obj : JsValue,
  onlanguagechange : JsValue,
) -> Unit = "(obj, onlanguagechange) => { obj.onlanguagechange = onlanguagechange; }"

///|
extern "js" fn worker_global_scope_onoffline_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onoffline"

///|
fn worker_global_scope_onoffline_ffi(obj : JsValue) -> EventHandler {
  worker_global_scope_onoffline_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn worker_global_scope_set_onoffline_ffi(
  obj : JsValue,
  onoffline : JsValue,
) -> Unit = "(obj, onoffline) => { obj.onoffline = onoffline; }"

///|
extern "js" fn worker_global_scope_ononline_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ononline"

///|
fn worker_global_scope_ononline_ffi(obj : JsValue) -> EventHandler {
  worker_global_scope_ononline_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn worker_global_scope_set_ononline_ffi(
  obj : JsValue,
  ononline : JsValue,
) -> Unit = "(obj, ononline) => { obj.ononline = ononline; }"

///|
extern "js" fn worker_global_scope_onrejectionhandled_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onrejectionhandled"

///|
fn worker_global_scope_onrejectionhandled_ffi(obj : JsValue) -> EventHandler {
  worker_global_scope_onrejectionhandled_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn worker_global_scope_set_onrejectionhandled_ffi(
  obj : JsValue,
  onrejectionhandled : JsValue,
) -> Unit = "(obj, onrejectionhandled) => { obj.onrejectionhandled = onrejectionhandled; }"

///|
extern "js" fn worker_global_scope_onunhandledrejection_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onunhandledrejection"

///|
fn worker_global_scope_onunhandledrejection_ffi(obj : JsValue) -> EventHandler {
  worker_global_scope_onunhandledrejection_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn worker_global_scope_set_onunhandledrejection_ffi(
  obj : JsValue,
  onunhandledrejection : JsValue,
) -> Unit = "(obj, onunhandledrejection) => { obj.onunhandledrejection = onunhandledrejection; }"

///|
extern "js" fn worker_global_scope_origin_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.origin"

///|
fn worker_global_scope_origin_ffi(obj : JsValue) -> String {
  worker_global_scope_origin_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn worker_global_scope_is_secure_context_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.isSecureContext"

///|
fn worker_global_scope_is_secure_context_ffi(obj : JsValue) -> Bool {
  worker_global_scope_is_secure_context_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn worker_global_scope_cross_origin_isolated_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.crossOriginIsolated"

///|
fn worker_global_scope_cross_origin_isolated_ffi(obj : JsValue) -> Bool {
  worker_global_scope_cross_origin_isolated_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn worker_global_scope_report_error_ffi(
  obj : JsValue,
  e : JsValue,
) -> Unit = "(obj, e) => obj.reportError(e)"

///|
extern "js" fn worker_global_scope_btoa_ffi_js(
  obj : JsValue,
  data : JsValue,
) -> JsValue = "(obj, data) => obj.btoa(data)"

///|
fn worker_global_scope_btoa_ffi(obj : JsValue, data : JsValue) -> String {
  worker_global_scope_btoa_ffi_js(obj, data).unsafe_cast()
}

///|
extern "js" fn worker_global_scope_atob_ffi_js(
  obj : JsValue,
  data : JsValue,
) -> JsValue = "(obj, data) => obj.atob(data)"

///|
fn worker_global_scope_atob_ffi(obj : JsValue, data : JsValue) -> String {
  worker_global_scope_atob_ffi_js(obj, data).unsafe_cast()
}

///|
extern "js" fn worker_global_scope_set_timeout_ffi_js(
  obj : JsValue,
  handler : JsValue,
  timeout : JsValue,
  arguments : JsValue,
) -> JsValue = "(obj, handler, timeout, _arguments) => obj.setTimeout(handler, timeout, _arguments)"

///|
fn worker_global_scope_set_timeout_ffi(
  obj : JsValue,
  handler : JsValue,
  timeout : JsValue,
  arguments : JsValue,
) -> Int {
  worker_global_scope_set_timeout_ffi_js(obj, handler, timeout, arguments).unsafe_cast()
}

///|
extern "js" fn worker_global_scope_clear_timeout_ffi(
  obj : JsValue,
  id : JsValue,
) -> Unit = "(obj, id) => obj.clearTimeout(id)"

///|
extern "js" fn worker_global_scope_set_interval_ffi_js(
  obj : JsValue,
  handler : JsValue,
  timeout : JsValue,
  arguments : JsValue,
) -> JsValue = "(obj, handler, timeout, _arguments) => obj.setInterval(handler, timeout, _arguments)"

///|
fn worker_global_scope_set_interval_ffi(
  obj : JsValue,
  handler : JsValue,
  timeout : JsValue,
  arguments : JsValue,
) -> Int {
  worker_global_scope_set_interval_ffi_js(obj, handler, timeout, arguments).unsafe_cast()
}

///|
extern "js" fn worker_global_scope_clear_interval_ffi(
  obj : JsValue,
  id : JsValue,
) -> Unit = "(obj, id) => obj.clearInterval(id)"

///|
extern "js" fn worker_global_scope_queue_microtask_ffi(
  obj : JsValue,
  callback : JsValue,
) -> Unit = "(obj, callback) => obj.queueMicrotask(callback)"

///|
extern "js" fn worker_global_scope_create_image_bitmap_ffi_js(
  obj : JsValue,
  image : JsValue,
  options : JsValue,
) -> JsValue = "(obj, image, options) => obj.createImageBitmap(image, options)"

///|
fn worker_global_scope_create_image_bitmap_ffi(
  obj : JsValue,
  image : JsValue,
  options : JsValue,
) -> @js_async.Promise[ImageBitmap] {
  worker_global_scope_create_image_bitmap_ffi_js(obj, image, options).unsafe_cast()
}

///|
extern "js" fn worker_global_scope_create_image_bitmap_2_ffi_js(
  obj : JsValue,
  image : JsValue,
  sx : JsValue,
  sy : JsValue,
  sw : JsValue,
  sh : JsValue,
  options : JsValue,
) -> JsValue = "(obj, image, sx, sy, sw, sh, options) => obj.createImageBitmap_2(image, sx, sy, sw, sh, options)"

///|
fn worker_global_scope_create_image_bitmap_2_ffi(
  obj : JsValue,
  image : JsValue,
  sx : JsValue,
  sy : JsValue,
  sw : JsValue,
  sh : JsValue,
  options : JsValue,
) -> @js_async.Promise[ImageBitmap] {
  worker_global_scope_create_image_bitmap_2_ffi_js(
    obj, image, sx, sy, sw, sh, options,
  ).unsafe_cast()
}

///|
extern "js" fn worker_global_scope_structured_clone_ffi_js(
  obj : JsValue,
  value : JsValue,
  options : JsValue,
) -> JsValue = "(obj, value, options) => obj.structuredClone(value, options)"

///|
fn worker_global_scope_structured_clone_ffi(
  obj : JsValue,
  value : JsValue,
  options : JsValue,
) -> JsValue {
  worker_global_scope_structured_clone_ffi_js(obj, value, options).unsafe_cast()
}

///|
extern "js" fn worker_global_scope_fetch_ffi_js(
  obj : JsValue,
  input : JsValue,
  init : JsValue,
) -> JsValue = "(obj, input, init) => obj.fetch(input, init)"

///|
fn worker_global_scope_fetch_ffi(
  obj : JsValue,
  input : JsValue,
  init : JsValue,
) -> @js_async.Promise[Response] {
  worker_global_scope_fetch_ffi_js(obj, input, init).unsafe_cast()
}

///|
extern "js" fn worker_global_scope_performance_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.performance"

///|
fn worker_global_scope_performance_ffi(obj : JsValue) -> Performance {
  worker_global_scope_performance_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn worker_global_scope_trusted_types_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.trustedTypes"

///|
fn worker_global_scope_trusted_types_ffi(
  obj : JsValue,
) -> TrustedTypePolicyFactory {
  worker_global_scope_trusted_types_ffi_js(obj).unsafe_cast()
}
