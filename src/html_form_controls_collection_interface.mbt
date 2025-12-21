///|
#external
pub type HTMLFormControlsCollection

///|
pub impl TJsValue for HTMLFormControlsCollection with to_js(
  self : HTMLFormControlsCollection,
) -> JsValue = "%identity"

///|
pub fn[T : THTMLFormControlsCollection] HTMLFormControlsCollection::into(
  self : HTMLFormControlsCollection,
) -> T = "%identity"

///|
pub impl THTMLFormControlsCollection for HTMLFormControlsCollection

///|
pub impl THTMLCollection for HTMLFormControlsCollection

///|
pub trait THTMLFormControlsCollection: THTMLCollection {}
