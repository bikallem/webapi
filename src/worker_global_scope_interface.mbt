// Do not edit. This file is generated.
// MoonBit type: WorkerGlobalScope
// Specifications: html.idl

///|
/// [WorkerGlobalScope](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope)
#external
pub type WorkerGlobalScope

///|
pub impl TJsValue for WorkerGlobalScope with to_js(self : WorkerGlobalScope) -> JsValue = "%identity"

///|
pub impl FromJsAny for WorkerGlobalScope with from_js_any(value : JsAny) -> WorkerGlobalScope = "%identity"

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
/// [WorkerGlobalScope](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope) interface.
pub trait TWorkerGlobalScope: TEventTarget {
  self(self : Self) -> WorkerGlobalScope = _
  location(self : Self) -> WorkerLocation = _
  navigator(self : Self) -> WorkerNavigator = _
  import_scripts(
    self : Self,
    urls : Array[&TWorkerGlobalScopeImportScriptsUrls],
  ) -> Unit = _
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
    handler : &TTimerHandler,
    timeout? : Int,
    arguments : Array[&TJsValue],
  ) -> Int = _
  clear_timeout(self : Self, id? : Int) -> Unit = _
  set_interval(
    self : Self,
    handler : &TTimerHandler,
    timeout? : Int,
    arguments : Array[&TJsValue],
  ) -> Int = _
  clear_interval(self : Self, id? : Int) -> Unit = _
  queue_microtask(self : Self, callback : VoidFunction) -> Unit = _
  create_image_bitmap(
    self : Self,
    image : &TImageBitmapSource,
    options? : ImageBitmapOptions,
  ) -> JsPromise[ImageBitmap] = _
  create_image_bitmap_cropped(
    self : Self,
    image : &TImageBitmapSource,
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
  fetch(self : Self, input : &TRequestInfo, init? : RequestInit) -> JsPromise[
    Response,
  ] = _
  performance(self : Self) -> Performance = _
  trusted_types(self : Self) -> TrustedTypePolicyFactory = _
}

///|
/// [WorkerGlobalScope.self](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/self)
impl TWorkerGlobalScope with self(self : Self) -> WorkerGlobalScope {
  worker_global_scope_self_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerGlobalScope.location](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/location)
impl TWorkerGlobalScope with location(self : Self) -> WorkerLocation {
  worker_global_scope_location_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerGlobalScope.navigator](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/navigator)
impl TWorkerGlobalScope with navigator(self : Self) -> WorkerNavigator {
  worker_global_scope_navigator_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerGlobalScope.importScripts](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/importScripts)
impl TWorkerGlobalScope with import_scripts(
  self : Self,
  urls : Array[&TWorkerGlobalScopeImportScriptsUrls],
) -> Unit {
  worker_global_scope_import_scripts_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(
      urls.map(fn(v : &TWorkerGlobalScopeImportScriptsUrls) -> JsValue {
        v.to_js()
      }),
    ),
  )
}

///|
/// [WorkerGlobalScope.onerror](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/onerror)
impl TWorkerGlobalScope with onerror(self : Self) -> OnErrorEventHandler {
  worker_global_scope_onerror_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerGlobalScope.onerror](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/onerror)
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
/// [WorkerGlobalScope.onlanguagechange](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/onlanguagechange)
impl TWorkerGlobalScope with onlanguagechange(self : Self) -> EventHandler {
  worker_global_scope_onlanguagechange_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerGlobalScope.onlanguagechange](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/onlanguagechange)
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
/// [WorkerGlobalScope.onoffline](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/onoffline)
impl TWorkerGlobalScope with onoffline(self : Self) -> EventHandler {
  worker_global_scope_onoffline_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerGlobalScope.onoffline](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/onoffline)
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
/// [WorkerGlobalScope.ononline](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/ononline)
impl TWorkerGlobalScope with ononline(self : Self) -> EventHandler {
  worker_global_scope_ononline_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerGlobalScope.ononline](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/ononline)
impl TWorkerGlobalScope with set_ononline(self : Self, ononline : EventHandler) -> Unit {
  worker_global_scope_set_ononline_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ononline),
  )
}

///|
/// [WorkerGlobalScope.onrejectionhandled](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/onrejectionhandled)
impl TWorkerGlobalScope with onrejectionhandled(self : Self) -> EventHandler {
  worker_global_scope_onrejectionhandled_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerGlobalScope.onrejectionhandled](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/onrejectionhandled)
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
/// [WorkerGlobalScope.onunhandledrejection](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/onunhandledrejection)
impl TWorkerGlobalScope with onunhandledrejection(self : Self) -> EventHandler {
  worker_global_scope_onunhandledrejection_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerGlobalScope.onunhandledrejection](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/onunhandledrejection)
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
/// [WorkerGlobalScope.origin](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/origin)
impl TWorkerGlobalScope with origin(self : Self) -> String {
  worker_global_scope_origin_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerGlobalScope.isSecureContext](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/isSecureContext)
impl TWorkerGlobalScope with is_secure_context(self : Self) -> Bool {
  worker_global_scope_is_secure_context_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerGlobalScope.crossOriginIsolated](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/crossOriginIsolated)
impl TWorkerGlobalScope with cross_origin_isolated(self : Self) -> Bool {
  worker_global_scope_cross_origin_isolated_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerGlobalScope.reportError](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/reportError)
impl TWorkerGlobalScope with report_error(self : Self, e : JsValue) -> Unit {
  worker_global_scope_report_error_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(e),
  )
}

///|
/// [WorkerGlobalScope.btoa](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/btoa)
impl TWorkerGlobalScope with btoa(self : Self, data : String) -> String {
  worker_global_scope_btoa_ffi(TJsValue::to_js(self), TJsValue::to_js(data))
}

///|
/// [WorkerGlobalScope.atob](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/atob)
impl TWorkerGlobalScope with atob(self : Self, data : String) -> String {
  worker_global_scope_atob_ffi(TJsValue::to_js(self), TJsValue::to_js(data))
}

///|
/// [WorkerGlobalScope.setTimeout](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/setTimeout)
impl TWorkerGlobalScope with set_timeout(
  self : Self,
  handler : &TTimerHandler,
  timeout? : Int = (0 : Int),
  arguments : Array[&TJsValue],
) -> Int {
  worker_global_scope_set_timeout_ffi(
    TJsValue::to_js(self),
    handler.to_js(),
    TJsValue::to_js(timeout),
    TJsValue::to_js(arguments.map(fn(v : &TJsValue) -> JsValue { v.to_js() })),
  )
}

///|
/// [WorkerGlobalScope.clearTimeout](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/clearTimeout)
impl TWorkerGlobalScope with clear_timeout(self : Self, id? : Int = (0 : Int)) -> Unit {
  worker_global_scope_clear_timeout_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(id),
  )
}

///|
/// [WorkerGlobalScope.setInterval](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/setInterval)
impl TWorkerGlobalScope with set_interval(
  self : Self,
  handler : &TTimerHandler,
  timeout? : Int = (0 : Int),
  arguments : Array[&TJsValue],
) -> Int {
  worker_global_scope_set_interval_ffi(
    TJsValue::to_js(self),
    handler.to_js(),
    TJsValue::to_js(timeout),
    TJsValue::to_js(arguments.map(fn(v : &TJsValue) -> JsValue { v.to_js() })),
  )
}

///|
/// [WorkerGlobalScope.clearInterval](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/clearInterval)
impl TWorkerGlobalScope with clear_interval(self : Self, id? : Int = (0 : Int)) -> Unit {
  worker_global_scope_clear_interval_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(id),
  )
}

///|
/// [WorkerGlobalScope.queueMicrotask](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/queueMicrotask)
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
/// [WorkerGlobalScope.createImageBitmap](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/createImageBitmap)
impl TWorkerGlobalScope with create_image_bitmap(
  self : Self,
  image : &TImageBitmapSource,
  options? : ImageBitmapOptions = ImageBitmapOptions::empty(),
) -> JsPromise[ImageBitmap] {
  worker_global_scope_create_image_bitmap_ffi(
    TJsValue::to_js(self),
    image.to_js(),
    TJsValue::to_js(options),
  )
}

///|
/// [WorkerGlobalScope.createImageBitmap](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/createImageBitmap)
impl TWorkerGlobalScope with create_image_bitmap_cropped(
  self : Self,
  image : &TImageBitmapSource,
  sx : Int,
  sy : Int,
  sw : Int,
  sh : Int,
  options? : ImageBitmapOptions = ImageBitmapOptions::empty(),
) -> JsPromise[ImageBitmap] {
  worker_global_scope_create_image_bitmap_cropped_ffi(
    TJsValue::to_js(self),
    image.to_js(),
    TJsValue::to_js(sx),
    TJsValue::to_js(sy),
    TJsValue::to_js(sw),
    TJsValue::to_js(sh),
    TJsValue::to_js(options),
  )
}

///|
/// [WorkerGlobalScope.structuredClone](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/structuredClone)
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

///|
/// [WorkerGlobalScope.fetch](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/fetch)
impl TWorkerGlobalScope with fetch(
  self : Self,
  input : &TRequestInfo,
  init? : RequestInit = RequestInit::empty(),
) -> JsPromise[Response] {
  worker_global_scope_fetch_ffi(
    TJsValue::to_js(self),
    input.to_js(),
    TJsValue::to_js(init),
  )
}

///|
/// [WorkerGlobalScope.performance](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/performance)
impl TWorkerGlobalScope with performance(self : Self) -> Performance {
  worker_global_scope_performance_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerGlobalScope.trustedTypes](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/trustedTypes)
impl TWorkerGlobalScope with trusted_types(self : Self) -> TrustedTypePolicyFactory {
  worker_global_scope_trusted_types_ffi(TJsValue::to_js(self))
}
