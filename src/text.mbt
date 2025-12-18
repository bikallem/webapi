// Auto-generated MoonBit bindings for Text interface
// Do not edit manually

#external
pub type Text

pub impl TJsValue for Text with to_js(self: Text) -> JsValue = "%identity"


pub fn[T: TText] Text::into(self : Text) -> T = "%identity"
pub impl TText for Text

pub fn Text::new(data? : String) -> Text = "webapi_Text" "new"

pub trait TText: TJsValue + TTCharacterData {
  split_text(self: Self, offset : UInt) -> &TText = _
  whole_text(self: Self) -> String = _
}

///|
fn text_whole_text_ffi(obj : JsValue) -> String = "webapi_Text" "wholeText"

///|
impl TText with whole_text(self : Self) -> String {
  text_whole_text_ffi(self.to_js())
}

///|
fn text_split_text_ffi(obj : JsValue, offset : JsValue) -> JsValue = "webapi_Text" "splitText"

///|
impl TText with split_text(self : Self, offset : UInt) -> &TText {
  text_split_text_ffi(self.to_js(), TJsValue::to_js(offset)).unsafe_cast()
}