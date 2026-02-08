// Do not edit. This file is generated.
// MoonBit type: HTMLFormControlsCollection
// Specifications: html.idl

/// [HTMLFormControlsCollection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection)
#external
pub type HTMLFormControlsCollection

pub impl TJsValue for HTMLFormControlsCollection with to_js(self: HTMLFormControlsCollection) -> JsValue = "%identity"

pub fn[T: THTMLFormControlsCollection] HTMLFormControlsCollection::into(self : HTMLFormControlsCollection) -> T = "%identity"

pub impl THTMLFormControlsCollection for HTMLFormControlsCollection

pub impl THTMLCollection for HTMLFormControlsCollection

/// [HTMLFormControlsCollection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection) interface.
pub trait THTMLFormControlsCollection: THTMLCollection {

}

