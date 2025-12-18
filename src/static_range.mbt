// Auto-generated MoonBit bindings for StaticRange interface
// Do not edit manually

#external
pub type StaticRange

pub impl TJsValue for StaticRange with to_js(self: StaticRange) -> JsValue = "%identity"


pub fn[T: TStaticRange] StaticRange::into(self : StaticRange) -> T = "%identity"
pub impl TStaticRange for StaticRange

pub fn StaticRange::new(init : StaticRangeInit) -> StaticRange = "webapi_StaticRange" "new"

pub trait TStaticRange: TJsValue + TTAbstractRange {
}