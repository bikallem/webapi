// Do not edit. This file is generated.
// MoonBit type: SVGPreserveAspectRatio
// Specifications: SVG.idl

///|
/// [SVGPreserveAspectRatio](https://developer.mozilla.org/en-US/docs/Web/API/SVGPreserveAspectRatio)
#external
pub type SVGPreserveAspectRatio

///|
pub impl TJsValue for SVGPreserveAspectRatio with to_js(
  self : SVGPreserveAspectRatio,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGPreserveAspectRatio with from_js_any(value : JsAny) -> SVGPreserveAspectRatio = "%identity"

///|
pub fn[T : TSVGPreserveAspectRatio] SVGPreserveAspectRatio::into(
  self : SVGPreserveAspectRatio,
) -> T = "%identity"

///|
pub impl TSVGPreserveAspectRatio for SVGPreserveAspectRatio

///|
pub const SVG_PRESERVE_ASPECT_RATIO_SVG_PRESERVEASPECTRATIO_UNKNOWN : UInt = 0

///|
pub const SVG_PRESERVE_ASPECT_RATIO_SVG_PRESERVEASPECTRATIO_NONE : UInt = 1

///|
pub const SVG_PRESERVE_ASPECT_RATIO_SVG_PRESERVEASPECTRATIO_XMINYMIN : UInt = 2

///|
pub const SVG_PRESERVE_ASPECT_RATIO_SVG_PRESERVEASPECTRATIO_XMIDYMIN : UInt = 3

///|
pub const SVG_PRESERVE_ASPECT_RATIO_SVG_PRESERVEASPECTRATIO_XMAXYMIN : UInt = 4

///|
pub const SVG_PRESERVE_ASPECT_RATIO_SVG_PRESERVEASPECTRATIO_XMINYMID : UInt = 5

///|
pub const SVG_PRESERVE_ASPECT_RATIO_SVG_PRESERVEASPECTRATIO_XMIDYMID : UInt = 6

///|
pub const SVG_PRESERVE_ASPECT_RATIO_SVG_PRESERVEASPECTRATIO_XMAXYMID : UInt = 7

///|
pub const SVG_PRESERVE_ASPECT_RATIO_SVG_PRESERVEASPECTRATIO_XMINYMAX : UInt = 8

///|
pub const SVG_PRESERVE_ASPECT_RATIO_SVG_PRESERVEASPECTRATIO_XMIDYMAX : UInt = 9

///|
pub const SVG_PRESERVE_ASPECT_RATIO_SVG_PRESERVEASPECTRATIO_XMAXYMAX : UInt = 10

///|
pub const SVG_PRESERVE_ASPECT_RATIO_SVG_MEETORSLICE_UNKNOWN : UInt = 0

///|
pub const SVG_PRESERVE_ASPECT_RATIO_SVG_MEETORSLICE_MEET : UInt = 1

///|
pub const SVG_PRESERVE_ASPECT_RATIO_SVG_MEETORSLICE_SLICE : UInt = 2

///|
/// [SVGPreserveAspectRatio](https://developer.mozilla.org/en-US/docs/Web/API/SVGPreserveAspectRatio) interface.
pub trait TSVGPreserveAspectRatio: TJsValue {
  align(self : Self) -> UInt = _
  set_align(self : Self, align : UInt) -> Unit = _
  meet_or_slice(self : Self) -> UInt = _
  set_meet_or_slice(self : Self, meet_or_slice : UInt) -> Unit = _
}

///|
/// [SVGPreserveAspectRatio.align](https://developer.mozilla.org/en-US/docs/Web/API/SVGPreserveAspectRatio/align)
impl TSVGPreserveAspectRatio with align(self : Self) -> UInt {
  svg_preserve_aspect_ratio_align_ffi(TJsValue::to_js(self))
}

///|
/// [SVGPreserveAspectRatio.align](https://developer.mozilla.org/en-US/docs/Web/API/SVGPreserveAspectRatio/align)
impl TSVGPreserveAspectRatio with set_align(self : Self, align : UInt) -> Unit {
  svg_preserve_aspect_ratio_set_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(align),
  )
}

///|
/// [SVGPreserveAspectRatio.meetOrSlice](https://developer.mozilla.org/en-US/docs/Web/API/SVGPreserveAspectRatio/meetOrSlice)
impl TSVGPreserveAspectRatio with meet_or_slice(self : Self) -> UInt {
  svg_preserve_aspect_ratio_meet_or_slice_ffi(TJsValue::to_js(self))
}

///|
/// [SVGPreserveAspectRatio.meetOrSlice](https://developer.mozilla.org/en-US/docs/Web/API/SVGPreserveAspectRatio/meetOrSlice)
impl TSVGPreserveAspectRatio with set_meet_or_slice(
  self : Self,
  meet_or_slice : UInt,
) -> Unit {
  svg_preserve_aspect_ratio_set_meet_or_slice_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(meet_or_slice),
  )
}

///|
#cfg(target="js")
extern "js" fn svg_preserve_aspect_ratio_align_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.align"

///|
#cfg(target="js")
fn svg_preserve_aspect_ratio_align_ffi(obj : JsValue) -> UInt {
  svg_preserve_aspect_ratio_align_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_preserve_aspect_ratio_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
#cfg(target="js")
extern "js" fn svg_preserve_aspect_ratio_meet_or_slice_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.meetOrSlice"

///|
#cfg(target="js")
fn svg_preserve_aspect_ratio_meet_or_slice_ffi(obj : JsValue) -> UInt {
  svg_preserve_aspect_ratio_meet_or_slice_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_preserve_aspect_ratio_set_meet_or_slice_ffi(
  obj : JsValue,
  meet_or_slice : JsValue,
) -> Unit = "(obj, meetOrSlice) => { obj.meetOrSlice = meetOrSlice; }"

///|
#cfg(target="wasm-gc")
fn svg_preserve_aspect_ratio_align_ffi(obj : JsValue) -> UInt = "webapi_SVGPreserveAspectRatio" "get_align"

///|
#cfg(target="wasm-gc")
fn svg_preserve_aspect_ratio_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "webapi_SVGPreserveAspectRatio" "set_align"

///|
#cfg(target="wasm-gc")
fn svg_preserve_aspect_ratio_meet_or_slice_ffi(obj : JsValue) -> UInt = "webapi_SVGPreserveAspectRatio" "get_meetOrSlice"

///|
#cfg(target="wasm-gc")
fn svg_preserve_aspect_ratio_set_meet_or_slice_ffi(
  obj : JsValue,
  meet_or_slice : JsValue,
) -> Unit = "webapi_SVGPreserveAspectRatio" "set_meetOrSlice"
