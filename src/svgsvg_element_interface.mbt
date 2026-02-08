// Do not edit. This file is generated.
// MoonBit type: SVGSVGElement
// Specifications: SVG.idl

/// [SVGSVGElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement)
#external
pub type SVGSVGElement

pub impl TJsValue for SVGSVGElement with to_js(self: SVGSVGElement) -> JsValue = "%identity"

pub fn[T: TSVGSVGElement] SVGSVGElement::into(self : SVGSVGElement) -> T = "%identity"

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
  get_element_by_id(self : Self, element_id : String) -> Element? = _
  suspend_redraw(self : Self, max_wait_milliseconds : UInt) -> UInt = _
  unsuspend_redraw(self : Self, suspend_handle_id : UInt) -> Unit = _
  unsuspend_redraw_all(self : Self) -> Unit = _
  force_redraw(self : Self) -> Unit = _
  view_box(self : Self) -> SVGAnimatedRect = _
  preserve_aspect_ratio(self : Self) -> SVGAnimatedPreserveAspectRatio = _
  onafterprint(self : Self) -> EventHandler = _
  set_onafterprint(self : Self, onafterprint : EventHandler) -> Unit = _
  onbeforeprint(self : Self) -> EventHandler = _
  set_onbeforeprint(self : Self, onbeforeprint : EventHandler) -> Unit = _
  onbeforeunload(self : Self) -> OnBeforeUnloadEventHandler = _
  set_onbeforeunload(self : Self, onbeforeunload : OnBeforeUnloadEventHandler) -> Unit = _
  onhashchange(self : Self) -> EventHandler = _
  set_onhashchange(self : Self, onhashchange : EventHandler) -> Unit = _
  onlanguagechange(self : Self) -> EventHandler = _
  set_onlanguagechange(self : Self, onlanguagechange : EventHandler) -> Unit = _
  onmessage(self : Self) -> EventHandler = _
  set_onmessage(self : Self, onmessage : EventHandler) -> Unit = _
  onmessageerror(self : Self) -> EventHandler = _
  set_onmessageerror(self : Self, onmessageerror : EventHandler) -> Unit = _
  onoffline(self : Self) -> EventHandler = _
  set_onoffline(self : Self, onoffline : EventHandler) -> Unit = _
  ononline(self : Self) -> EventHandler = _
  set_ononline(self : Self, ononline : EventHandler) -> Unit = _
  onpagehide(self : Self) -> EventHandler = _
  set_onpagehide(self : Self, onpagehide : EventHandler) -> Unit = _
  onpagereveal(self : Self) -> EventHandler = _
  set_onpagereveal(self : Self, onpagereveal : EventHandler) -> Unit = _
  onpageshow(self : Self) -> EventHandler = _
  set_onpageshow(self : Self, onpageshow : EventHandler) -> Unit = _
  onpageswap(self : Self) -> EventHandler = _
  set_onpageswap(self : Self, onpageswap : EventHandler) -> Unit = _
  onpopstate(self : Self) -> EventHandler = _
  set_onpopstate(self : Self, onpopstate : EventHandler) -> Unit = _
  onrejectionhandled(self : Self) -> EventHandler = _
  set_onrejectionhandled(self : Self, onrejectionhandled : EventHandler) -> Unit = _
  onstorage(self : Self) -> EventHandler = _
  set_onstorage(self : Self, onstorage : EventHandler) -> Unit = _
  onunhandledrejection(self : Self) -> EventHandler = _
  set_onunhandledrejection(self : Self, onunhandledrejection : EventHandler) -> Unit = _
  onunload(self : Self) -> EventHandler = _
  set_onunload(self : Self, onunload : EventHandler) -> Unit = _
}

/// [SVGSVGElement.x](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/x)
impl TSVGSVGElement with x(self : Self) -> SVGAnimatedLength {
  svgsvg_element_x_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.y](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/y)
impl TSVGSVGElement with y(self : Self) -> SVGAnimatedLength {
  svgsvg_element_y_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.width](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/width)
impl TSVGSVGElement with width(self : Self) -> SVGAnimatedLength {
  svgsvg_element_width_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.height](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/height)
impl TSVGSVGElement with height(self : Self) -> SVGAnimatedLength {
  svgsvg_element_height_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.currentScale](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/currentScale)
impl TSVGSVGElement with current_scale(self : Self) -> Float {
  svgsvg_element_current_scale_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.currentScale](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/currentScale)
impl TSVGSVGElement with set_current_scale(self : Self, 
current_scale : Float) -> Unit {
  svgsvg_element_set_current_scale_ffi(TJsValue::to_js(self), TJsValue::to_js(current_scale))
}

/// [SVGSVGElement.currentTranslate](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/currentTranslate)
impl TSVGSVGElement with current_translate(self : Self) -> DOMPointReadOnly {
  svgsvg_element_current_translate_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.getIntersectionList](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/getIntersectionList)
impl TSVGSVGElement with get_intersection_list(self : Self, 
rect : &TDOMRectReadOnly, 
reference_element : &TSVGElement) -> NodeList {
  svgsvg_element_get_intersection_list_ffi(TJsValue::to_js(self), TJsValue::to_js(rect), TJsValue::to_js(reference_element)).unsafe_cast()
}

/// [SVGSVGElement.getEnclosureList](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/getEnclosureList)
impl TSVGSVGElement with get_enclosure_list(self : Self, 
rect : &TDOMRectReadOnly, 
reference_element : &TSVGElement) -> NodeList {
  svgsvg_element_get_enclosure_list_ffi(TJsValue::to_js(self), TJsValue::to_js(rect), TJsValue::to_js(reference_element)).unsafe_cast()
}

/// [SVGSVGElement.checkIntersection](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/checkIntersection)
impl TSVGSVGElement with check_intersection(self : Self, 
element : &TSVGElement, 
rect : &TDOMRectReadOnly) -> Bool {
  svgsvg_element_check_intersection_ffi(TJsValue::to_js(self), TJsValue::to_js(element), TJsValue::to_js(rect)).unsafe_cast()
}

/// [SVGSVGElement.checkEnclosure](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/checkEnclosure)
impl TSVGSVGElement with check_enclosure(self : Self, 
element : &TSVGElement, 
rect : &TDOMRectReadOnly) -> Bool {
  svgsvg_element_check_enclosure_ffi(TJsValue::to_js(self), TJsValue::to_js(element), TJsValue::to_js(rect)).unsafe_cast()
}

/// [SVGSVGElement.deselectAll](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/deselectAll)
impl TSVGSVGElement with deselect_all(self : Self) -> Unit {
  svgsvg_element_deselect_all_ffi(TJsValue::to_js(self))
}

/// [SVGSVGElement.createSVGNumber](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/createSVGNumber)
impl TSVGSVGElement with create_svg_number(self : Self) -> SVGNumber {
  svgsvg_element_create_svg_number_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.createSVGLength](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/createSVGLength)
impl TSVGSVGElement with create_svg_length(self : Self) -> SVGLength {
  svgsvg_element_create_svg_length_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.createSVGAngle](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/createSVGAngle)
impl TSVGSVGElement with create_svg_angle(self : Self) -> SVGAngle {
  svgsvg_element_create_svg_angle_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.createSVGPoint](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/createSVGPoint)
impl TSVGSVGElement with create_svg_point(self : Self) -> DOMPoint {
  svgsvg_element_create_svg_point_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.createSVGMatrix](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/createSVGMatrix)
impl TSVGSVGElement with create_svg_matrix(self : Self) -> DOMMatrix {
  svgsvg_element_create_svg_matrix_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.createSVGRect](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/createSVGRect)
impl TSVGSVGElement with create_svg_rect(self : Self) -> DOMRect {
  svgsvg_element_create_svg_rect_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.createSVGTransform](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/createSVGTransform)
impl TSVGSVGElement with create_svg_transform(self : Self) -> SVGTransform {
  svgsvg_element_create_svg_transform_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.createSVGTransformFromMatrix](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/createSVGTransformFromMatrix)
impl TSVGSVGElement with create_svg_transform_from_matrix(self : Self, 
matrix? : DOMMatrix2DInit = DOMMatrix2DInit::empty()) -> SVGTransform {
  svgsvg_element_create_svg_transform_from_matrix_ffi(TJsValue::to_js(self), TJsValue::to_js(matrix)).unsafe_cast()
}

/// [SVGSVGElement.getElementById](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/getElementById)
impl TSVGSVGElement with get_element_by_id(self : Self, 
element_id : String) -> Element? {
  let result = svgsvg_element_get_element_by_id_ffi(TJsValue::to_js(self), TJsValue::to_js(element_id))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

/// [SVGSVGElement.suspendRedraw](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/suspendRedraw)
impl TSVGSVGElement with suspend_redraw(self : Self, 
max_wait_milliseconds : UInt) -> UInt {
  svgsvg_element_suspend_redraw_ffi(TJsValue::to_js(self), TJsValue::to_js(max_wait_milliseconds)).unsafe_cast()
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
  svgsvg_element_view_box_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.preserveAspectRatio](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/preserveAspectRatio)
impl TSVGSVGElement with preserve_aspect_ratio(self : Self) -> SVGAnimatedPreserveAspectRatio {
  svgsvg_element_preserve_aspect_ratio_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.onafterprint](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onafterprint)
impl TSVGSVGElement with onafterprint(self : Self) -> EventHandler {
  svgsvg_element_onafterprint_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.onafterprint](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onafterprint)
impl TSVGSVGElement with set_onafterprint(self : Self, 
onafterprint : EventHandler) -> Unit {
  svgsvg_element_set_onafterprint_ffi(TJsValue::to_js(self), TJsValue::to_js(onafterprint))
}

/// [SVGSVGElement.onbeforeprint](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onbeforeprint)
impl TSVGSVGElement with onbeforeprint(self : Self) -> EventHandler {
  svgsvg_element_onbeforeprint_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.onbeforeprint](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onbeforeprint)
impl TSVGSVGElement with set_onbeforeprint(self : Self, 
onbeforeprint : EventHandler) -> Unit {
  svgsvg_element_set_onbeforeprint_ffi(TJsValue::to_js(self), TJsValue::to_js(onbeforeprint))
}

/// [SVGSVGElement.onbeforeunload](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onbeforeunload)
impl TSVGSVGElement with onbeforeunload(self : Self) -> OnBeforeUnloadEventHandler {
  svgsvg_element_onbeforeunload_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.onbeforeunload](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onbeforeunload)
impl TSVGSVGElement with set_onbeforeunload(self : Self, 
onbeforeunload : OnBeforeUnloadEventHandler) -> Unit {
  svgsvg_element_set_onbeforeunload_ffi(TJsValue::to_js(self), TJsValue::to_js(onbeforeunload))
}

/// [SVGSVGElement.onhashchange](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onhashchange)
impl TSVGSVGElement with onhashchange(self : Self) -> EventHandler {
  svgsvg_element_onhashchange_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.onhashchange](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onhashchange)
impl TSVGSVGElement with set_onhashchange(self : Self, 
onhashchange : EventHandler) -> Unit {
  svgsvg_element_set_onhashchange_ffi(TJsValue::to_js(self), TJsValue::to_js(onhashchange))
}

/// [SVGSVGElement.onlanguagechange](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onlanguagechange)
impl TSVGSVGElement with onlanguagechange(self : Self) -> EventHandler {
  svgsvg_element_onlanguagechange_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.onlanguagechange](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onlanguagechange)
impl TSVGSVGElement with set_onlanguagechange(self : Self, 
onlanguagechange : EventHandler) -> Unit {
  svgsvg_element_set_onlanguagechange_ffi(TJsValue::to_js(self), TJsValue::to_js(onlanguagechange))
}

/// [SVGSVGElement.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onmessage)
impl TSVGSVGElement with onmessage(self : Self) -> EventHandler {
  svgsvg_element_onmessage_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onmessage)
impl TSVGSVGElement with set_onmessage(self : Self, 
onmessage : EventHandler) -> Unit {
  svgsvg_element_set_onmessage_ffi(TJsValue::to_js(self), TJsValue::to_js(onmessage))
}

/// [SVGSVGElement.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onmessageerror)
impl TSVGSVGElement with onmessageerror(self : Self) -> EventHandler {
  svgsvg_element_onmessageerror_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onmessageerror)
impl TSVGSVGElement with set_onmessageerror(self : Self, 
onmessageerror : EventHandler) -> Unit {
  svgsvg_element_set_onmessageerror_ffi(TJsValue::to_js(self), TJsValue::to_js(onmessageerror))
}

/// [SVGSVGElement.onoffline](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onoffline)
impl TSVGSVGElement with onoffline(self : Self) -> EventHandler {
  svgsvg_element_onoffline_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.onoffline](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onoffline)
impl TSVGSVGElement with set_onoffline(self : Self, 
onoffline : EventHandler) -> Unit {
  svgsvg_element_set_onoffline_ffi(TJsValue::to_js(self), TJsValue::to_js(onoffline))
}

/// [SVGSVGElement.ononline](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/ononline)
impl TSVGSVGElement with ononline(self : Self) -> EventHandler {
  svgsvg_element_ononline_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.ononline](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/ononline)
impl TSVGSVGElement with set_ononline(self : Self, 
ononline : EventHandler) -> Unit {
  svgsvg_element_set_ononline_ffi(TJsValue::to_js(self), TJsValue::to_js(ononline))
}

/// [SVGSVGElement.onpagehide](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onpagehide)
impl TSVGSVGElement with onpagehide(self : Self) -> EventHandler {
  svgsvg_element_onpagehide_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.onpagehide](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onpagehide)
impl TSVGSVGElement with set_onpagehide(self : Self, 
onpagehide : EventHandler) -> Unit {
  svgsvg_element_set_onpagehide_ffi(TJsValue::to_js(self), TJsValue::to_js(onpagehide))
}

/// [SVGSVGElement.onpagereveal](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onpagereveal)
impl TSVGSVGElement with onpagereveal(self : Self) -> EventHandler {
  svgsvg_element_onpagereveal_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.onpagereveal](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onpagereveal)
impl TSVGSVGElement with set_onpagereveal(self : Self, 
onpagereveal : EventHandler) -> Unit {
  svgsvg_element_set_onpagereveal_ffi(TJsValue::to_js(self), TJsValue::to_js(onpagereveal))
}

/// [SVGSVGElement.onpageshow](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onpageshow)
impl TSVGSVGElement with onpageshow(self : Self) -> EventHandler {
  svgsvg_element_onpageshow_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.onpageshow](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onpageshow)
impl TSVGSVGElement with set_onpageshow(self : Self, 
onpageshow : EventHandler) -> Unit {
  svgsvg_element_set_onpageshow_ffi(TJsValue::to_js(self), TJsValue::to_js(onpageshow))
}

/// [SVGSVGElement.onpageswap](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onpageswap)
impl TSVGSVGElement with onpageswap(self : Self) -> EventHandler {
  svgsvg_element_onpageswap_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.onpageswap](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onpageswap)
impl TSVGSVGElement with set_onpageswap(self : Self, 
onpageswap : EventHandler) -> Unit {
  svgsvg_element_set_onpageswap_ffi(TJsValue::to_js(self), TJsValue::to_js(onpageswap))
}

/// [SVGSVGElement.onpopstate](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onpopstate)
impl TSVGSVGElement with onpopstate(self : Self) -> EventHandler {
  svgsvg_element_onpopstate_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.onpopstate](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onpopstate)
impl TSVGSVGElement with set_onpopstate(self : Self, 
onpopstate : EventHandler) -> Unit {
  svgsvg_element_set_onpopstate_ffi(TJsValue::to_js(self), TJsValue::to_js(onpopstate))
}

/// [SVGSVGElement.onrejectionhandled](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onrejectionhandled)
impl TSVGSVGElement with onrejectionhandled(self : Self) -> EventHandler {
  svgsvg_element_onrejectionhandled_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.onrejectionhandled](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onrejectionhandled)
impl TSVGSVGElement with set_onrejectionhandled(self : Self, 
onrejectionhandled : EventHandler) -> Unit {
  svgsvg_element_set_onrejectionhandled_ffi(TJsValue::to_js(self), TJsValue::to_js(onrejectionhandled))
}

/// [SVGSVGElement.onstorage](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onstorage)
impl TSVGSVGElement with onstorage(self : Self) -> EventHandler {
  svgsvg_element_onstorage_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.onstorage](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onstorage)
impl TSVGSVGElement with set_onstorage(self : Self, 
onstorage : EventHandler) -> Unit {
  svgsvg_element_set_onstorage_ffi(TJsValue::to_js(self), TJsValue::to_js(onstorage))
}

/// [SVGSVGElement.onunhandledrejection](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onunhandledrejection)
impl TSVGSVGElement with onunhandledrejection(self : Self) -> EventHandler {
  svgsvg_element_onunhandledrejection_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.onunhandledrejection](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onunhandledrejection)
impl TSVGSVGElement with set_onunhandledrejection(self : Self, 
onunhandledrejection : EventHandler) -> Unit {
  svgsvg_element_set_onunhandledrejection_ffi(TJsValue::to_js(self), TJsValue::to_js(onunhandledrejection))
}

/// [SVGSVGElement.onunload](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onunload)
impl TSVGSVGElement with onunload(self : Self) -> EventHandler {
  svgsvg_element_onunload_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSVGElement.onunload](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement/onunload)
impl TSVGSVGElement with set_onunload(self : Self, 
onunload : EventHandler) -> Unit {
  svgsvg_element_set_onunload_ffi(TJsValue::to_js(self), TJsValue::to_js(onunload))
}