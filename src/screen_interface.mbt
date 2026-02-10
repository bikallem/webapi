// Do not edit. This file is generated.
// MoonBit type: Screen
// Specifications: screen-orientation.idl, cssom-view.idl

///|
/// [Screen](https://developer.mozilla.org/en-US/docs/Web/API/Screen)
#external
pub type Screen

///|
pub impl TJsValue for Screen with to_js(self : Screen) -> JsValue = "%identity"

///|
pub fn[T : TScreen] Screen::into(self : Screen) -> T = "%identity"

///|
pub impl TScreen for Screen

///|
/// [Screen](https://developer.mozilla.org/en-US/docs/Web/API/Screen) interface.
pub trait TScreen: TJsValue {
  avail_width(self : Self) -> Int = _
  avail_height(self : Self) -> Int = _
  width(self : Self) -> Int = _
  height(self : Self) -> Int = _
  color_depth(self : Self) -> UInt = _
  pixel_depth(self : Self) -> UInt = _
  orientation(self : Self) -> ScreenOrientation = _
}

///|
/// [Screen.availWidth](https://developer.mozilla.org/en-US/docs/Web/API/Screen/availWidth)
impl TScreen with avail_width(self : Self) -> Int {
  screen_avail_width_ffi(TJsValue::to_js(self))
}

///|
/// [Screen.availHeight](https://developer.mozilla.org/en-US/docs/Web/API/Screen/availHeight)
impl TScreen with avail_height(self : Self) -> Int {
  screen_avail_height_ffi(TJsValue::to_js(self))
}

///|
/// [Screen.width](https://developer.mozilla.org/en-US/docs/Web/API/Screen/width)
impl TScreen with width(self : Self) -> Int {
  screen_width_ffi(TJsValue::to_js(self))
}

///|
/// [Screen.height](https://developer.mozilla.org/en-US/docs/Web/API/Screen/height)
impl TScreen with height(self : Self) -> Int {
  screen_height_ffi(TJsValue::to_js(self))
}

///|
/// [Screen.colorDepth](https://developer.mozilla.org/en-US/docs/Web/API/Screen/colorDepth)
impl TScreen with color_depth(self : Self) -> UInt {
  screen_color_depth_ffi(TJsValue::to_js(self))
}

///|
/// [Screen.pixelDepth](https://developer.mozilla.org/en-US/docs/Web/API/Screen/pixelDepth)
impl TScreen with pixel_depth(self : Self) -> UInt {
  screen_pixel_depth_ffi(TJsValue::to_js(self))
}

///|
/// [Screen.orientation](https://developer.mozilla.org/en-US/docs/Web/API/Screen/orientation)
impl TScreen with orientation(self : Self) -> ScreenOrientation {
  screen_orientation_ffi(TJsValue::to_js(self))
}
