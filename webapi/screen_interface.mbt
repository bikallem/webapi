// Do not edit. This file is generated.
// MoonBit type: Screen
// Specifications: cssom-view.idl, screen-orientation.idl

///|
/// [Screen](https://developer.mozilla.org/en-US/docs/Web/API/Screen)
#external
pub type Screen

///|
pub impl TJsValue for Screen with to_js(self : Screen) -> JsValue = "%identity"

///|
pub impl FromJsAny for Screen with from_js_any(value : JsAny) -> Screen = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TScreen] Screen::into(self : Screen) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TScreen] Screen::unsafe_into(self : Screen) -> T = "%identity"

///|
pub impl HasConstructor for Screen with constructor_name() {
  "Screen"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TScreen + HasConstructor] Screen::try_into(self : Screen) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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

///|
#cfg(target="js")
extern "js" fn screen_avail_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.availWidth"

///|
#cfg(target="js")
fn screen_avail_width_ffi(obj : JsValue) -> Int {
  screen_avail_width_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn screen_avail_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.availHeight"

///|
#cfg(target="js")
fn screen_avail_height_ffi(obj : JsValue) -> Int {
  screen_avail_height_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn screen_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
#cfg(target="js")
fn screen_width_ffi(obj : JsValue) -> Int {
  screen_width_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn screen_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
#cfg(target="js")
fn screen_height_ffi(obj : JsValue) -> Int {
  screen_height_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn screen_color_depth_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.colorDepth"

///|
#cfg(target="js")
fn screen_color_depth_ffi(obj : JsValue) -> UInt {
  screen_color_depth_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn screen_pixel_depth_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pixelDepth"

///|
#cfg(target="js")
fn screen_pixel_depth_ffi(obj : JsValue) -> UInt {
  screen_pixel_depth_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn screen_orientation_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.orientation"

///|
#cfg(target="js")
fn screen_orientation_ffi(obj : JsValue) -> ScreenOrientation {
  screen_orientation_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn screen_avail_width_ffi(obj : JsValue) -> Int = "webapi_Screen" "get_availWidth"

///|
#cfg(target="wasm-gc")
fn screen_avail_height_ffi(obj : JsValue) -> Int = "webapi_Screen" "get_availHeight"

///|
#cfg(target="wasm-gc")
fn screen_width_ffi(obj : JsValue) -> Int = "webapi_Screen" "get_width"

///|
#cfg(target="wasm-gc")
fn screen_height_ffi(obj : JsValue) -> Int = "webapi_Screen" "get_height"

///|
#cfg(target="wasm-gc")
fn screen_color_depth_ffi(obj : JsValue) -> UInt = "webapi_Screen" "get_colorDepth"

///|
#cfg(target="wasm-gc")
fn screen_pixel_depth_ffi(obj : JsValue) -> UInt = "webapi_Screen" "get_pixelDepth"

///|
#cfg(target="wasm-gc")
fn screen_orientation_ffi(obj : JsValue) -> ScreenOrientation = "webapi_Screen" "get_orientation"
