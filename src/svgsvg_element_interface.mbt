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
