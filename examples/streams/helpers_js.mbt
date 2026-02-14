///|
extern "js" fn create_counting_stream() -> @webapi.ReadableStream =
  #|() => {
  #|  let i = 0;
  #|  return new ReadableStream({
  #|    pull(controller) {
  #|      if (i < 4) {
  #|        controller.enqueue("Chunk " + (++i));
  #|      } else {
  #|        controller.close();
  #|      }
  #|    }
  #|  });
  #|}

///|
extern "js" fn read_result_done(result : @webapi.ReadableStreamReadResult) -> Bool =
  "(r) => r.done"

///|
extern "js" fn read_result_value(result : @webapi.ReadableStreamReadResult) -> String =
  "(r) => '' + r.value"
