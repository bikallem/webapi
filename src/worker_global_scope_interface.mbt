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
  import_scripts(self : Self, urls : &TWorkerGlobalScopeImportScriptsUrls) -> Unit = _
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
