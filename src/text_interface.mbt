///|
#external
pub type Text

///|
pub impl TJsValue for Text with to_js(self : Text) -> JsValue = "%identity"

///|
pub fn[T : TText] Text::into(self : Text) -> T = "%identity"

///|
pub impl TText for Text

///|
pub impl TCharacterData for Text

///|
pub impl TNode for Text

///|
pub impl TEventTarget for Text

///|
extern "js" fn text_ffi(data : JsValue) -> Text = "(data) => new Text(data)"

///|
pub fn Text::new(data? : String = "") -> Text {
  text_ffi(TJsValue::to_js(data))
}

///|
pub trait TText: TCharacterData {
  split_text(self : Self, offset : UInt) -> Text = _
}

///|
extern "js" fn text_split_text_ffi(obj : JsValue, offset : JsValue) -> Text = "(obj, offset) => obj.splitText(obj, offset)"

///|
impl TText with split_text(self : Self, offset : UInt) -> Text {
  text_split_text_ffi(TJsValue::to_js(self), TJsValue::to_js(offset))
}
