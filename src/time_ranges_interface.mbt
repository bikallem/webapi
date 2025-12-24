///|
#external
pub type TimeRanges

///|
pub impl TJsValue for TimeRanges with to_js(self : TimeRanges) -> JsValue = "%identity"

///|
pub fn[T : TTimeRanges] TimeRanges::into(self : TimeRanges) -> T = "%identity"

///|
pub impl TTimeRanges for TimeRanges

///|
pub trait TTimeRanges: TJsValue {
  length(self : Self) -> UInt = _
  start(self : Self, index : UInt) -> Double = _
  end(self : Self, index : UInt) -> Double = _
}

///|
extern "js" fn time_ranges_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
impl TTimeRanges with length(self : Self) -> UInt {
  time_ranges_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn time_ranges_start_ffi(obj : JsValue, index : JsValue) -> Double = "(obj, index) => obj.start(obj, index)"

///|
impl TTimeRanges with start(self : Self, index : UInt) -> Double {
  time_ranges_start_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}

///|
extern "js" fn time_ranges_end_ffi(obj : JsValue, index : JsValue) -> Double = "(obj, index) => obj.end(obj, index)"

///|
impl TTimeRanges with end(self : Self, index : UInt) -> Double {
  time_ranges_end_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}
