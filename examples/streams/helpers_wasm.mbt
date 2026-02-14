///|
fn create_counting_stream() -> @webapi.ReadableStream = "streams_helpers" "createCountingStream"

///|
fn read_result_done(result : @webapi.ReadableStreamReadResult) -> Bool = "streams_helpers" "readResultDone"

///|
fn read_result_value(result : @webapi.ReadableStreamReadResult) -> String = "streams_helpers" "readResultValue"
