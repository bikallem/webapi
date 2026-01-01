// Do not edit. This file is generated.
// MoonBit type: SVGPreserveAspectRatio
// Specifications: SVG.idl

///|
#external
pub type SVGPreserveAspectRatio

///|
pub impl TJsValue for SVGPreserveAspectRatio with to_js(
  self : SVGPreserveAspectRatio,
) -> JsValue = "%identity"

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
pub trait TSVGPreserveAspectRatio: TJsValue {
  align(self : Self) -> UInt = _
  set_align(self : Self, align : UInt) -> Unit = _
  meet_or_slice(self : Self) -> UInt = _
  set_meet_or_slice(self : Self, meet_or_slice : UInt) -> Unit = _
}

///|
extern "js" fn svg_preserve_aspect_ratio_align_ffi(obj : JsValue) -> UInt = "(obj) => obj.align"

///|
impl TSVGPreserveAspectRatio with align(self : Self) -> UInt {
  svg_preserve_aspect_ratio_align_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_preserve_aspect_ratio_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
impl TSVGPreserveAspectRatio with set_align(self : Self, align : UInt) -> Unit {
  svg_preserve_aspect_ratio_set_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(align),
  )
}

///|
extern "js" fn svg_preserve_aspect_ratio_meet_or_slice_ffi(
  obj : JsValue,
) -> UInt = "(obj) => obj.meetOrSlice"

///|
impl TSVGPreserveAspectRatio with meet_or_slice(self : Self) -> UInt {
  svg_preserve_aspect_ratio_meet_or_slice_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_preserve_aspect_ratio_set_meet_or_slice_ffi(
  obj : JsValue,
  meet_or_slice : JsValue,
) -> Unit = "(obj, meetOrSlice) => { obj.meetOrSlice = meet_or_slice; }"

///|
impl TSVGPreserveAspectRatio with set_meet_or_slice(
  self : Self,
  meet_or_slice : UInt,
) -> Unit {
  svg_preserve_aspect_ratio_set_meet_or_slice_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(meet_or_slice),
  )
}
