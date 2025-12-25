// Do not edit. This file is generated.
// MoonBit type: SVGSVGElement
// Specifications: SVG.idl

///|
#external
pub type SVGSVGElement

///|
pub impl TJsValue for SVGSVGElement with to_js(self : SVGSVGElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGSVGElement] SVGSVGElement::into(self : SVGSVGElement) -> T = "%identity"

///|
pub impl TSVGSVGElement for SVGSVGElement

///|
pub impl TSVGGraphicsElement for SVGSVGElement

///|
pub impl TSVGElement for SVGSVGElement

///|
pub impl TElement for SVGSVGElement

///|
pub impl TNode for SVGSVGElement

///|
pub impl TEventTarget for SVGSVGElement

///|
pub trait TSVGSVGElement: TSVGGraphicsElement {
  x(self : Self) -> SVGAnimatedLength = _
  y(self : Self) -> SVGAnimatedLength = _
  width(self : Self) -> SVGAnimatedLength = _
  height(self : Self) -> SVGAnimatedLength = _
  current_scale(self : Self) -> Float = _
  set_current_scale(self : Self, current_scale : Float) -> Unit = _
  current_translate(self : Self) -> DOMPointReadOnly = _
  get_intersection_list(
    self : Self,
    rect : &TDOMRectReadOnly,
    reference_element : &TSVGElement,
  ) -> NodeList = _
  get_enclosure_list(
    self : Self,
    rect : &TDOMRectReadOnly,
    reference_element : &TSVGElement,
  ) -> NodeList = _
  check_intersection(
    self : Self,
    element : &TSVGElement,
    rect : &TDOMRectReadOnly,
  ) -> Bool = _
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
  get_element_by_id(self : Self, element_id : String) -> Element = _
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

///|
extern "js" fn svgsvg_element_x_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.x"

///|
impl TSVGSVGElement with x(self : Self) -> SVGAnimatedLength {
  svgsvg_element_x_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_y_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.y"

///|
impl TSVGSVGElement with y(self : Self) -> SVGAnimatedLength {
  svgsvg_element_y_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_width_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.width"

///|
impl TSVGSVGElement with width(self : Self) -> SVGAnimatedLength {
  svgsvg_element_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_height_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.height"

///|
impl TSVGSVGElement with height(self : Self) -> SVGAnimatedLength {
  svgsvg_element_height_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_current_scale_ffi(obj : JsValue) -> Float = "(obj) => obj.currentScale"

///|
impl TSVGSVGElement with current_scale(self : Self) -> Float {
  svgsvg_element_current_scale_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_set_current_scale_ffi(
  obj : JsValue,
  current_scale : JsValue,
) -> Unit = "(obj, currentScale) => { obj.currentScale = currentScale; }"

///|
impl TSVGSVGElement with set_current_scale(self : Self, current_scale : Float) -> Unit {
  svgsvg_element_set_current_scale_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(current_scale),
  )
}

///|
extern "js" fn svgsvg_element_current_translate_ffi(
  obj : JsValue,
) -> DOMPointReadOnly = "(obj) => obj.currentTranslate"

///|
impl TSVGSVGElement with current_translate(self : Self) -> DOMPointReadOnly {
  svgsvg_element_current_translate_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_get_intersection_list_ffi(
  obj : JsValue,
  rect : JsValue,
  reference_element : JsValue,
) -> NodeList = "(obj, rect, reference_element) => obj.getIntersectionList(obj, rect, reference_element)"

///|
impl TSVGSVGElement with get_intersection_list(
  self : Self,
  rect : &TDOMRectReadOnly,
  reference_element : &TSVGElement,
) -> NodeList {
  svgsvg_element_get_intersection_list_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(rect),
    TJsValue::to_js(reference_element),
  )
}

///|
extern "js" fn svgsvg_element_get_enclosure_list_ffi(
  obj : JsValue,
  rect : JsValue,
  reference_element : JsValue,
) -> NodeList = "(obj, rect, reference_element) => obj.getEnclosureList(obj, rect, reference_element)"

///|
impl TSVGSVGElement with get_enclosure_list(
  self : Self,
  rect : &TDOMRectReadOnly,
  reference_element : &TSVGElement,
) -> NodeList {
  svgsvg_element_get_enclosure_list_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(rect),
    TJsValue::to_js(reference_element),
  )
}

///|
extern "js" fn svgsvg_element_check_intersection_ffi(
  obj : JsValue,
  element : JsValue,
  rect : JsValue,
) -> Bool = "(obj, element, rect) => obj.checkIntersection(obj, element, rect)"

///|
impl TSVGSVGElement with check_intersection(
  self : Self,
  element : &TSVGElement,
  rect : &TDOMRectReadOnly,
) -> Bool {
  svgsvg_element_check_intersection_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(element),
    TJsValue::to_js(rect),
  )
}

///|
extern "js" fn svgsvg_element_check_enclosure_ffi(
  obj : JsValue,
  element : JsValue,
  rect : JsValue,
) -> Bool = "(obj, element, rect) => obj.checkEnclosure(obj, element, rect)"

///|
impl TSVGSVGElement with check_enclosure(
  self : Self,
  element : &TSVGElement,
  rect : &TDOMRectReadOnly,
) -> Bool {
  svgsvg_element_check_enclosure_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(element),
    TJsValue::to_js(rect),
  )
}

///|
extern "js" fn svgsvg_element_deselect_all_ffi(obj : JsValue) -> Unit = "(obj) => obj.deselectAll(obj)"

///|
impl TSVGSVGElement with deselect_all(self : Self) -> Unit {
  svgsvg_element_deselect_all_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_create_svg_number_ffi(obj : JsValue) -> SVGNumber = "(obj) => obj.createSVGNumber(obj)"

///|
impl TSVGSVGElement with create_svg_number(self : Self) -> SVGNumber {
  svgsvg_element_create_svg_number_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_create_svg_length_ffi(obj : JsValue) -> SVGLength = "(obj) => obj.createSVGLength(obj)"

///|
impl TSVGSVGElement with create_svg_length(self : Self) -> SVGLength {
  svgsvg_element_create_svg_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_create_svg_angle_ffi(obj : JsValue) -> SVGAngle = "(obj) => obj.createSVGAngle(obj)"

///|
impl TSVGSVGElement with create_svg_angle(self : Self) -> SVGAngle {
  svgsvg_element_create_svg_angle_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_create_svg_point_ffi(obj : JsValue) -> DOMPoint = "(obj) => obj.createSVGPoint(obj)"

///|
impl TSVGSVGElement with create_svg_point(self : Self) -> DOMPoint {
  svgsvg_element_create_svg_point_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_create_svg_matrix_ffi(obj : JsValue) -> DOMMatrix = "(obj) => obj.createSVGMatrix(obj)"

///|
impl TSVGSVGElement with create_svg_matrix(self : Self) -> DOMMatrix {
  svgsvg_element_create_svg_matrix_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_create_svg_rect_ffi(obj : JsValue) -> DOMRect = "(obj) => obj.createSVGRect(obj)"

///|
impl TSVGSVGElement with create_svg_rect(self : Self) -> DOMRect {
  svgsvg_element_create_svg_rect_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_create_svg_transform_ffi(
  obj : JsValue,
) -> SVGTransform = "(obj) => obj.createSVGTransform(obj)"

///|
impl TSVGSVGElement with create_svg_transform(self : Self) -> SVGTransform {
  svgsvg_element_create_svg_transform_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_create_svg_transform_from_matrix_ffi(
  obj : JsValue,
  matrix : JsValue,
) -> SVGTransform = "(obj, matrix) => obj.createSVGTransformFromMatrix(obj, matrix)"

///|
impl TSVGSVGElement with create_svg_transform_from_matrix(
  self : Self,
  matrix? : DOMMatrix2DInit = DOMMatrix2DInit::empty(),
) -> SVGTransform {
  svgsvg_element_create_svg_transform_from_matrix_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(matrix),
  )
}

///|
extern "js" fn svgsvg_element_get_element_by_id_ffi(
  obj : JsValue,
  element_id : JsValue,
) -> Element = "(obj, element_id) => obj.getElementById(obj, element_id)"

///|
impl TSVGSVGElement with get_element_by_id(self : Self, element_id : String) -> Element {
  svgsvg_element_get_element_by_id_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(element_id),
  )
}

///|
extern "js" fn svgsvg_element_suspend_redraw_ffi(
  obj : JsValue,
  max_wait_milliseconds : JsValue,
) -> UInt = "(obj, max_wait_milliseconds) => obj.suspendRedraw(obj, max_wait_milliseconds)"

///|
impl TSVGSVGElement with suspend_redraw(
  self : Self,
  max_wait_milliseconds : UInt,
) -> UInt {
  svgsvg_element_suspend_redraw_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(max_wait_milliseconds),
  )
}

///|
extern "js" fn svgsvg_element_unsuspend_redraw_ffi(
  obj : JsValue,
  suspend_handle_id : JsValue,
) -> Unit = "(obj, suspend_handle_id) => obj.unsuspendRedraw(obj, suspend_handle_id)"

///|
impl TSVGSVGElement with unsuspend_redraw(self : Self, suspend_handle_id : UInt) -> Unit {
  svgsvg_element_unsuspend_redraw_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(suspend_handle_id),
  )
}

///|
extern "js" fn svgsvg_element_unsuspend_redraw_all_ffi(obj : JsValue) -> Unit = "(obj) => obj.unsuspendRedrawAll(obj)"

///|
impl TSVGSVGElement with unsuspend_redraw_all(self : Self) -> Unit {
  svgsvg_element_unsuspend_redraw_all_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_force_redraw_ffi(obj : JsValue) -> Unit = "(obj) => obj.forceRedraw(obj)"

///|
impl TSVGSVGElement with force_redraw(self : Self) -> Unit {
  svgsvg_element_force_redraw_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_view_box_ffi(obj : JsValue) -> SVGAnimatedRect = "(obj) => obj.viewBox"

///|
impl TSVGSVGElement with view_box(self : Self) -> SVGAnimatedRect {
  svgsvg_element_view_box_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_preserve_aspect_ratio_ffi(
  obj : JsValue,
) -> SVGAnimatedPreserveAspectRatio = "(obj) => obj.preserveAspectRatio"

///|
impl TSVGSVGElement with preserve_aspect_ratio(self : Self) -> SVGAnimatedPreserveAspectRatio {
  svgsvg_element_preserve_aspect_ratio_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_onafterprint_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onafterprint"

///|
impl TSVGSVGElement with onafterprint(self : Self) -> EventHandler {
  svgsvg_element_onafterprint_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_set_onafterprint_ffi(
  obj : JsValue,
  onafterprint : JsValue,
) -> Unit = "(obj, onafterprint) => { obj.onafterprint = onafterprint; }"

///|
impl TSVGSVGElement with set_onafterprint(
  self : Self,
  onafterprint : EventHandler,
) -> Unit {
  svgsvg_element_set_onafterprint_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onafterprint),
  )
}

///|
extern "js" fn svgsvg_element_onbeforeprint_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onbeforeprint"

///|
impl TSVGSVGElement with onbeforeprint(self : Self) -> EventHandler {
  svgsvg_element_onbeforeprint_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_set_onbeforeprint_ffi(
  obj : JsValue,
  onbeforeprint : JsValue,
) -> Unit = "(obj, onbeforeprint) => { obj.onbeforeprint = onbeforeprint; }"

///|
impl TSVGSVGElement with set_onbeforeprint(
  self : Self,
  onbeforeprint : EventHandler,
) -> Unit {
  svgsvg_element_set_onbeforeprint_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onbeforeprint),
  )
}

///|
extern "js" fn svgsvg_element_onbeforeunload_ffi(
  obj : JsValue,
) -> OnBeforeUnloadEventHandler = "(obj) => obj.onbeforeunload"

///|
impl TSVGSVGElement with onbeforeunload(self : Self) -> OnBeforeUnloadEventHandler {
  svgsvg_element_onbeforeunload_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_set_onbeforeunload_ffi(
  obj : JsValue,
  onbeforeunload : JsValue,
) -> Unit = "(obj, onbeforeunload) => { obj.onbeforeunload = onbeforeunload; }"

///|
impl TSVGSVGElement with set_onbeforeunload(
  self : Self,
  onbeforeunload : OnBeforeUnloadEventHandler,
) -> Unit {
  svgsvg_element_set_onbeforeunload_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onbeforeunload),
  )
}

///|
extern "js" fn svgsvg_element_onhashchange_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onhashchange"

///|
impl TSVGSVGElement with onhashchange(self : Self) -> EventHandler {
  svgsvg_element_onhashchange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_set_onhashchange_ffi(
  obj : JsValue,
  onhashchange : JsValue,
) -> Unit = "(obj, onhashchange) => { obj.onhashchange = onhashchange; }"

///|
impl TSVGSVGElement with set_onhashchange(
  self : Self,
  onhashchange : EventHandler,
) -> Unit {
  svgsvg_element_set_onhashchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onhashchange),
  )
}

///|
extern "js" fn svgsvg_element_onlanguagechange_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onlanguagechange"

///|
impl TSVGSVGElement with onlanguagechange(self : Self) -> EventHandler {
  svgsvg_element_onlanguagechange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_set_onlanguagechange_ffi(
  obj : JsValue,
  onlanguagechange : JsValue,
) -> Unit = "(obj, onlanguagechange) => { obj.onlanguagechange = onlanguagechange; }"

///|
impl TSVGSVGElement with set_onlanguagechange(
  self : Self,
  onlanguagechange : EventHandler,
) -> Unit {
  svgsvg_element_set_onlanguagechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onlanguagechange),
  )
}

///|
extern "js" fn svgsvg_element_onmessage_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmessage"

///|
impl TSVGSVGElement with onmessage(self : Self) -> EventHandler {
  svgsvg_element_onmessage_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_set_onmessage_ffi(
  obj : JsValue,
  onmessage : JsValue,
) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

///|
impl TSVGSVGElement with set_onmessage(self : Self, onmessage : EventHandler) -> Unit {
  svgsvg_element_set_onmessage_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmessage),
  )
}

///|
extern "js" fn svgsvg_element_onmessageerror_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmessageerror"

///|
impl TSVGSVGElement with onmessageerror(self : Self) -> EventHandler {
  svgsvg_element_onmessageerror_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_set_onmessageerror_ffi(
  obj : JsValue,
  onmessageerror : JsValue,
) -> Unit = "(obj, onmessageerror) => { obj.onmessageerror = onmessageerror; }"

///|
impl TSVGSVGElement with set_onmessageerror(
  self : Self,
  onmessageerror : EventHandler,
) -> Unit {
  svgsvg_element_set_onmessageerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmessageerror),
  )
}

///|
extern "js" fn svgsvg_element_onoffline_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onoffline"

///|
impl TSVGSVGElement with onoffline(self : Self) -> EventHandler {
  svgsvg_element_onoffline_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_set_onoffline_ffi(
  obj : JsValue,
  onoffline : JsValue,
) -> Unit = "(obj, onoffline) => { obj.onoffline = onoffline; }"

///|
impl TSVGSVGElement with set_onoffline(self : Self, onoffline : EventHandler) -> Unit {
  svgsvg_element_set_onoffline_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onoffline),
  )
}

///|
extern "js" fn svgsvg_element_ononline_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ononline"

///|
impl TSVGSVGElement with ononline(self : Self) -> EventHandler {
  svgsvg_element_ononline_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_set_ononline_ffi(
  obj : JsValue,
  ononline : JsValue,
) -> Unit = "(obj, ononline) => { obj.ononline = ononline; }"

///|
impl TSVGSVGElement with set_ononline(self : Self, ononline : EventHandler) -> Unit {
  svgsvg_element_set_ononline_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ononline),
  )
}

///|
extern "js" fn svgsvg_element_onpagehide_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onpagehide"

///|
impl TSVGSVGElement with onpagehide(self : Self) -> EventHandler {
  svgsvg_element_onpagehide_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_set_onpagehide_ffi(
  obj : JsValue,
  onpagehide : JsValue,
) -> Unit = "(obj, onpagehide) => { obj.onpagehide = onpagehide; }"

///|
impl TSVGSVGElement with set_onpagehide(self : Self, onpagehide : EventHandler) -> Unit {
  svgsvg_element_set_onpagehide_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpagehide),
  )
}

///|
extern "js" fn svgsvg_element_onpagereveal_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onpagereveal"

///|
impl TSVGSVGElement with onpagereveal(self : Self) -> EventHandler {
  svgsvg_element_onpagereveal_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_set_onpagereveal_ffi(
  obj : JsValue,
  onpagereveal : JsValue,
) -> Unit = "(obj, onpagereveal) => { obj.onpagereveal = onpagereveal; }"

///|
impl TSVGSVGElement with set_onpagereveal(
  self : Self,
  onpagereveal : EventHandler,
) -> Unit {
  svgsvg_element_set_onpagereveal_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpagereveal),
  )
}

///|
extern "js" fn svgsvg_element_onpageshow_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onpageshow"

///|
impl TSVGSVGElement with onpageshow(self : Self) -> EventHandler {
  svgsvg_element_onpageshow_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_set_onpageshow_ffi(
  obj : JsValue,
  onpageshow : JsValue,
) -> Unit = "(obj, onpageshow) => { obj.onpageshow = onpageshow; }"

///|
impl TSVGSVGElement with set_onpageshow(self : Self, onpageshow : EventHandler) -> Unit {
  svgsvg_element_set_onpageshow_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpageshow),
  )
}

///|
extern "js" fn svgsvg_element_onpageswap_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onpageswap"

///|
impl TSVGSVGElement with onpageswap(self : Self) -> EventHandler {
  svgsvg_element_onpageswap_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_set_onpageswap_ffi(
  obj : JsValue,
  onpageswap : JsValue,
) -> Unit = "(obj, onpageswap) => { obj.onpageswap = onpageswap; }"

///|
impl TSVGSVGElement with set_onpageswap(self : Self, onpageswap : EventHandler) -> Unit {
  svgsvg_element_set_onpageswap_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpageswap),
  )
}

///|
extern "js" fn svgsvg_element_onpopstate_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onpopstate"

///|
impl TSVGSVGElement with onpopstate(self : Self) -> EventHandler {
  svgsvg_element_onpopstate_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_set_onpopstate_ffi(
  obj : JsValue,
  onpopstate : JsValue,
) -> Unit = "(obj, onpopstate) => { obj.onpopstate = onpopstate; }"

///|
impl TSVGSVGElement with set_onpopstate(self : Self, onpopstate : EventHandler) -> Unit {
  svgsvg_element_set_onpopstate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpopstate),
  )
}

///|
extern "js" fn svgsvg_element_onrejectionhandled_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onrejectionhandled"

///|
impl TSVGSVGElement with onrejectionhandled(self : Self) -> EventHandler {
  svgsvg_element_onrejectionhandled_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_set_onrejectionhandled_ffi(
  obj : JsValue,
  onrejectionhandled : JsValue,
) -> Unit = "(obj, onrejectionhandled) => { obj.onrejectionhandled = onrejectionhandled; }"

///|
impl TSVGSVGElement with set_onrejectionhandled(
  self : Self,
  onrejectionhandled : EventHandler,
) -> Unit {
  svgsvg_element_set_onrejectionhandled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onrejectionhandled),
  )
}

///|
extern "js" fn svgsvg_element_onstorage_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onstorage"

///|
impl TSVGSVGElement with onstorage(self : Self) -> EventHandler {
  svgsvg_element_onstorage_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_set_onstorage_ffi(
  obj : JsValue,
  onstorage : JsValue,
) -> Unit = "(obj, onstorage) => { obj.onstorage = onstorage; }"

///|
impl TSVGSVGElement with set_onstorage(self : Self, onstorage : EventHandler) -> Unit {
  svgsvg_element_set_onstorage_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onstorage),
  )
}

///|
extern "js" fn svgsvg_element_onunhandledrejection_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onunhandledrejection"

///|
impl TSVGSVGElement with onunhandledrejection(self : Self) -> EventHandler {
  svgsvg_element_onunhandledrejection_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_set_onunhandledrejection_ffi(
  obj : JsValue,
  onunhandledrejection : JsValue,
) -> Unit = "(obj, onunhandledrejection) => { obj.onunhandledrejection = onunhandledrejection; }"

///|
impl TSVGSVGElement with set_onunhandledrejection(
  self : Self,
  onunhandledrejection : EventHandler,
) -> Unit {
  svgsvg_element_set_onunhandledrejection_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onunhandledrejection),
  )
}

///|
extern "js" fn svgsvg_element_onunload_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onunload"

///|
impl TSVGSVGElement with onunload(self : Self) -> EventHandler {
  svgsvg_element_onunload_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svgsvg_element_set_onunload_ffi(
  obj : JsValue,
  onunload : JsValue,
) -> Unit = "(obj, onunload) => { obj.onunload = onunload; }"

///|
impl TSVGSVGElement with set_onunload(self : Self, onunload : EventHandler) -> Unit {
  svgsvg_element_set_onunload_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onunload),
  )
}
