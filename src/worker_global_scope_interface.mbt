// Do not edit. This file is generated.
// MoonBit type: WorkerGlobalScope
// Specifications: html.idl

///|
#external
pub type WorkerGlobalScope

///|
pub impl TJsValue for WorkerGlobalScope with to_js(self : WorkerGlobalScope) -> JsValue = "%identity"

///|
pub fn[T : TWorkerGlobalScope] WorkerGlobalScope::into(
  self : WorkerGlobalScope,
) -> T = "%identity"

///|
pub impl TWorkerGlobalScope for WorkerGlobalScope

///|
pub impl TEventTarget for WorkerGlobalScope

///|
pub(open) trait TWorkerGlobalScopeImportScriptsUrls {
  to_js(self : Self) -> JsValue
}

///|
pub impl TWorkerGlobalScopeImportScriptsUrls for TrustedScriptURL with to_js(
  self : TrustedScriptURL,
) -> JsValue = "%identity"

///|
pub impl TWorkerGlobalScopeImportScriptsUrls for String with to_js(
  self : String,
) -> JsValue = "%identity"

///|
pub trait TWorkerGlobalScope: TEventTarget {
  self(self : Self) -> WorkerGlobalScope = _
  location(self : Self) -> WorkerLocation = _
  navigator(self : Self) -> WorkerNavigator = _
  import_scripts(self : Self, urls : &TWorkerGlobalScopeImportScriptsUrls) -> Unit = _
  onerror(self : Self) -> OnErrorEventHandler = _
  set_onerror(self : Self, onerror : OnErrorEventHandler) -> Unit = _
  onlanguagechange(self : Self) -> EventHandler = _
  set_onlanguagechange(self : Self, onlanguagechange : EventHandler) -> Unit = _
  onoffline(self : Self) -> EventHandler = _
  set_onoffline(self : Self, onoffline : EventHandler) -> Unit = _
  ononline(self : Self) -> EventHandler = _
  set_ononline(self : Self, ononline : EventHandler) -> Unit = _
  onrejectionhandled(self : Self) -> EventHandler = _
  set_onrejectionhandled(self : Self, onrejectionhandled : EventHandler) -> Unit = _
  onunhandledrejection(self : Self) -> EventHandler = _
  set_onunhandledrejection(self : Self, onunhandledrejection : EventHandler) -> Unit = _
  origin(self : Self) -> String = _
  is_secure_context(self : Self) -> Bool = _
  cross_origin_isolated(self : Self) -> Bool = _
  report_error(self : Self, e : JsValue) -> Unit = _
  btoa(self : Self, data : String) -> String = _
  atob(self : Self, data : String) -> String = _
  set_timeout(
    self : Self,
    handler : TimerHandler,
    timeout? : Int,
    arguments : JsValue,
  ) -> Int = _
  clear_timeout(self : Self, id? : Int) -> Unit = _
  set_interval(
    self : Self,
    handler : TimerHandler,
    timeout? : Int,
    arguments : JsValue,
  ) -> Int = _
  clear_interval(self : Self, id? : Int) -> Unit = _
  queue_microtask(self : Self, callback : VoidFunction) -> Unit = _
  create_image_bitmap(
    self : Self,
    image : ImageBitmapSource,
    options? : ImageBitmapOptions,
  ) -> JsPromise[ImageBitmap] = _
  create_image_bitmap_2(
    self : Self,
    image : ImageBitmapSource,
    sx : Int,
    sy : Int,
    sw : Int,
    sh : Int,
    options? : ImageBitmapOptions,
  ) -> JsPromise[ImageBitmap] = _
  structured_clone(
    self : Self,
    value : JsValue,
    options? : StructuredSerializeOptions,
  ) -> JsValue = _
}

///|
extern "js" fn worker_global_scope_self_ffi(obj : JsValue) -> WorkerGlobalScope = "(obj) => obj.self"

///|
impl TWorkerGlobalScope with self(self : Self) -> WorkerGlobalScope {
  worker_global_scope_self_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_global_scope_location_ffi(
  obj : JsValue,
) -> WorkerLocation = "(obj) => obj.location"

///|
impl TWorkerGlobalScope with location(self : Self) -> WorkerLocation {
  worker_global_scope_location_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_global_scope_navigator_ffi(
  obj : JsValue,
) -> WorkerNavigator = "(obj) => obj.navigator"

///|
impl TWorkerGlobalScope with navigator(self : Self) -> WorkerNavigator {
  worker_global_scope_navigator_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_global_scope_import_scripts_ffi(
  obj : JsValue,
  urls : JsValue,
) -> Unit = "(obj, urls) => obj.importScripts(obj, urls)"

///|
impl TWorkerGlobalScope with import_scripts(
  self : Self,
  urls : &TWorkerGlobalScopeImportScriptsUrls,
) -> Unit {
  worker_global_scope_import_scripts_ffi(TJsValue::to_js(self), urls.to_js())
}

///|
extern "js" fn worker_global_scope_onerror_ffi(
  obj : JsValue,
) -> OnErrorEventHandler = "(obj) => obj.onerror"

///|
impl TWorkerGlobalScope with onerror(self : Self) -> OnErrorEventHandler {
  worker_global_scope_onerror_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_global_scope_set_onerror_ffi(
  obj : JsValue,
  onerror : JsValue,
) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
impl TWorkerGlobalScope with set_onerror(
  self : Self,
  onerror : OnErrorEventHandler,
) -> Unit {
  worker_global_scope_set_onerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onerror),
  )
}

///|
extern "js" fn worker_global_scope_onlanguagechange_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onlanguagechange"

///|
impl TWorkerGlobalScope with onlanguagechange(self : Self) -> EventHandler {
  worker_global_scope_onlanguagechange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_global_scope_set_onlanguagechange_ffi(
  obj : JsValue,
  onlanguagechange : JsValue,
) -> Unit = "(obj, onlanguagechange) => { obj.onlanguagechange = onlanguagechange; }"

///|
impl TWorkerGlobalScope with set_onlanguagechange(
  self : Self,
  onlanguagechange : EventHandler,
) -> Unit {
  worker_global_scope_set_onlanguagechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onlanguagechange),
  )
}

///|
extern "js" fn worker_global_scope_onoffline_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onoffline"

///|
impl TWorkerGlobalScope with onoffline(self : Self) -> EventHandler {
  worker_global_scope_onoffline_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_global_scope_set_onoffline_ffi(
  obj : JsValue,
  onoffline : JsValue,
) -> Unit = "(obj, onoffline) => { obj.onoffline = onoffline; }"

///|
impl TWorkerGlobalScope with set_onoffline(
  self : Self,
  onoffline : EventHandler,
) -> Unit {
  worker_global_scope_set_onoffline_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onoffline),
  )
}

///|
extern "js" fn worker_global_scope_ononline_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ononline"

///|
impl TWorkerGlobalScope with ononline(self : Self) -> EventHandler {
  worker_global_scope_ononline_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_global_scope_set_ononline_ffi(
  obj : JsValue,
  ononline : JsValue,
) -> Unit = "(obj, ononline) => { obj.ononline = ononline; }"

///|
impl TWorkerGlobalScope with set_ononline(self : Self, ononline : EventHandler) -> Unit {
  worker_global_scope_set_ononline_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ononline),
  )
}

///|
extern "js" fn worker_global_scope_onrejectionhandled_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onrejectionhandled"

///|
impl TWorkerGlobalScope with onrejectionhandled(self : Self) -> EventHandler {
  worker_global_scope_onrejectionhandled_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_global_scope_set_onrejectionhandled_ffi(
  obj : JsValue,
  onrejectionhandled : JsValue,
) -> Unit = "(obj, onrejectionhandled) => { obj.onrejectionhandled = onrejectionhandled; }"

///|
impl TWorkerGlobalScope with set_onrejectionhandled(
  self : Self,
  onrejectionhandled : EventHandler,
) -> Unit {
  worker_global_scope_set_onrejectionhandled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onrejectionhandled),
  )
}

///|
extern "js" fn worker_global_scope_onunhandledrejection_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onunhandledrejection"

///|
impl TWorkerGlobalScope with onunhandledrejection(self : Self) -> EventHandler {
  worker_global_scope_onunhandledrejection_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_global_scope_set_onunhandledrejection_ffi(
  obj : JsValue,
  onunhandledrejection : JsValue,
) -> Unit = "(obj, onunhandledrejection) => { obj.onunhandledrejection = onunhandledrejection; }"

///|
impl TWorkerGlobalScope with set_onunhandledrejection(
  self : Self,
  onunhandledrejection : EventHandler,
) -> Unit {
  worker_global_scope_set_onunhandledrejection_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onunhandledrejection),
  )
}

///|
extern "js" fn worker_global_scope_origin_ffi(obj : JsValue) -> String = "(obj) => obj.origin"

///|
impl TWorkerGlobalScope with origin(self : Self) -> String {
  worker_global_scope_origin_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_global_scope_is_secure_context_ffi(obj : JsValue) -> Bool = "(obj) => obj.isSecureContext"

///|
impl TWorkerGlobalScope with is_secure_context(self : Self) -> Bool {
  worker_global_scope_is_secure_context_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_global_scope_cross_origin_isolated_ffi(
  obj : JsValue,
) -> Bool = "(obj) => obj.crossOriginIsolated"

///|
impl TWorkerGlobalScope with cross_origin_isolated(self : Self) -> Bool {
  worker_global_scope_cross_origin_isolated_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_global_scope_report_error_ffi(
  obj : JsValue,
  e : JsValue,
) -> Unit = "(obj, e) => obj.reportError(obj, e)"

///|
impl TWorkerGlobalScope with report_error(self : Self, e : JsValue) -> Unit {
  worker_global_scope_report_error_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(e),
  )
}

///|
extern "js" fn worker_global_scope_btoa_ffi(
  obj : JsValue,
  data : JsValue,
) -> String = "(obj, data) => obj.btoa(obj, data)"

///|
impl TWorkerGlobalScope with btoa(self : Self, data : String) -> String {
  worker_global_scope_btoa_ffi(TJsValue::to_js(self), TJsValue::to_js(data))
}

///|
extern "js" fn worker_global_scope_atob_ffi(
  obj : JsValue,
  data : JsValue,
) -> String = "(obj, data) => obj.atob(obj, data)"

///|
impl TWorkerGlobalScope with atob(self : Self, data : String) -> String {
  worker_global_scope_atob_ffi(TJsValue::to_js(self), TJsValue::to_js(data))
}

///|
extern "js" fn worker_global_scope_set_timeout_ffi(
  obj : JsValue,
  handler : JsValue,
  timeout : JsValue,
  arguments : JsValue,
) -> Int = "(obj, handler, timeout, arguments) => obj.setTimeout(obj, handler, timeout, arguments)"

///|
impl TWorkerGlobalScope with set_timeout(
  self : Self,
  handler : TimerHandler,
  timeout? : Int = 0,
  arguments : JsValue,
) -> Int {
  worker_global_scope_set_timeout_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(handler),
    TJsValue::to_js(timeout),
    TJsValue::to_js(arguments),
  )
}

///|
extern "js" fn worker_global_scope_clear_timeout_ffi(
  obj : JsValue,
  id : JsValue,
) -> Unit = "(obj, id) => obj.clearTimeout(obj, id)"

///|
impl TWorkerGlobalScope with clear_timeout(self : Self, id? : Int = 0) -> Unit {
  worker_global_scope_clear_timeout_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(id),
  )
}

///|
extern "js" fn worker_global_scope_set_interval_ffi(
  obj : JsValue,
  handler : JsValue,
  timeout : JsValue,
  arguments : JsValue,
) -> Int = "(obj, handler, timeout, arguments) => obj.setInterval(obj, handler, timeout, arguments)"

///|
impl TWorkerGlobalScope with set_interval(
  self : Self,
  handler : TimerHandler,
  timeout? : Int = 0,
  arguments : JsValue,
) -> Int {
  worker_global_scope_set_interval_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(handler),
    TJsValue::to_js(timeout),
    TJsValue::to_js(arguments),
  )
}

///|
extern "js" fn worker_global_scope_clear_interval_ffi(
  obj : JsValue,
  id : JsValue,
) -> Unit = "(obj, id) => obj.clearInterval(obj, id)"

///|
impl TWorkerGlobalScope with clear_interval(self : Self, id? : Int = 0) -> Unit {
  worker_global_scope_clear_interval_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(id),
  )
}

///|
extern "js" fn worker_global_scope_queue_microtask_ffi(
  obj : JsValue,
  callback : JsValue,
) -> Unit = "(obj, callback) => obj.queueMicrotask(obj, callback)"

///|
impl TWorkerGlobalScope with queue_microtask(
  self : Self,
  callback : VoidFunction,
) -> Unit {
  worker_global_scope_queue_microtask_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(callback),
  )
}

///|
extern "js" fn worker_global_scope_create_image_bitmap_ffi(
  obj : JsValue,
  image : JsValue,
  options : JsValue,
) -> JsPromise[ImageBitmap] = "(obj, image, options) => obj.createImageBitmap(obj, image, options)"

///|
impl TWorkerGlobalScope with create_image_bitmap(
  self : Self,
  image : ImageBitmapSource,
  options? : ImageBitmapOptions = ImageBitmapOptions::empty(),
) -> JsPromise[ImageBitmap] {
  worker_global_scope_create_image_bitmap_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(image),
    TJsValue::to_js(options),
  )
}

///|
extern "js" fn worker_global_scope_create_image_bitmap_2_ffi(
  obj : JsValue,
  image : JsValue,
  sx : JsValue,
  sy : JsValue,
  sw : JsValue,
  sh : JsValue,
  options : JsValue,
) -> JsPromise[ImageBitmap] = "(obj, image, sx, sy, sw, sh, options) => obj.createImageBitmap_2(obj, image, sx, sy, sw, sh, options)"

///|
impl TWorkerGlobalScope with create_image_bitmap_2(
  self : Self,
  image : ImageBitmapSource,
  sx : Int,
  sy : Int,
  sw : Int,
  sh : Int,
  options? : ImageBitmapOptions = ImageBitmapOptions::empty(),
) -> JsPromise[ImageBitmap] {
  worker_global_scope_create_image_bitmap_2_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(image),
    TJsValue::to_js(sx),
    TJsValue::to_js(sy),
    TJsValue::to_js(sw),
    TJsValue::to_js(sh),
    TJsValue::to_js(options),
  )
}

///|
extern "js" fn worker_global_scope_structured_clone_ffi(
  obj : JsValue,
  value : JsValue,
  options : JsValue,
) -> JsValue = "(obj, value, options) => obj.structuredClone(obj, value, options)"

///|
impl TWorkerGlobalScope with structured_clone(
  self : Self,
  value : JsValue,
  options? : StructuredSerializeOptions = StructuredSerializeOptions::empty(),
) -> JsValue {
  worker_global_scope_structured_clone_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(value),
    TJsValue::to_js(options),
  )
}
