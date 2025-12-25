// Do not edit. This file is generated.
// MoonBit type: Screen
// Specifications: cssom-view.idl

///|
#external
pub type Screen

///|
pub impl TJsValue for Screen with to_js(self : Screen) -> JsValue = "%identity"

///|
pub fn[T : TScreen] Screen::into(self : Screen) -> T = "%identity"

///|
pub impl TScreen for Screen

///|
pub trait TScreen: TJsValue {
  avail_width(self : Self) -> Int = _
  avail_height(self : Self) -> Int = _
  width(self : Self) -> Int = _
  height(self : Self) -> Int = _
  color_depth(self : Self) -> UInt = _
  pixel_depth(self : Self) -> UInt = _
}

///|
extern "js" fn screen_avail_width_ffi(obj : JsValue) -> Int = "(obj) => obj.availWidth"

///|
impl TScreen with avail_width(self : Self) -> Int {
  screen_avail_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn screen_avail_height_ffi(obj : JsValue) -> Int = "(obj) => obj.availHeight"

///|
impl TScreen with avail_height(self : Self) -> Int {
  screen_avail_height_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn screen_width_ffi(obj : JsValue) -> Int = "(obj) => obj.width"

///|
impl TScreen with width(self : Self) -> Int {
  screen_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn screen_height_ffi(obj : JsValue) -> Int = "(obj) => obj.height"

///|
impl TScreen with height(self : Self) -> Int {
  screen_height_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn screen_color_depth_ffi(obj : JsValue) -> UInt = "(obj) => obj.colorDepth"

///|
impl TScreen with color_depth(self : Self) -> UInt {
  screen_color_depth_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn screen_pixel_depth_ffi(obj : JsValue) -> UInt = "(obj) => obj.pixelDepth"

///|
impl TScreen with pixel_depth(self : Self) -> UInt {
  screen_pixel_depth_ffi(TJsValue::to_js(self))
}
