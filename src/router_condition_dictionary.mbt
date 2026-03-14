// Do not edit. This file is generated.
// MoonBit type: RouterCondition
// Specifications: service-workers.idl

/// [RouterCondition](https://developer.mozilla.org/en-US/docs/Web/API/RouterCondition)
#external
pub type RouterCondition

pub impl TJsValue for RouterCondition with to_js(self: RouterCondition) -> JsValue = "%identity"

pub impl FromJsAny for RouterCondition with from_js_any(value : JsAny) -> RouterCondition = "%identity"

pub fn RouterCondition::new(url_pattern? : &TURLPatternCompatible, 
request_method? : String, 
request_mode? : RequestMode, 
request_destination? : RequestDestination, 
running_status? : RunningStatus, 
_or? : Array[RouterCondition], 
not? : RouterCondition) -> RouterCondition {
  router_condition_ffi(match url_pattern {
Some(v) => v.to_js()
None => JsValue::undefined()
}, opt_to_js(request_method), opt_to_js(request_mode), opt_to_js(request_destination), opt_to_js(running_status), opt_to_js(_or), opt_to_js(not))
}

pub fn RouterCondition::empty() -> RouterCondition { router_condition_empty_ffi() }

pub fn RouterCondition::url_pattern(self : RouterCondition) -> URLPatternCompatible? {
  router_condition_get_url_pattern_ffi(TJsValue::to_js(self)).to_option()
}

pub fn RouterCondition::request_method(self : RouterCondition) -> String? {
  router_condition_get_request_method_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn RouterCondition::request_mode(self : RouterCondition) -> RequestMode? {
  router_condition_get_request_mode_ffi(TJsValue::to_js(self)).to_option()
}

pub fn RouterCondition::request_destination(self : RouterCondition) -> RequestDestination? {
  router_condition_get_request_destination_ffi(TJsValue::to_js(self)).to_option()
}

pub fn RouterCondition::running_status(self : RouterCondition) -> RunningStatus? {
  router_condition_get_running_status_ffi(TJsValue::to_js(self)).to_option()
}

pub fn RouterCondition::_or(self : RouterCondition) -> Array[RouterCondition]? {
  router_condition_get__or_ffi(TJsValue::to_js(self)).to_option()
}

pub fn RouterCondition::not(self : RouterCondition) -> RouterCondition? {
  router_condition_get_not_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
extern "js" fn router_condition_ffi(url_pattern: JsValue, request_method: JsValue, request_mode: JsValue, request_destination: JsValue, running_status: JsValue, _or: JsValue, not: JsValue) -> RouterCondition = 
#|(urlPattern, requestMethod, requestMode, requestDestination, runningStatus, _or, not) => {
#|  const obj = {};
#|  if (urlPattern !== undefined) obj.urlPattern = urlPattern;
#|  if (requestMethod !== undefined) obj.requestMethod = requestMethod;
#|  if (requestMode !== undefined) obj.requestMode = requestMode;
#|  if (requestDestination !== undefined) obj.requestDestination = requestDestination;
#|  if (runningStatus !== undefined) obj.runningStatus = runningStatus;
#|  if (_or !== undefined) obj._or = _or;
#|  if (not !== undefined) obj.not = not;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn router_condition_empty_ffi() -> RouterCondition = "() => {}"

#cfg(target="js")
extern "js" fn router_condition_get_url_pattern_ffi(obj: JsValue) -> JsValue = "(obj) => obj.urlPattern"

#cfg(target="js")
extern "js" fn router_condition_get_request_method_ffi(obj: JsValue) -> JsValue = "(obj) => obj.requestMethod"

#cfg(target="js")
extern "js" fn router_condition_get_request_mode_ffi(obj: JsValue) -> JsValue = "(obj) => obj.requestMode"

#cfg(target="js")
extern "js" fn router_condition_get_request_destination_ffi(obj: JsValue) -> JsValue = "(obj) => obj.requestDestination"

#cfg(target="js")
extern "js" fn router_condition_get_running_status_ffi(obj: JsValue) -> JsValue = "(obj) => obj.runningStatus"

#cfg(target="js")
extern "js" fn router_condition_get__or_ffi(obj: JsValue) -> JsValue = "(obj) => obj._or"

#cfg(target="js")
extern "js" fn router_condition_get_not_ffi(obj: JsValue) -> JsValue = "(obj) => obj.not"

#cfg(target="wasm-gc")
fn router_condition_ffi(url_pattern: JsValue, request_method: JsValue, request_mode: JsValue, request_destination: JsValue, running_status: JsValue, _or: JsValue, not: JsValue) -> RouterCondition = "webapi_RouterCondition" "new"

#cfg(target="wasm-gc")
fn router_condition_empty_ffi() -> RouterCondition = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn router_condition_get_url_pattern_ffi(obj: JsValue) -> JsValue = "webapi_RouterCondition" "get_urlPattern"

#cfg(target="wasm-gc")
fn router_condition_get_request_method_ffi(obj: JsValue) -> JsValue = "webapi_RouterCondition" "get_requestMethod"

#cfg(target="wasm-gc")
fn router_condition_get_request_mode_ffi(obj: JsValue) -> JsValue = "webapi_RouterCondition" "get_requestMode"

#cfg(target="wasm-gc")
fn router_condition_get_request_destination_ffi(obj: JsValue) -> JsValue = "webapi_RouterCondition" "get_requestDestination"

#cfg(target="wasm-gc")
fn router_condition_get_running_status_ffi(obj: JsValue) -> JsValue = "webapi_RouterCondition" "get_runningStatus"

#cfg(target="wasm-gc")
fn router_condition_get__or_ffi(obj: JsValue) -> JsValue = "webapi_RouterCondition" "get__or"

#cfg(target="wasm-gc")
fn router_condition_get_not_ffi(obj: JsValue) -> JsValue = "webapi_RouterCondition" "get_not"