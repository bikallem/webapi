// Do not edit. This file is generated.
// MoonBit type: SVGUnitTypes
// Specifications: SVG.idl

/// [SVGUnitTypes](https://developer.mozilla.org/en-US/docs/Web/API/SVGUnitTypes)
#external
pub type SVGUnitTypes

pub impl TJsValue for SVGUnitTypes with to_js(self: SVGUnitTypes) -> JsValue = "%identity"

pub fn[T: TSVGUnitTypes] SVGUnitTypes::into(self : SVGUnitTypes) -> T = "%identity"

pub impl TSVGUnitTypes for SVGUnitTypes

pub const SVG_UNIT_TYPES_SVG_UNIT_TYPE_UNKNOWN: UInt = 0

pub const SVG_UNIT_TYPES_SVG_UNIT_TYPE_USERSPACEONUSE: UInt = 1

pub const SVG_UNIT_TYPES_SVG_UNIT_TYPE_OBJECTBOUNDINGBOX: UInt = 2

/// [SVGUnitTypes](https://developer.mozilla.org/en-US/docs/Web/API/SVGUnitTypes) interface.
pub trait TSVGUnitTypes: TJsValue {

}

