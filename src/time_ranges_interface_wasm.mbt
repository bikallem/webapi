fn time_ranges_length_ffi(obj: JsValue) -> UInt = "webapi_TimeRanges" "get_length"

fn time_ranges_start_ffi(obj: JsValue, index: JsValue) -> Double = "webapi_TimeRanges" "start"

fn time_ranges_end_ffi(obj: JsValue, index: JsValue) -> Double = "webapi_TimeRanges" "end"