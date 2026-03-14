// Do not edit. This file is generated.
// MoonBit type: BlobPropertyBag
// Specifications: FileAPI.idl

/// [BlobPropertyBag](https://developer.mozilla.org/en-US/docs/Web/API/BlobPropertyBag)
#external
pub type BlobPropertyBag

pub impl TJsValue for BlobPropertyBag with to_js(self: BlobPropertyBag) -> JsValue = "%identity"

pub impl FromJsAny for BlobPropertyBag with from_js_any(value : JsAny) -> BlobPropertyBag = "%identity"

pub fn BlobPropertyBag::new(type_? : String, 
endings? : EndingType) -> BlobPropertyBag {
  blob_property_bag_ffi(opt_to_js(type_), opt_to_js(endings))
}

pub fn BlobPropertyBag::empty() -> BlobPropertyBag { blob_property_bag_empty_ffi() }

pub fn BlobPropertyBag::type_(self : BlobPropertyBag) -> String? {
  blob_property_bag_get_type_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn BlobPropertyBag::endings(self : BlobPropertyBag) -> EndingType? {
  blob_property_bag_get_endings_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
extern "js" fn blob_property_bag_ffi(type_: JsValue, endings: JsValue) -> BlobPropertyBag = 
#|(type, endings) => {
#|  const obj = {};
#|  if (type !== undefined) obj.type = type;
#|  if (endings !== undefined) obj.endings = endings;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn blob_property_bag_empty_ffi() -> BlobPropertyBag = "() => {}"

#cfg(target="js")
extern "js" fn blob_property_bag_get_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.type"

#cfg(target="js")
extern "js" fn blob_property_bag_get_endings_ffi(obj: JsValue) -> JsValue = "(obj) => obj.endings"

#cfg(target="wasm-gc")
fn blob_property_bag_ffi(type_: JsValue, endings: JsValue) -> BlobPropertyBag = "webapi_BlobPropertyBag" "new"

#cfg(target="wasm-gc")
fn blob_property_bag_empty_ffi() -> BlobPropertyBag = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn blob_property_bag_get_type_ffi(obj: JsValue) -> JsValue = "webapi_BlobPropertyBag" "get_type"

#cfg(target="wasm-gc")
fn blob_property_bag_get_endings_ffi(obj: JsValue) -> JsValue = "webapi_BlobPropertyBag" "get_endings"