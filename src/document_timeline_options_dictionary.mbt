// Do not edit. This file is generated.
// MoonBit type: DocumentTimelineOptions
// Specifications: web-animations.idl

/// [DocumentTimelineOptions](https://developer.mozilla.org/en-US/docs/Web/API/DocumentTimelineOptions)
#external
pub type DocumentTimelineOptions

pub impl TJsValue for DocumentTimelineOptions with to_js(self: DocumentTimelineOptions) -> JsValue = "%identity"

pub impl FromJsAny for DocumentTimelineOptions with from_js_any(value : JsAny) -> DocumentTimelineOptions = "%identity"

pub fn DocumentTimelineOptions::new(origin_time? : DOMHighResTimeStamp) -> DocumentTimelineOptions {
  document_timeline_options_ffi(opt_to_js(origin_time))
}

pub fn DocumentTimelineOptions::empty() -> DocumentTimelineOptions { document_timeline_options_empty_ffi() }

pub fn DocumentTimelineOptions::origin_time(self : DocumentTimelineOptions) -> DOMHighResTimeStamp? {
  document_timeline_options_get_origin_time_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
extern "js" fn document_timeline_options_ffi(origin_time: JsValue) -> DocumentTimelineOptions = 
#|(originTime) => {
#|  const obj = {};
#|  if (originTime !== undefined) obj.originTime = originTime;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn document_timeline_options_empty_ffi() -> DocumentTimelineOptions = "() => {}"

#cfg(target="js")
extern "js" fn document_timeline_options_get_origin_time_ffi(obj: JsValue) -> JsValue = "(obj) => obj.originTime"

#cfg(target="wasm-gc")
fn document_timeline_options_ffi(origin_time: JsValue) -> DocumentTimelineOptions = "webapi_DocumentTimelineOptions" "new"

#cfg(target="wasm-gc")
fn document_timeline_options_empty_ffi() -> DocumentTimelineOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn document_timeline_options_get_origin_time_ffi(obj: JsValue) -> JsValue = "webapi_DocumentTimelineOptions" "get_originTime"