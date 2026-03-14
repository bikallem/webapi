// Do not edit. This file is generated.
// MoonBit type: SVGSVGElement
// Specifications: SVG.idl

/// [SVGSVGElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement)
#external
pub type SVGSVGElement

pub impl TJsValue for SVGSVGElement with to_js(self: SVGSVGElement) -> JsValue = "%identity"

pub impl FromJsAny for SVGSVGElement with from_js_any(value : JsAny) -> SVGSVGElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TSVGSVGElement] SVGSVGElement::into(self : SVGSVGElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TSVGSVGElement] SVGSVGElement::unsafe_into(self : SVGSVGElement) -> T = "%identity"

pub impl HasConstructor for SVGSVGElement with constructor_name() { "SVGSVGElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGSVGElement + HasConstructor] SVGSVGElement::try_into(self : SVGSVGElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TSVGSVGElement for SVGSVGElement

pub impl TSVGGraphicsElement for SVGSVGElement

pub impl TSVGElement for SVGSVGElement

pub impl TElement for SVGSVGElement

pub impl TNode for SVGSVGElement

pub impl TEventTarget for SVGSVGElement

/// [SVGSVGElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement) interface.
pub trait TSVGSVGElement: TSVGGraphicsElement {
  x(self : Self) -> SVGAnimatedLength = _
  y(self : Self) -> SVGAnimatedLength = _
  width(self : Self) -> SVGAnimatedLength = _
  height(self : Self) -> SVGAnimatedLength = _
  current_scale(self : Self) -> Float = _
  set_current_scale(self : Self, current_scale : Float) -> Unit = _
  current_translate(self : Self) -> DOMPointReadOnly = _
  get_intersection_list(self : Self, rect : &TDOMRectReadOnly, reference_element : &TSVGElement) -> NodeList = _
  get_enclosure_list(self : Self, rect : &TDOMRectReadOnly, reference_element : &TSVGElement) -> NodeList = _
  check_intersection(self : Self, element : &TSVGElement, rect : &TDOMRectReadOnly) -> Bool = _
  check_enclosure(self : Self, element : &TSVGElement, rect : &TDOMRectReadOnly) -> Bool = _
  deselect_all(self : Self) -> Unit = _
  create_svg_number(self : Self) -> SVGNumber = _
  create_svg_length(self : Self) -> SVGLength = _
  create_svg_angle(self : Self) -> SVGAngle = _
  create_svg_point(self : Self) -> DOMPoint = _
  create_svg_matrix(self : Self) -> DOMMatrix = _
  create_svg_rect(self : Self) -> DOMRect = _
  create_svg_transform(self : Self) -> SVGTransform = _
  create_svg_transform_from_matrix(self : Self, matrix? : DOMMatrix2DInit) -> SVGTransform = _
  get_element_by_id_opt(self : Self, element_id : String) -> Element? = _
  suspend_redraw(self : Self, max_wait_milliseconds : UInt) -> UInt = _
  unsuspend_redraw(self : Self, suspend_handle_id : UInt) -> Unit = _
  unsuspend_redraw_all(self : Self) -> Unit = _
  force_redraw(self : Self) -> Unit = _
  view_box(self : Self) -> SVGAnimatedRect = _
  preserve_aspect_ratio(self : Self) -> SVGAnimatedPreserveAspectRatio = _
  onafterprint(self : Self) -> EventHandler = _
  set_onafterprint(self : Self, onafterprint : (Event) -> JsValue) -> Unit = _
  onbeforeprint(self : Self) -> EventHandler = _
  set_onbeforeprint(self : Self, onbeforeprint : (Event) -> JsValue) -> Unit = _
  onbeforeunload(self : Self) -> OnBeforeUnloadEventHandler = _
  set_onbeforeunload(self : Self, onbeforeunload : (Event) -> String) -> Unit = _
  onhashchange(self : Self) -> EventHandler = _
  set_onhashchange(self : Self, onhashchange : (Event) -> JsValue) -> Unit = _
  onlanguagechange(self : Self) -> EventHandler = _
  set_onlanguagechange(self : Self, onlanguagechange : (Event) -> JsValue) -> Unit = _
  onmessage(self : Self) -> EventHandler = _
  set_onmessage(self : Self, onmessage : (Event) -> JsValue) -> Unit = _
  onmessageerror(self : Self) -> EventHandler = _
  set_onmessageerror(self : Self, onmessageerror : (Event) -> JsValue) -> Unit = _
  onoffline(self : Self) -> EventHandler = _
  set_onoffline(self : Self, onoffline : (Event) -> JsValue) -> Unit = _
  ononline(self : Self) -> EventHandler = _
  set_ononline(self : Self, ononline : (Event) -> JsValue) -> Unit = _
  onpagehide(self : Self) -> EventHandler = _
  set_onpagehide(self : Self, onpagehide : (Event) -> JsValue) -> Unit = _
  onpagereveal(self : Self) -> EventHandler = _
  set_onpagereveal(self : Self, onpagereveal : (Event) -> JsValue) -> Unit = _
  onpageshow(self : Self) -> EventHandler = _
  set_onpageshow(self : Self, onpageshow : (Event) -> JsValue) -> Unit = _
  onpageswap(self : Self) -> EventHandler = _
  set_onpageswap(self : Self, onpageswap : (Event) -> JsValue) -> Unit = _
  onpopstate(self : Self) -> EventHandler = _
  set_onpopstate(self : Self, onpopstate : (Event) -> JsValue) -> Unit = _
  onrejectionhandled(self : Self) -> EventHandler = _
  set_onrejectionhandled(self : Self, onrejectionhandled : (Event) -> JsValue) -> Unit = _
  onstorage(self : Self) -> EventHandler = _
  set_onstorage(self : Self, onstorage : (Event) -> JsValue) -> Unit = _
  onunhandledrejection(self : Self) -> EventHandler = _
  set_onunhandledrejection(self : Self, onunhandledrejection : (Event) -> JsValue) -> Unit = _
  onunload(self : Self) -> EventHandler = _
  set_onunload(self : Self, onunload : (Event) -> JsValue) -> Unit = _
  get_element_by_id(self : Self, element_id : String) -> Element = _
}

/// [SVGSVGElement.x](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/x)
impl TSVGSVGElement with x(self : Self) -> SVGAnimatedLength {
  svgsvg_element_x_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.y](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/y)
impl TSVGSVGElement with y(self : Self) -> SVGAnimatedLength {
  svgsvg_element_y_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.width](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/width)
impl TSVGSVGElement with width(self : Self) -> SVGAnimatedLength {
  svgsvg_element_width_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.height](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/height)
impl TSVGSVGElement with height(self : Self) -> SVGAnimatedLength {
  svgsvg_element_height_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.currentScale](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/currentScale)
impl TSVGSVGElement with current_scale(self : Self) -> Float {
  svgsvg_element_current_scale_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.currentScale](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/currentScale)
impl TSVGSVGElement with set_current_scale(self : Self, 
current_scale : Float) -> Unit {
  svgsvg_element_set_current_scale_ffi(TJsValue::to_js(self), TJsValue::to_js(current_scale))
}

/// [SVGSVGElement.currentTranslate](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/currentTranslate)
impl TSVGSVGElement with current_translate(self : Self) -> DOMPointReadOnly {
  svgsvg_element_current_translate_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.getIntersectionList](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/getIntersectionList)
impl TSVGSVGElement with get_intersection_list(self : Self, 
rect : &TDOMRectReadOnly, 
reference_element : &TSVGElement) -> NodeList {
  svgsvg_element_get_intersection_list_ffi(TJsValue::to_js(self), TJsValue::to_js(rect), TJsValue::to_js(reference_element))
}

/// [SVGSVGElement.getEnclosureList](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/getEnclosureList)
impl TSVGSVGElement with get_enclosure_list(self : Self, 
rect : &TDOMRectReadOnly, 
reference_element : &TSVGElement) -> NodeList {
  svgsvg_element_get_enclosure_list_ffi(TJsValue::to_js(self), TJsValue::to_js(rect), TJsValue::to_js(reference_element))
}

/// [SVGSVGElement.checkIntersection](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/checkIntersection)
impl TSVGSVGElement with check_intersection(self : Self, 
element : &TSVGElement, 
rect : &TDOMRectReadOnly) -> Bool {
  svgsvg_element_check_intersection_ffi(TJsValue::to_js(self), TJsValue::to_js(element), TJsValue::to_js(rect))
}

/// [SVGSVGElement.checkEnclosure](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/checkEnclosure)
impl TSVGSVGElement with check_enclosure(self : Self, 
element : &TSVGElement, 
rect : &TDOMRectReadOnly) -> Bool {
  svgsvg_element_check_enclosure_ffi(TJsValue::to_js(self), TJsValue::to_js(element), TJsValue::to_js(rect))
}

/// [SVGSVGElement.deselectAll](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/deselectAll)
impl TSVGSVGElement with deselect_all(self : Self) -> Unit {
  svgsvg_element_deselect_all_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.createSVGNumber](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/createSVGNumber)
impl TSVGSVGElement with create_svg_number(self : Self) -> SVGNumber {
  svgsvg_element_create_svg_number_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.createSVGLength](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/createSVGLength)
impl TSVGSVGElement with create_svg_length(self : Self) -> SVGLength {
  svgsvg_element_create_svg_length_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.createSVGAngle](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/createSVGAngle)
impl TSVGSVGElement with create_svg_angle(self : Self) -> SVGAngle {
  svgsvg_element_create_svg_angle_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.createSVGPoint](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/createSVGPoint)
impl TSVGSVGElement with create_svg_point(self : Self) -> DOMPoint {
  svgsvg_element_create_svg_point_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.createSVGMatrix](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/createSVGMatrix)
impl TSVGSVGElement with create_svg_matrix(self : Self) -> DOMMatrix {
  svgsvg_element_create_svg_matrix_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.createSVGRect](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/createSVGRect)
impl TSVGSVGElement with create_svg_rect(self : Self) -> DOMRect {
  svgsvg_element_create_svg_rect_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.createSVGTransform](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/createSVGTransform)
impl TSVGSVGElement with create_svg_transform(self : Self) -> SVGTransform {
  svgsvg_element_create_svg_transform_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.createSVGTransformFromMatrix](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/createSVGTransformFromMatrix)
impl TSVGSVGElement with create_svg_transform_from_matrix(self : Self, 
matrix? : DOMMatrix2DInit) -> SVGTransform {
  svgsvg_element_create_svg_transform_from_matrix_ffi(TJsValue::to_js(self), opt_to_js(matrix))
}

/// [SVGSVGElement.getElementById](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/getElementById)
impl TSVGSVGElement with get_element_by_id_opt(self : Self, 
element_id : String) -> Element? {
  svgsvg_element_get_element_by_id_ffi(TJsValue::to_js(self), TJsValue::to_js(element_id)).to_option()
}

/// [SVGSVGElement.suspendRedraw](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/suspendRedraw)
impl TSVGSVGElement with suspend_redraw(self : Self, 
max_wait_milliseconds : UInt) -> UInt {
  svgsvg_element_suspend_redraw_ffi(TJsValue::to_js(self), TJsValue::to_js(max_wait_milliseconds))
}

/// [SVGSVGElement.unsuspendRedraw](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/unsuspendRedraw)
impl TSVGSVGElement with unsuspend_redraw(self : Self, 
suspend_handle_id : UInt) -> Unit {
  svgsvg_element_unsuspend_redraw_ffi(TJsValue::to_js(self), TJsValue::to_js(suspend_handle_id))
}

/// [SVGSVGElement.unsuspendRedrawAll](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/unsuspendRedrawAll)
impl TSVGSVGElement with unsuspend_redraw_all(self : Self) -> Unit {
  svgsvg_element_unsuspend_redraw_all_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.forceRedraw](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/forceRedraw)
impl TSVGSVGElement with force_redraw(self : Self) -> Unit {
  svgsvg_element_force_redraw_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.viewBox](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/viewBox)
impl TSVGSVGElement with view_box(self : Self) -> SVGAnimatedRect {
  svgsvg_element_view_box_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.preserveAspectRatio](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/preserveAspectRatio)
impl TSVGSVGElement with preserve_aspect_ratio(self : Self) -> SVGAnimatedPreserveAspectRatio {
  svgsvg_element_preserve_aspect_ratio_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.onafterprint](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onafterprint)
impl TSVGSVGElement with onafterprint(self : Self) -> EventHandler {
  svgsvg_element_onafterprint_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.onafterprint](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onafterprint)
impl TSVGSVGElement with set_onafterprint(self : Self, 
onafterprint : (Event) -> JsValue) -> Unit {
  svgsvg_element_set_onafterprint_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onafterprint)))
}

/// [SVGSVGElement.onbeforeprint](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onbeforeprint)
impl TSVGSVGElement with onbeforeprint(self : Self) -> EventHandler {
  svgsvg_element_onbeforeprint_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.onbeforeprint](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onbeforeprint)
impl TSVGSVGElement with set_onbeforeprint(self : Self, 
onbeforeprint : (Event) -> JsValue) -> Unit {
  svgsvg_element_set_onbeforeprint_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onbeforeprint)))
}

/// [SVGSVGElement.onbeforeunload](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onbeforeunload)
impl TSVGSVGElement with onbeforeunload(self : Self) -> OnBeforeUnloadEventHandler {
  svgsvg_element_onbeforeunload_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.onbeforeunload](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onbeforeunload)
impl TSVGSVGElement with set_onbeforeunload(self : Self, 
onbeforeunload : (Event) -> String) -> Unit {
  svgsvg_element_set_onbeforeunload_ffi(TJsValue::to_js(self), TJsValue::to_js(on_before_unload_event_handler_non_null_ffi(onbeforeunload)))
}

/// [SVGSVGElement.onhashchange](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onhashchange)
impl TSVGSVGElement with onhashchange(self : Self) -> EventHandler {
  svgsvg_element_onhashchange_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.onhashchange](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onhashchange)
impl TSVGSVGElement with set_onhashchange(self : Self, 
onhashchange : (Event) -> JsValue) -> Unit {
  svgsvg_element_set_onhashchange_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onhashchange)))
}

/// [SVGSVGElement.onlanguagechange](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onlanguagechange)
impl TSVGSVGElement with onlanguagechange(self : Self) -> EventHandler {
  svgsvg_element_onlanguagechange_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.onlanguagechange](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onlanguagechange)
impl TSVGSVGElement with set_onlanguagechange(self : Self, 
onlanguagechange : (Event) -> JsValue) -> Unit {
  svgsvg_element_set_onlanguagechange_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onlanguagechange)))
}

/// [SVGSVGElement.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onmessage)
impl TSVGSVGElement with onmessage(self : Self) -> EventHandler {
  svgsvg_element_onmessage_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onmessage)
impl TSVGSVGElement with set_onmessage(self : Self, 
onmessage : (Event) -> JsValue) -> Unit {
  svgsvg_element_set_onmessage_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onmessage)))
}

/// [SVGSVGElement.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onmessageerror)
impl TSVGSVGElement with onmessageerror(self : Self) -> EventHandler {
  svgsvg_element_onmessageerror_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onmessageerror)
impl TSVGSVGElement with set_onmessageerror(self : Self, 
onmessageerror : (Event) -> JsValue) -> Unit {
  svgsvg_element_set_onmessageerror_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onmessageerror)))
}

/// [SVGSVGElement.onoffline](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onoffline)
impl TSVGSVGElement with onoffline(self : Self) -> EventHandler {
  svgsvg_element_onoffline_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.onoffline](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onoffline)
impl TSVGSVGElement with set_onoffline(self : Self, 
onoffline : (Event) -> JsValue) -> Unit {
  svgsvg_element_set_onoffline_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onoffline)))
}

/// [SVGSVGElement.ononline](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/ononline)
impl TSVGSVGElement with ononline(self : Self) -> EventHandler {
  svgsvg_element_ononline_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.ononline](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/ononline)
impl TSVGSVGElement with set_ononline(self : Self, 
ononline : (Event) -> JsValue) -> Unit {
  svgsvg_element_set_ononline_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(ononline)))
}

/// [SVGSVGElement.onpagehide](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onpagehide)
impl TSVGSVGElement with onpagehide(self : Self) -> EventHandler {
  svgsvg_element_onpagehide_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.onpagehide](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onpagehide)
impl TSVGSVGElement with set_onpagehide(self : Self, 
onpagehide : (Event) -> JsValue) -> Unit {
  svgsvg_element_set_onpagehide_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onpagehide)))
}

/// [SVGSVGElement.onpagereveal](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onpagereveal)
impl TSVGSVGElement with onpagereveal(self : Self) -> EventHandler {
  svgsvg_element_onpagereveal_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.onpagereveal](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onpagereveal)
impl TSVGSVGElement with set_onpagereveal(self : Self, 
onpagereveal : (Event) -> JsValue) -> Unit {
  svgsvg_element_set_onpagereveal_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onpagereveal)))
}

/// [SVGSVGElement.onpageshow](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onpageshow)
impl TSVGSVGElement with onpageshow(self : Self) -> EventHandler {
  svgsvg_element_onpageshow_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.onpageshow](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onpageshow)
impl TSVGSVGElement with set_onpageshow(self : Self, 
onpageshow : (Event) -> JsValue) -> Unit {
  svgsvg_element_set_onpageshow_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onpageshow)))
}

/// [SVGSVGElement.onpageswap](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onpageswap)
impl TSVGSVGElement with onpageswap(self : Self) -> EventHandler {
  svgsvg_element_onpageswap_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.onpageswap](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onpageswap)
impl TSVGSVGElement with set_onpageswap(self : Self, 
onpageswap : (Event) -> JsValue) -> Unit {
  svgsvg_element_set_onpageswap_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onpageswap)))
}

/// [SVGSVGElement.onpopstate](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onpopstate)
impl TSVGSVGElement with onpopstate(self : Self) -> EventHandler {
  svgsvg_element_onpopstate_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.onpopstate](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onpopstate)
impl TSVGSVGElement with set_onpopstate(self : Self, 
onpopstate : (Event) -> JsValue) -> Unit {
  svgsvg_element_set_onpopstate_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onpopstate)))
}

/// [SVGSVGElement.onrejectionhandled](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onrejectionhandled)
impl TSVGSVGElement with onrejectionhandled(self : Self) -> EventHandler {
  svgsvg_element_onrejectionhandled_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.onrejectionhandled](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onrejectionhandled)
impl TSVGSVGElement with set_onrejectionhandled(self : Self, 
onrejectionhandled : (Event) -> JsValue) -> Unit {
  svgsvg_element_set_onrejectionhandled_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onrejectionhandled)))
}

/// [SVGSVGElement.onstorage](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onstorage)
impl TSVGSVGElement with onstorage(self : Self) -> EventHandler {
  svgsvg_element_onstorage_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.onstorage](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onstorage)
impl TSVGSVGElement with set_onstorage(self : Self, 
onstorage : (Event) -> JsValue) -> Unit {
  svgsvg_element_set_onstorage_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onstorage)))
}

/// [SVGSVGElement.onunhandledrejection](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onunhandledrejection)
impl TSVGSVGElement with onunhandledrejection(self : Self) -> EventHandler {
  svgsvg_element_onunhandledrejection_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.onunhandledrejection](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onunhandledrejection)
impl TSVGSVGElement with set_onunhandledrejection(self : Self, 
onunhandledrejection : (Event) -> JsValue) -> Unit {
  svgsvg_element_set_onunhandledrejection_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onunhandledrejection)))
}

/// [SVGSVGElement.onunload](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onunload)
impl TSVGSVGElement with onunload(self : Self) -> EventHandler {
  svgsvg_element_onunload_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.onunload](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onunload)
impl TSVGSVGElement with set_onunload(self : Self, 
onunload : (Event) -> JsValue) -> Unit {
  svgsvg_element_set_onunload_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onunload)))
}

impl TSVGSVGElement with get_element_by_id(self : Self, 
element_id : String) -> Element {
  self.get_element_by_id_opt(element_id).unwrap()
}

#cfg(target="js")
extern "js" fn svgsvg_element_x_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.x"

///|
#cfg(target="js")
fn svgsvg_element_x_ffi(obj: JsValue) -> SVGAnimatedLength {
  svgsvg_element_x_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_y_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.y"

///|
#cfg(target="js")
fn svgsvg_element_y_ffi(obj: JsValue) -> SVGAnimatedLength {
  svgsvg_element_y_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_width_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.width"

///|
#cfg(target="js")
fn svgsvg_element_width_ffi(obj: JsValue) -> SVGAnimatedLength {
  svgsvg_element_width_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_height_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.height"

///|
#cfg(target="js")
fn svgsvg_element_height_ffi(obj: JsValue) -> SVGAnimatedLength {
  svgsvg_element_height_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_current_scale_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.currentScale"

///|
#cfg(target="js")
fn svgsvg_element_current_scale_ffi(obj: JsValue) -> Float {
  svgsvg_element_current_scale_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_set_current_scale_ffi(obj: JsValue, current_scale: JsValue) -> Unit = "(obj, currentScale) => { obj.currentScale = currentScale; }"

#cfg(target="js")
extern "js" fn svgsvg_element_current_translate_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.currentTranslate"

///|
#cfg(target="js")
fn svgsvg_element_current_translate_ffi(obj: JsValue) -> DOMPointReadOnly {
  svgsvg_element_current_translate_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_get_intersection_list_ffi_js(obj: JsValue, rect: JsValue, reference_element: JsValue) -> JsValue = "(obj, rect, reference_element) => obj.getIntersectionList(rect, reference_element)"

///|
#cfg(target="js")
fn svgsvg_element_get_intersection_list_ffi(obj: JsValue, rect: JsValue, reference_element: JsValue) -> NodeList {
  svgsvg_element_get_intersection_list_ffi_js(obj, rect, reference_element).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_get_enclosure_list_ffi_js(obj: JsValue, rect: JsValue, reference_element: JsValue) -> JsValue = "(obj, rect, reference_element) => obj.getEnclosureList(rect, reference_element)"

///|
#cfg(target="js")
fn svgsvg_element_get_enclosure_list_ffi(obj: JsValue, rect: JsValue, reference_element: JsValue) -> NodeList {
  svgsvg_element_get_enclosure_list_ffi_js(obj, rect, reference_element).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_check_intersection_ffi_js(obj: JsValue, element: JsValue, rect: JsValue) -> JsValue = "(obj, element, rect) => obj.checkIntersection(element, rect)"

///|
#cfg(target="js")
fn svgsvg_element_check_intersection_ffi(obj: JsValue, element: JsValue, rect: JsValue) -> Bool {
  svgsvg_element_check_intersection_ffi_js(obj, element, rect).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_check_enclosure_ffi_js(obj: JsValue, element: JsValue, rect: JsValue) -> JsValue = "(obj, element, rect) => obj.checkEnclosure(element, rect)"

///|
#cfg(target="js")
fn svgsvg_element_check_enclosure_ffi(obj: JsValue, element: JsValue, rect: JsValue) -> Bool {
  svgsvg_element_check_enclosure_ffi_js(obj, element, rect).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_deselect_all_ffi(obj: JsValue) -> Unit = "(obj) => obj.deselectAll()"

#cfg(target="js")
extern "js" fn svgsvg_element_create_svg_number_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.createSVGNumber()"

///|
#cfg(target="js")
fn svgsvg_element_create_svg_number_ffi(obj: JsValue) -> SVGNumber {
  svgsvg_element_create_svg_number_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_create_svg_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.createSVGLength()"

///|
#cfg(target="js")
fn svgsvg_element_create_svg_length_ffi(obj: JsValue) -> SVGLength {
  svgsvg_element_create_svg_length_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_create_svg_angle_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.createSVGAngle()"

///|
#cfg(target="js")
fn svgsvg_element_create_svg_angle_ffi(obj: JsValue) -> SVGAngle {
  svgsvg_element_create_svg_angle_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_create_svg_point_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.createSVGPoint()"

///|
#cfg(target="js")
fn svgsvg_element_create_svg_point_ffi(obj: JsValue) -> DOMPoint {
  svgsvg_element_create_svg_point_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_create_svg_matrix_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.createSVGMatrix()"

///|
#cfg(target="js")
fn svgsvg_element_create_svg_matrix_ffi(obj: JsValue) -> DOMMatrix {
  svgsvg_element_create_svg_matrix_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_create_svg_rect_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.createSVGRect()"

///|
#cfg(target="js")
fn svgsvg_element_create_svg_rect_ffi(obj: JsValue) -> DOMRect {
  svgsvg_element_create_svg_rect_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_create_svg_transform_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.createSVGTransform()"

///|
#cfg(target="js")
fn svgsvg_element_create_svg_transform_ffi(obj: JsValue) -> SVGTransform {
  svgsvg_element_create_svg_transform_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_create_svg_transform_from_matrix_ffi_js(obj: JsValue, matrix: JsValue) -> JsValue = "(obj, matrix) => obj.createSVGTransformFromMatrix(matrix)"

///|
#cfg(target="js")
fn svgsvg_element_create_svg_transform_from_matrix_ffi(obj: JsValue, matrix: JsValue) -> SVGTransform {
  svgsvg_element_create_svg_transform_from_matrix_ffi_js(obj, matrix).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_get_element_by_id_ffi(obj: JsValue, element_id: JsValue) -> JsValue = "(obj, element_id) => obj.getElementById(element_id)"

#cfg(target="js")
extern "js" fn svgsvg_element_suspend_redraw_ffi_js(obj: JsValue, max_wait_milliseconds: JsValue) -> JsValue = "(obj, max_wait_milliseconds) => obj.suspendRedraw(max_wait_milliseconds)"

///|
#cfg(target="js")
fn svgsvg_element_suspend_redraw_ffi(obj: JsValue, max_wait_milliseconds: JsValue) -> UInt {
  svgsvg_element_suspend_redraw_ffi_js(obj, max_wait_milliseconds).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_unsuspend_redraw_ffi(obj: JsValue, suspend_handle_id: JsValue) -> Unit = "(obj, suspend_handle_id) => obj.unsuspendRedraw(suspend_handle_id)"

#cfg(target="js")
extern "js" fn svgsvg_element_unsuspend_redraw_all_ffi(obj: JsValue) -> Unit = "(obj) => obj.unsuspendRedrawAll()"

#cfg(target="js")
extern "js" fn svgsvg_element_force_redraw_ffi(obj: JsValue) -> Unit = "(obj) => obj.forceRedraw()"

#cfg(target="js")
extern "js" fn svgsvg_element_view_box_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.viewBox"

///|
#cfg(target="js")
fn svgsvg_element_view_box_ffi(obj: JsValue) -> SVGAnimatedRect {
  svgsvg_element_view_box_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_preserve_aspect_ratio_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.preserveAspectRatio"

///|
#cfg(target="js")
fn svgsvg_element_preserve_aspect_ratio_ffi(obj: JsValue) -> SVGAnimatedPreserveAspectRatio {
  svgsvg_element_preserve_aspect_ratio_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_onafterprint_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onafterprint"

///|
#cfg(target="js")
fn svgsvg_element_onafterprint_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onafterprint_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_set_onafterprint_ffi(obj: JsValue, onafterprint: JsValue) -> Unit = "(obj, onafterprint) => { obj.onafterprint = onafterprint; }"

#cfg(target="js")
extern "js" fn svgsvg_element_onbeforeprint_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onbeforeprint"

///|
#cfg(target="js")
fn svgsvg_element_onbeforeprint_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onbeforeprint_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_set_onbeforeprint_ffi(obj: JsValue, onbeforeprint: JsValue) -> Unit = "(obj, onbeforeprint) => { obj.onbeforeprint = onbeforeprint; }"

#cfg(target="js")
extern "js" fn svgsvg_element_onbeforeunload_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onbeforeunload"

///|
#cfg(target="js")
fn svgsvg_element_onbeforeunload_ffi(obj: JsValue) -> OnBeforeUnloadEventHandler {
  svgsvg_element_onbeforeunload_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_set_onbeforeunload_ffi(obj: JsValue, onbeforeunload: JsValue) -> Unit = "(obj, onbeforeunload) => { obj.onbeforeunload = onbeforeunload; }"

#cfg(target="js")
extern "js" fn svgsvg_element_onhashchange_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onhashchange"

///|
#cfg(target="js")
fn svgsvg_element_onhashchange_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onhashchange_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_set_onhashchange_ffi(obj: JsValue, onhashchange: JsValue) -> Unit = "(obj, onhashchange) => { obj.onhashchange = onhashchange; }"

#cfg(target="js")
extern "js" fn svgsvg_element_onlanguagechange_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onlanguagechange"

///|
#cfg(target="js")
fn svgsvg_element_onlanguagechange_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onlanguagechange_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_set_onlanguagechange_ffi(obj: JsValue, onlanguagechange: JsValue) -> Unit = "(obj, onlanguagechange) => { obj.onlanguagechange = onlanguagechange; }"

#cfg(target="js")
extern "js" fn svgsvg_element_onmessage_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onmessage"

///|
#cfg(target="js")
fn svgsvg_element_onmessage_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onmessage_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_set_onmessage_ffi(obj: JsValue, onmessage: JsValue) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

#cfg(target="js")
extern "js" fn svgsvg_element_onmessageerror_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onmessageerror"

///|
#cfg(target="js")
fn svgsvg_element_onmessageerror_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onmessageerror_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_set_onmessageerror_ffi(obj: JsValue, onmessageerror: JsValue) -> Unit = "(obj, onmessageerror) => { obj.onmessageerror = onmessageerror; }"

#cfg(target="js")
extern "js" fn svgsvg_element_onoffline_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onoffline"

///|
#cfg(target="js")
fn svgsvg_element_onoffline_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onoffline_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_set_onoffline_ffi(obj: JsValue, onoffline: JsValue) -> Unit = "(obj, onoffline) => { obj.onoffline = onoffline; }"

#cfg(target="js")
extern "js" fn svgsvg_element_ononline_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.ononline"

///|
#cfg(target="js")
fn svgsvg_element_ononline_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_ononline_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_set_ononline_ffi(obj: JsValue, ononline: JsValue) -> Unit = "(obj, ononline) => { obj.ononline = ononline; }"

#cfg(target="js")
extern "js" fn svgsvg_element_onpagehide_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onpagehide"

///|
#cfg(target="js")
fn svgsvg_element_onpagehide_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onpagehide_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_set_onpagehide_ffi(obj: JsValue, onpagehide: JsValue) -> Unit = "(obj, onpagehide) => { obj.onpagehide = onpagehide; }"

#cfg(target="js")
extern "js" fn svgsvg_element_onpagereveal_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onpagereveal"

///|
#cfg(target="js")
fn svgsvg_element_onpagereveal_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onpagereveal_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_set_onpagereveal_ffi(obj: JsValue, onpagereveal: JsValue) -> Unit = "(obj, onpagereveal) => { obj.onpagereveal = onpagereveal; }"

#cfg(target="js")
extern "js" fn svgsvg_element_onpageshow_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onpageshow"

///|
#cfg(target="js")
fn svgsvg_element_onpageshow_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onpageshow_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_set_onpageshow_ffi(obj: JsValue, onpageshow: JsValue) -> Unit = "(obj, onpageshow) => { obj.onpageshow = onpageshow; }"

#cfg(target="js")
extern "js" fn svgsvg_element_onpageswap_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onpageswap"

///|
#cfg(target="js")
fn svgsvg_element_onpageswap_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onpageswap_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_set_onpageswap_ffi(obj: JsValue, onpageswap: JsValue) -> Unit = "(obj, onpageswap) => { obj.onpageswap = onpageswap; }"

#cfg(target="js")
extern "js" fn svgsvg_element_onpopstate_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onpopstate"

///|
#cfg(target="js")
fn svgsvg_element_onpopstate_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onpopstate_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_set_onpopstate_ffi(obj: JsValue, onpopstate: JsValue) -> Unit = "(obj, onpopstate) => { obj.onpopstate = onpopstate; }"

#cfg(target="js")
extern "js" fn svgsvg_element_onrejectionhandled_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onrejectionhandled"

///|
#cfg(target="js")
fn svgsvg_element_onrejectionhandled_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onrejectionhandled_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_set_onrejectionhandled_ffi(obj: JsValue, onrejectionhandled: JsValue) -> Unit = "(obj, onrejectionhandled) => { obj.onrejectionhandled = onrejectionhandled; }"

#cfg(target="js")
extern "js" fn svgsvg_element_onstorage_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onstorage"

///|
#cfg(target="js")
fn svgsvg_element_onstorage_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onstorage_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_set_onstorage_ffi(obj: JsValue, onstorage: JsValue) -> Unit = "(obj, onstorage) => { obj.onstorage = onstorage; }"

#cfg(target="js")
extern "js" fn svgsvg_element_onunhandledrejection_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onunhandledrejection"

///|
#cfg(target="js")
fn svgsvg_element_onunhandledrejection_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onunhandledrejection_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_set_onunhandledrejection_ffi(obj: JsValue, onunhandledrejection: JsValue) -> Unit = "(obj, onunhandledrejection) => { obj.onunhandledrejection = onunhandledrejection; }"

#cfg(target="js")
extern "js" fn svgsvg_element_onunload_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onunload"

///|
#cfg(target="js")
fn svgsvg_element_onunload_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onunload_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svgsvg_element_set_onunload_ffi(obj: JsValue, onunload: JsValue) -> Unit = "(obj, onunload) => { obj.onunload = onunload; }"

#cfg(target="wasm-gc")
fn svgsvg_element_x_ffi(obj: JsValue) -> SVGAnimatedLength = "webapi_SVGSVGElement" "get_x"

#cfg(target="wasm-gc")
fn svgsvg_element_y_ffi(obj: JsValue) -> SVGAnimatedLength = "webapi_SVGSVGElement" "get_y"

#cfg(target="wasm-gc")
fn svgsvg_element_width_ffi(obj: JsValue) -> SVGAnimatedLength = "webapi_SVGSVGElement" "get_width"

#cfg(target="wasm-gc")
fn svgsvg_element_height_ffi(obj: JsValue) -> SVGAnimatedLength = "webapi_SVGSVGElement" "get_height"

#cfg(target="wasm-gc")
fn svgsvg_element_current_scale_ffi(obj: JsValue) -> Float = "webapi_SVGSVGElement" "get_currentScale"

#cfg(target="wasm-gc")
fn svgsvg_element_set_current_scale_ffi(obj: JsValue, current_scale: JsValue) -> Unit = "webapi_SVGSVGElement" "set_currentScale"

#cfg(target="wasm-gc")
fn svgsvg_element_current_translate_ffi(obj: JsValue) -> DOMPointReadOnly = "webapi_SVGSVGElement" "get_currentTranslate"

#cfg(target="wasm-gc")
fn svgsvg_element_get_intersection_list_ffi(obj: JsValue, rect: JsValue, reference_element: JsValue) -> NodeList = "webapi_SVGSVGElement" "getIntersectionList"

#cfg(target="wasm-gc")
fn svgsvg_element_get_enclosure_list_ffi(obj: JsValue, rect: JsValue, reference_element: JsValue) -> NodeList = "webapi_SVGSVGElement" "getEnclosureList"

#cfg(target="wasm-gc")
fn svgsvg_element_check_intersection_ffi(obj: JsValue, element: JsValue, rect: JsValue) -> Bool = "webapi_SVGSVGElement" "checkIntersection"

#cfg(target="wasm-gc")
fn svgsvg_element_check_enclosure_ffi(obj: JsValue, element: JsValue, rect: JsValue) -> Bool = "webapi_SVGSVGElement" "checkEnclosure"

#cfg(target="wasm-gc")
fn svgsvg_element_deselect_all_ffi(obj: JsValue) -> Unit = "webapi_SVGSVGElement" "deselectAll"

#cfg(target="wasm-gc")
fn svgsvg_element_create_svg_number_ffi(obj: JsValue) -> SVGNumber = "webapi_SVGSVGElement" "createSVGNumber"

#cfg(target="wasm-gc")
fn svgsvg_element_create_svg_length_ffi(obj: JsValue) -> SVGLength = "webapi_SVGSVGElement" "createSVGLength"

#cfg(target="wasm-gc")
fn svgsvg_element_create_svg_angle_ffi(obj: JsValue) -> SVGAngle = "webapi_SVGSVGElement" "createSVGAngle"

#cfg(target="wasm-gc")
fn svgsvg_element_create_svg_point_ffi(obj: JsValue) -> DOMPoint = "webapi_SVGSVGElement" "createSVGPoint"

#cfg(target="wasm-gc")
fn svgsvg_element_create_svg_matrix_ffi(obj: JsValue) -> DOMMatrix = "webapi_SVGSVGElement" "createSVGMatrix"

#cfg(target="wasm-gc")
fn svgsvg_element_create_svg_rect_ffi(obj: JsValue) -> DOMRect = "webapi_SVGSVGElement" "createSVGRect"

#cfg(target="wasm-gc")
fn svgsvg_element_create_svg_transform_ffi(obj: JsValue) -> SVGTransform = "webapi_SVGSVGElement" "createSVGTransform"

#cfg(target="wasm-gc")
fn svgsvg_element_create_svg_transform_from_matrix_ffi(obj: JsValue, matrix: JsValue) -> SVGTransform = "webapi_SVGSVGElement" "createSVGTransformFromMatrix"

#cfg(target="wasm-gc")
fn svgsvg_element_get_element_by_id_ffi(obj: JsValue, element_id: JsValue) -> JsValue = "webapi_SVGSVGElement" "getElementById"

#cfg(target="wasm-gc")
fn svgsvg_element_suspend_redraw_ffi(obj: JsValue, max_wait_milliseconds: JsValue) -> UInt = "webapi_SVGSVGElement" "suspendRedraw"

#cfg(target="wasm-gc")
fn svgsvg_element_unsuspend_redraw_ffi(obj: JsValue, suspend_handle_id: JsValue) -> Unit = "webapi_SVGSVGElement" "unsuspendRedraw"

#cfg(target="wasm-gc")
fn svgsvg_element_unsuspend_redraw_all_ffi(obj: JsValue) -> Unit = "webapi_SVGSVGElement" "unsuspendRedrawAll"

#cfg(target="wasm-gc")
fn svgsvg_element_force_redraw_ffi(obj: JsValue) -> Unit = "webapi_SVGSVGElement" "forceRedraw"

#cfg(target="wasm-gc")
fn svgsvg_element_view_box_ffi(obj: JsValue) -> SVGAnimatedRect = "webapi_SVGSVGElement" "get_viewBox"

#cfg(target="wasm-gc")
fn svgsvg_element_preserve_aspect_ratio_ffi(obj: JsValue) -> SVGAnimatedPreserveAspectRatio = "webapi_SVGSVGElement" "get_preserveAspectRatio"

#cfg(target="wasm-gc")
fn svgsvg_element_onafterprint_ffi_wasm(obj: JsValue) -> JsValue = "webapi_SVGSVGElement" "get_onafterprint"

///|
#cfg(target="wasm-gc")
fn svgsvg_element_onafterprint_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onafterprint_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svgsvg_element_set_onafterprint_ffi(obj: JsValue, onafterprint: JsValue) -> Unit = "webapi_SVGSVGElement" "set_onafterprint"

#cfg(target="wasm-gc")
fn svgsvg_element_onbeforeprint_ffi_wasm(obj: JsValue) -> JsValue = "webapi_SVGSVGElement" "get_onbeforeprint"

///|
#cfg(target="wasm-gc")
fn svgsvg_element_onbeforeprint_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onbeforeprint_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svgsvg_element_set_onbeforeprint_ffi(obj: JsValue, onbeforeprint: JsValue) -> Unit = "webapi_SVGSVGElement" "set_onbeforeprint"

#cfg(target="wasm-gc")
fn svgsvg_element_onbeforeunload_ffi_wasm(obj: JsValue) -> JsValue = "webapi_SVGSVGElement" "get_onbeforeunload"

///|
#cfg(target="wasm-gc")
fn svgsvg_element_onbeforeunload_ffi(obj: JsValue) -> OnBeforeUnloadEventHandler {
  svgsvg_element_onbeforeunload_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svgsvg_element_set_onbeforeunload_ffi(obj: JsValue, onbeforeunload: JsValue) -> Unit = "webapi_SVGSVGElement" "set_onbeforeunload"

#cfg(target="wasm-gc")
fn svgsvg_element_onhashchange_ffi_wasm(obj: JsValue) -> JsValue = "webapi_SVGSVGElement" "get_onhashchange"

///|
#cfg(target="wasm-gc")
fn svgsvg_element_onhashchange_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onhashchange_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svgsvg_element_set_onhashchange_ffi(obj: JsValue, onhashchange: JsValue) -> Unit = "webapi_SVGSVGElement" "set_onhashchange"

#cfg(target="wasm-gc")
fn svgsvg_element_onlanguagechange_ffi_wasm(obj: JsValue) -> JsValue = "webapi_SVGSVGElement" "get_onlanguagechange"

///|
#cfg(target="wasm-gc")
fn svgsvg_element_onlanguagechange_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onlanguagechange_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svgsvg_element_set_onlanguagechange_ffi(obj: JsValue, onlanguagechange: JsValue) -> Unit = "webapi_SVGSVGElement" "set_onlanguagechange"

#cfg(target="wasm-gc")
fn svgsvg_element_onmessage_ffi_wasm(obj: JsValue) -> JsValue = "webapi_SVGSVGElement" "get_onmessage"

///|
#cfg(target="wasm-gc")
fn svgsvg_element_onmessage_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onmessage_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svgsvg_element_set_onmessage_ffi(obj: JsValue, onmessage: JsValue) -> Unit = "webapi_SVGSVGElement" "set_onmessage"

#cfg(target="wasm-gc")
fn svgsvg_element_onmessageerror_ffi_wasm(obj: JsValue) -> JsValue = "webapi_SVGSVGElement" "get_onmessageerror"

///|
#cfg(target="wasm-gc")
fn svgsvg_element_onmessageerror_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onmessageerror_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svgsvg_element_set_onmessageerror_ffi(obj: JsValue, onmessageerror: JsValue) -> Unit = "webapi_SVGSVGElement" "set_onmessageerror"

#cfg(target="wasm-gc")
fn svgsvg_element_onoffline_ffi_wasm(obj: JsValue) -> JsValue = "webapi_SVGSVGElement" "get_onoffline"

///|
#cfg(target="wasm-gc")
fn svgsvg_element_onoffline_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onoffline_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svgsvg_element_set_onoffline_ffi(obj: JsValue, onoffline: JsValue) -> Unit = "webapi_SVGSVGElement" "set_onoffline"

#cfg(target="wasm-gc")
fn svgsvg_element_ononline_ffi_wasm(obj: JsValue) -> JsValue = "webapi_SVGSVGElement" "get_ononline"

///|
#cfg(target="wasm-gc")
fn svgsvg_element_ononline_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_ononline_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svgsvg_element_set_ononline_ffi(obj: JsValue, ononline: JsValue) -> Unit = "webapi_SVGSVGElement" "set_ononline"

#cfg(target="wasm-gc")
fn svgsvg_element_onpagehide_ffi_wasm(obj: JsValue) -> JsValue = "webapi_SVGSVGElement" "get_onpagehide"

///|
#cfg(target="wasm-gc")
fn svgsvg_element_onpagehide_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onpagehide_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svgsvg_element_set_onpagehide_ffi(obj: JsValue, onpagehide: JsValue) -> Unit = "webapi_SVGSVGElement" "set_onpagehide"

#cfg(target="wasm-gc")
fn svgsvg_element_onpagereveal_ffi_wasm(obj: JsValue) -> JsValue = "webapi_SVGSVGElement" "get_onpagereveal"

///|
#cfg(target="wasm-gc")
fn svgsvg_element_onpagereveal_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onpagereveal_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svgsvg_element_set_onpagereveal_ffi(obj: JsValue, onpagereveal: JsValue) -> Unit = "webapi_SVGSVGElement" "set_onpagereveal"

#cfg(target="wasm-gc")
fn svgsvg_element_onpageshow_ffi_wasm(obj: JsValue) -> JsValue = "webapi_SVGSVGElement" "get_onpageshow"

///|
#cfg(target="wasm-gc")
fn svgsvg_element_onpageshow_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onpageshow_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svgsvg_element_set_onpageshow_ffi(obj: JsValue, onpageshow: JsValue) -> Unit = "webapi_SVGSVGElement" "set_onpageshow"

#cfg(target="wasm-gc")
fn svgsvg_element_onpageswap_ffi_wasm(obj: JsValue) -> JsValue = "webapi_SVGSVGElement" "get_onpageswap"

///|
#cfg(target="wasm-gc")
fn svgsvg_element_onpageswap_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onpageswap_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svgsvg_element_set_onpageswap_ffi(obj: JsValue, onpageswap: JsValue) -> Unit = "webapi_SVGSVGElement" "set_onpageswap"

#cfg(target="wasm-gc")
fn svgsvg_element_onpopstate_ffi_wasm(obj: JsValue) -> JsValue = "webapi_SVGSVGElement" "get_onpopstate"

///|
#cfg(target="wasm-gc")
fn svgsvg_element_onpopstate_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onpopstate_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svgsvg_element_set_onpopstate_ffi(obj: JsValue, onpopstate: JsValue) -> Unit = "webapi_SVGSVGElement" "set_onpopstate"

#cfg(target="wasm-gc")
fn svgsvg_element_onrejectionhandled_ffi_wasm(obj: JsValue) -> JsValue = "webapi_SVGSVGElement" "get_onrejectionhandled"

///|
#cfg(target="wasm-gc")
fn svgsvg_element_onrejectionhandled_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onrejectionhandled_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svgsvg_element_set_onrejectionhandled_ffi(obj: JsValue, onrejectionhandled: JsValue) -> Unit = "webapi_SVGSVGElement" "set_onrejectionhandled"

#cfg(target="wasm-gc")
fn svgsvg_element_onstorage_ffi_wasm(obj: JsValue) -> JsValue = "webapi_SVGSVGElement" "get_onstorage"

///|
#cfg(target="wasm-gc")
fn svgsvg_element_onstorage_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onstorage_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svgsvg_element_set_onstorage_ffi(obj: JsValue, onstorage: JsValue) -> Unit = "webapi_SVGSVGElement" "set_onstorage"

#cfg(target="wasm-gc")
fn svgsvg_element_onunhandledrejection_ffi_wasm(obj: JsValue) -> JsValue = "webapi_SVGSVGElement" "get_onunhandledrejection"

///|
#cfg(target="wasm-gc")
fn svgsvg_element_onunhandledrejection_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onunhandledrejection_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svgsvg_element_set_onunhandledrejection_ffi(obj: JsValue, onunhandledrejection: JsValue) -> Unit = "webapi_SVGSVGElement" "set_onunhandledrejection"

#cfg(target="wasm-gc")
fn svgsvg_element_onunload_ffi_wasm(obj: JsValue) -> JsValue = "webapi_SVGSVGElement" "get_onunload"

///|
#cfg(target="wasm-gc")
fn svgsvg_element_onunload_ffi(obj: JsValue) -> EventHandler {
  svgsvg_element_onunload_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svgsvg_element_set_onunload_ffi(obj: JsValue, onunload: JsValue) -> Unit = "webapi_SVGSVGElement" "set_onunload"