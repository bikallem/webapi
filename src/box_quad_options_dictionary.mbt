// Do not edit. This file is generated.
// MoonBit type: BoxQuadOptions
// Specifications: cssom-view.idl

/// [BoxQuadOptions](https://developer.mozilla.org/en-US/docs/Web/API/BoxQuadOptions)
#external
pub type BoxQuadOptions

pub impl TJsValue for BoxQuadOptions with to_js(self: BoxQuadOptions) -> JsValue = "%identity"

pub impl FromJsAny for BoxQuadOptions with from_js_any(value : JsAny) -> BoxQuadOptions = "%identity"

pub fn BoxQuadOptions::new(box? : CSSBoxType, 
relative_to? : &TGeometryNode) -> BoxQuadOptions {
  box_quad_options_ffi(opt_to_js(box), match relative_to {
Some(v) => v.to_js()
None => JsValue::undefined()
})
}

pub fn BoxQuadOptions::empty() -> BoxQuadOptions { box_quad_options_empty_ffi() }

pub fn BoxQuadOptions::box(self : BoxQuadOptions) -> CSSBoxType? {
  box_quad_options_get_box_ffi(TJsValue::to_js(self)).to_option()
}

pub fn BoxQuadOptions::relative_to(self : BoxQuadOptions) -> GeometryNode? {
  box_quad_options_get_relative_to_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
extern "js" fn box_quad_options_ffi(box: JsValue, relative_to: JsValue) -> BoxQuadOptions = 
#|(box, relativeTo) => {
#|  const obj = {};
#|  if (box !== undefined) obj.box = box;
#|  if (relativeTo !== undefined) obj.relativeTo = relativeTo;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn box_quad_options_empty_ffi() -> BoxQuadOptions = "() => {}"

#cfg(target="js")
extern "js" fn box_quad_options_get_box_ffi(obj: JsValue) -> JsValue = "(obj) => obj.box"

#cfg(target="js")
extern "js" fn box_quad_options_get_relative_to_ffi(obj: JsValue) -> JsValue = "(obj) => obj.relativeTo"

#cfg(target="wasm-gc")
fn box_quad_options_ffi(box: JsValue, relative_to: JsValue) -> BoxQuadOptions = "webapi_BoxQuadOptions" "new"

#cfg(target="wasm-gc")
fn box_quad_options_empty_ffi() -> BoxQuadOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn box_quad_options_get_box_ffi(obj: JsValue) -> JsValue = "webapi_BoxQuadOptions" "get_box"

#cfg(target="wasm-gc")
fn box_quad_options_get_relative_to_ffi(obj: JsValue) -> JsValue = "webapi_BoxQuadOptions" "get_relativeTo"