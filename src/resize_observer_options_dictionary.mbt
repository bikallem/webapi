// Do not edit. This file is generated.
// MoonBit type: ResizeObserverOptions
// Specifications: resize-observer.idl

/// [ResizeObserverOptions](https://developer.mozilla.org/en-US/docs/Web/API/ResizeObserverOptions)
#external
pub type ResizeObserverOptions

pub impl TJsValue for ResizeObserverOptions with to_js(self: ResizeObserverOptions) -> JsValue = "%identity"

pub impl FromJsAny for ResizeObserverOptions with from_js_any(value : JsAny) -> ResizeObserverOptions = "%identity"

pub fn ResizeObserverOptions::new(box? : ResizeObserverBoxOptions) -> ResizeObserverOptions {
  resize_observer_options_ffi(opt_to_js(box))
}

pub fn ResizeObserverOptions::empty() -> ResizeObserverOptions { resize_observer_options_empty_ffi() }

pub fn ResizeObserverOptions::box(self : ResizeObserverOptions) -> ResizeObserverBoxOptions? {
  resize_observer_options_get_box_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
extern "js" fn resize_observer_options_ffi(box: JsValue) -> ResizeObserverOptions = 
#|(box) => {
#|  const obj = {};
#|  if (box !== undefined) obj.box = box;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn resize_observer_options_empty_ffi() -> ResizeObserverOptions = "() => {}"

#cfg(target="js")
extern "js" fn resize_observer_options_get_box_ffi(obj: JsValue) -> JsValue = "(obj) => obj.box"

#cfg(target="wasm-gc")
fn resize_observer_options_ffi(box: JsValue) -> ResizeObserverOptions = "webapi_ResizeObserverOptions" "new"

#cfg(target="wasm-gc")
fn resize_observer_options_empty_ffi() -> ResizeObserverOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn resize_observer_options_get_box_ffi(obj: JsValue) -> JsValue = "webapi_ResizeObserverOptions" "get_box"