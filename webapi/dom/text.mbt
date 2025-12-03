// Auto-generated MoonBit bindings for Text

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=Window]
// interface Text : CharacterData {
//   constructor(optional DOMString data = "");
// 
//   [NewObject] Text splitText(unsigned long offset);
//   readonly attribute DOMString wholeText;
// };

///|
#external
pub type Text

///|
pub trait TText: TJsValue + TCharacterData {
  whole_text(self : Self) -> String = _
  split_text(self : Self, offset : Int) -> Text = _
}

///|
pub impl TEventTarget for Text

///|
pub impl TNode for Text

///|
pub impl TCharacterData for Text

///|
pub impl TText for Text

///|
pub impl TJsValue for Text with to_js(self : Text) -> JsValue = "%identity"

///|
fn text_new_ffi(data : JsValue) -> Text = "webapi_Text" "new"

///|
pub fn Text::new(data? : String = "") -> Text {
  text_new_ffi(TJsValue::to_js(data))
}

///|
fn text_split_text_ffi(obj : JsValue, offset : JsValue) -> JsValue = "webapi_Text" "splitText"

///|
impl TText with split_text(self : Self, offset : Int) -> Text {
  text_split_text_ffi(TJsValue::to_js(self), TJsValue::to_js(offset)).unsafe_cast()
}

///|
fn text_whole_text_ffi(obj : JsValue) -> String = "webapi_Text" "wholeText"

///|
impl TText with whole_text(self : Self) -> String {
  text_whole_text_ffi(self.to_js())
}