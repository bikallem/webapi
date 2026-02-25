///|
fn document_timeline_options_ffi(
  origin_time : JsValue,
) -> DocumentTimelineOptions = "webapi_DocumentTimelineOptions" "new"

///|
fn document_timeline_options_empty_ffi() -> DocumentTimelineOptions = "webapi_Dictionary" "empty"

///|
fn document_timeline_options_get_origin_time_ffi(obj : JsValue) -> JsValue = "webapi_DocumentTimelineOptions" "get_originTime"
