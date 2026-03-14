///|
/// Create a Blob from a string using BlobPart::from() (cross-target union wrapping).
fn create_text_blob(text : String, mime : String) -> @webapi.Blob {
  @webapi.Blob::new(
    blob_parts=[@webapi.BlobPart::from(text)],
    options=@webapi.BlobPropertyBag::new(type_=mime),
  )
}

///|
/// Create a File from a string using BlobPart::from() (cross-target union wrapping).
fn create_text_file(
  text : String,
  name : String,
  mime : String,
) -> @webapi.File {
  @webapi.File::new(
    [@webapi.BlobPart::from(text)],
    name,
    options=@webapi.FilePropertyBag::new(type_=mime),
  )
}
