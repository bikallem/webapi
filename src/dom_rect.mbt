// Auto-generated MoonBit bindings for DOMRect

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=(Window,Worker),
//  Serializable,
//  LegacyWindowAlias=SVGRect]
// interface DOMRect : DOMRectReadOnly {
//     constructor(optional unrestricted double x = 0, optional unrestricted double y = 0,
//             optional unrestricted double width = 0, optional unrestricted double height = 0);
// 
//     [NewObject] static DOMRect fromRect(optional DOMRectInit other = {});
// 
//     inherit attribute unrestricted double x;
//     inherit attribute unrestricted double y;
//     inherit attribute unrestricted double width;
//     inherit attribute unrestricted double height;
// };

///|
#external
pub type DOMRect

///|
pub trait TDOMRect: TJsValue + TDOMRectReadOnly {
  x(self : Self) -> Double = _
  set_x(self : Self, value : Double) -> Unit = _
  y(self : Self) -> Double = _
  set_y(self : Self, value : Double) -> Unit = _
  width(self : Self) -> Double = _
  set_width(self : Self, value : Double) -> Unit = _
  height(self : Self) -> Double = _
  set_height(self : Self, value : Double) -> Unit = _
}

///|
pub impl TDOMRectReadOnly for DOMRect

///|
pub impl TDOMRect for DOMRect

///|
pub impl TJsValue for DOMRect with to_js(self : DOMRect) -> JsValue = "%identity"

///|
pub fn DOMRect::null() -> DOMRect {
  JsValue::null()
}

///|
fn dom_rect_new_ffi(
  x : JsValue,
  y : JsValue,
  width : JsValue,
  height : JsValue,
) -> DOMRect = "webapi_DOMRect" "new"

///|
pub fn DOMRect::new(
  x? : Double = 0,
  y? : Double = 0,
  width? : Double = 0,
  height? : Double = 0,
) -> DOMRect {
  dom_rect_new_ffi(
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(width),
    TJsValue::to_js(height),
  )
}

///|
fn dom_rect_from_rect_ffi(other : JsValue) -> JsValue = "webapi_DOMRect" "fromRect"

///|
pub fn DOMRect::from_rect(
  other? : DOMRectInit = DOMRectInit::empty(),
) -> JsValue {
  dom_rect_from_rect_ffi(TJsValue::to_js(other))
}

///|
fn dom_rect_x_ffi(obj : JsValue) -> Double = "webapi_DOMRect" "x"

///|
impl TDOMRect with x(self : Self) -> Double {
  dom_rect_x_ffi(self.to_js())
}

///|
fn dom_rect_set_x_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMRect" "set_x"

///|
impl TDOMRect with set_x(self : Self, value : Double) -> Unit {
  dom_rect_set_x_ffi(self.to_js(), value)
}

///|
fn dom_rect_y_ffi(obj : JsValue) -> Double = "webapi_DOMRect" "y"

///|
impl TDOMRect with y(self : Self) -> Double {
  dom_rect_y_ffi(self.to_js())
}

///|
fn dom_rect_set_y_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMRect" "set_y"

///|
impl TDOMRect with set_y(self : Self, value : Double) -> Unit {
  dom_rect_set_y_ffi(self.to_js(), value)
}

///|
fn dom_rect_width_ffi(obj : JsValue) -> Double = "webapi_DOMRect" "width"

///|
impl TDOMRect with width(self : Self) -> Double {
  dom_rect_width_ffi(self.to_js())
}

///|
fn dom_rect_set_width_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMRect" "set_width"

///|
impl TDOMRect with set_width(self : Self, value : Double) -> Unit {
  dom_rect_set_width_ffi(self.to_js(), value)
}

///|
fn dom_rect_height_ffi(obj : JsValue) -> Double = "webapi_DOMRect" "height"

///|
impl TDOMRect with height(self : Self) -> Double {
  dom_rect_height_ffi(self.to_js())
}

///|
fn dom_rect_set_height_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMRect" "set_height"

///|
impl TDOMRect with set_height(self : Self, value : Double) -> Unit {
  dom_rect_set_height_ffi(self.to_js(), value)
}
