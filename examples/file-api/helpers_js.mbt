///|
/// Create a Blob from a string via JS runtime.
extern "js" fn create_text_blob(text : String, mime : String) -> @webapi.Blob = "(text, mime) => new Blob([text], { type: mime })"

///|
/// Create a File from a string via JS runtime.
extern "js" fn create_text_file(
  text : String,
  name : String,
  mime : String,
) -> @webapi.File = "(text, name, mime) => new File([text], name, { type: mime })"
