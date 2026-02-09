///|
extern "js" fn svgsvg_element_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.x"

///|
fn svgsvg_element_x_ffi(obj : JsValue) -> SVGAnimatedLength {
  svgsvg_element_x_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.y"

///|
fn svgsvg_element_y_ffi(obj : JsValue) -> SVGAnimatedLength {
  svgsvg_element_y_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
fn svgsvg_element_width_ffi(obj : JsValue) -> SVGAnimatedLength {
  svgsvg_element_width_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
fn svgsvg_element_height_ffi(obj : JsValue) -> SVGAnimatedLength {
  svgsvg_element_height_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_current_scale_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.currentScale"

///|
fn svgsvg_element_current_scale_ffi(obj : JsValue) -> Float {
  svgsvg_element_current_scale_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_set_current_scale_ffi(
  obj : JsValue,
  current_scale : JsValue,
) -> Unit = "(obj, currentScale) => { obj.currentScale = currentScale; }"

///|
extern "js" fn svgsvg_element_current_translate_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.currentTranslate"

///|
fn svgsvg_element_current_translate_ffi(obj : JsValue) -> DOMPointReadOnly {
  svgsvg_element_current_translate_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_get_intersection_list_ffi_js(
  obj : JsValue,
  rect : JsValue,
  reference_element : JsValue,
) -> JsValue = "(obj, rect, reference_element) => obj.getIntersectionList(rect, reference_element)"

///|
fn svgsvg_element_get_intersection_list_ffi(
  obj : JsValue,
  rect : JsValue,
  reference_element : JsValue,
) -> NodeList {
  svgsvg_element_get_intersection_list_ffi_js(obj, rect, reference_element).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_get_enclosure_list_ffi_js(
  obj : JsValue,
  rect : JsValue,
  reference_element : JsValue,
) -> JsValue = "(obj, rect, reference_element) => obj.getEnclosureList(rect, reference_element)"

///|
fn svgsvg_element_get_enclosure_list_ffi(
  obj : JsValue,
  rect : JsValue,
  reference_element : JsValue,
) -> NodeList {
  svgsvg_element_get_enclosure_list_ffi_js(obj, rect, reference_element).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_check_intersection_ffi_js(
  obj : JsValue,
  element : JsValue,
  rect : JsValue,
) -> JsValue = "(obj, element, rect) => obj.checkIntersection(element, rect)"

///|
fn svgsvg_element_check_intersection_ffi(
  obj : JsValue,
  element : JsValue,
  rect : JsValue,
) -> Bool {
  svgsvg_element_check_intersection_ffi_js(obj, element, rect).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_check_enclosure_ffi_js(
  obj : JsValue,
  element : JsValue,
  rect : JsValue,
) -> JsValue = "(obj, element, rect) => obj.checkEnclosure(element, rect)"

///|
fn svgsvg_element_check_enclosure_ffi(
  obj : JsValue,
  element : JsValue,
  rect : JsValue,
) -> Bool {
  svgsvg_element_check_enclosure_ffi_js(obj, element, rect).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_deselect_all_ffi(obj : JsValue) -> Unit = "(obj) => obj.deselectAll()"

///|
extern "js" fn svgsvg_element_create_svg_number_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.createSVGNumber()"

///|
fn svgsvg_element_create_svg_number_ffi(obj : JsValue) -> SVGNumber {
  svgsvg_element_create_svg_number_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_create_svg_length_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.createSVGLength()"

///|
fn svgsvg_element_create_svg_length_ffi(obj : JsValue) -> SVGLength {
  svgsvg_element_create_svg_length_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_create_svg_angle_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.createSVGAngle()"

///|
fn svgsvg_element_create_svg_angle_ffi(obj : JsValue) -> SVGAngle {
  svgsvg_element_create_svg_angle_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_create_svg_point_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.createSVGPoint()"

///|
fn svgsvg_element_create_svg_point_ffi(obj : JsValue) -> DOMPoint {
  svgsvg_element_create_svg_point_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_create_svg_matrix_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.createSVGMatrix()"

///|
fn svgsvg_element_create_svg_matrix_ffi(obj : JsValue) -> DOMMatrix {
  svgsvg_element_create_svg_matrix_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_create_svg_rect_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.createSVGRect()"

///|
fn svgsvg_element_create_svg_rect_ffi(obj : JsValue) -> DOMRect {
  svgsvg_element_create_svg_rect_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_create_svg_transform_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.createSVGTransform()"

///|
fn svgsvg_element_create_svg_transform_ffi(obj : JsValue) -> SVGTransform {
  svgsvg_element_create_svg_transform_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_create_svg_transform_from_matrix_ffi_js(
  obj : JsValue,
  matrix : JsValue,
) -> JsValue = "(obj, matrix) => obj.createSVGTransformFromMatrix(matrix)"

///|
fn svgsvg_element_create_svg_transform_from_matrix_ffi(
  obj : JsValue,
  matrix : JsValue,
) -> SVGTransform {
  svgsvg_element_create_svg_transform_from_matrix_ffi_js(obj, matrix).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_get_element_by_id_ffi(
  obj : JsValue,
  element_id : JsValue,
) -> JsValue = "(obj, element_id) => obj.getElementById(element_id)"

///|
extern "js" fn svgsvg_element_suspend_redraw_ffi_js(
  obj : JsValue,
  max_wait_milliseconds : JsValue,
) -> JsValue = "(obj, max_wait_milliseconds) => obj.suspendRedraw(max_wait_milliseconds)"

///|
fn svgsvg_element_suspend_redraw_ffi(
  obj : JsValue,
  max_wait_milliseconds : JsValue,
) -> UInt {
  svgsvg_element_suspend_redraw_ffi_js(obj, max_wait_milliseconds).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_unsuspend_redraw_ffi(
  obj : JsValue,
  suspend_handle_id : JsValue,
) -> Unit = "(obj, suspend_handle_id) => obj.unsuspendRedraw(suspend_handle_id)"

///|
extern "js" fn svgsvg_element_unsuspend_redraw_all_ffi(obj : JsValue) -> Unit = "(obj) => obj.unsuspendRedrawAll()"

///|
extern "js" fn svgsvg_element_force_redraw_ffi(obj : JsValue) -> Unit = "(obj) => obj.forceRedraw()"

///|
extern "js" fn svgsvg_element_view_box_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.viewBox"

///|
fn svgsvg_element_view_box_ffi(obj : JsValue) -> SVGAnimatedRect {
  svgsvg_element_view_box_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_preserve_aspect_ratio_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.preserveAspectRatio"

///|
fn svgsvg_element_preserve_aspect_ratio_ffi(
  obj : JsValue,
) -> SVGAnimatedPreserveAspectRatio {
  svgsvg_element_preserve_aspect_ratio_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_onafterprint_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onafterprint"

///|
fn svgsvg_element_onafterprint_ffi(obj : JsValue) -> EventHandler {
  svgsvg_element_onafterprint_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_set_onafterprint_ffi(
  obj : JsValue,
  onafterprint : JsValue,
) -> Unit = "(obj, onafterprint) => { obj.onafterprint = onafterprint; }"

///|
extern "js" fn svgsvg_element_onbeforeprint_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforeprint"

///|
fn svgsvg_element_onbeforeprint_ffi(obj : JsValue) -> EventHandler {
  svgsvg_element_onbeforeprint_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_set_onbeforeprint_ffi(
  obj : JsValue,
  onbeforeprint : JsValue,
) -> Unit = "(obj, onbeforeprint) => { obj.onbeforeprint = onbeforeprint; }"

///|
extern "js" fn svgsvg_element_onbeforeunload_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforeunload"

///|
fn svgsvg_element_onbeforeunload_ffi(
  obj : JsValue,
) -> OnBeforeUnloadEventHandler {
  svgsvg_element_onbeforeunload_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_set_onbeforeunload_ffi(
  obj : JsValue,
  onbeforeunload : JsValue,
) -> Unit = "(obj, onbeforeunload) => { obj.onbeforeunload = onbeforeunload; }"

///|
extern "js" fn svgsvg_element_onhashchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onhashchange"

///|
fn svgsvg_element_onhashchange_ffi(obj : JsValue) -> EventHandler {
  svgsvg_element_onhashchange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_set_onhashchange_ffi(
  obj : JsValue,
  onhashchange : JsValue,
) -> Unit = "(obj, onhashchange) => { obj.onhashchange = onhashchange; }"

///|
extern "js" fn svgsvg_element_onlanguagechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onlanguagechange"

///|
fn svgsvg_element_onlanguagechange_ffi(obj : JsValue) -> EventHandler {
  svgsvg_element_onlanguagechange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_set_onlanguagechange_ffi(
  obj : JsValue,
  onlanguagechange : JsValue,
) -> Unit = "(obj, onlanguagechange) => { obj.onlanguagechange = onlanguagechange; }"

///|
extern "js" fn svgsvg_element_onmessage_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmessage"

///|
fn svgsvg_element_onmessage_ffi(obj : JsValue) -> EventHandler {
  svgsvg_element_onmessage_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_set_onmessage_ffi(
  obj : JsValue,
  onmessage : JsValue,
) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

///|
extern "js" fn svgsvg_element_onmessageerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmessageerror"

///|
fn svgsvg_element_onmessageerror_ffi(obj : JsValue) -> EventHandler {
  svgsvg_element_onmessageerror_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_set_onmessageerror_ffi(
  obj : JsValue,
  onmessageerror : JsValue,
) -> Unit = "(obj, onmessageerror) => { obj.onmessageerror = onmessageerror; }"

///|
extern "js" fn svgsvg_element_onoffline_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onoffline"

///|
fn svgsvg_element_onoffline_ffi(obj : JsValue) -> EventHandler {
  svgsvg_element_onoffline_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_set_onoffline_ffi(
  obj : JsValue,
  onoffline : JsValue,
) -> Unit = "(obj, onoffline) => { obj.onoffline = onoffline; }"

///|
extern "js" fn svgsvg_element_ononline_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ononline"

///|
fn svgsvg_element_ononline_ffi(obj : JsValue) -> EventHandler {
  svgsvg_element_ononline_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_set_ononline_ffi(
  obj : JsValue,
  ononline : JsValue,
) -> Unit = "(obj, ononline) => { obj.ononline = ononline; }"

///|
extern "js" fn svgsvg_element_onpagehide_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpagehide"

///|
fn svgsvg_element_onpagehide_ffi(obj : JsValue) -> EventHandler {
  svgsvg_element_onpagehide_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_set_onpagehide_ffi(
  obj : JsValue,
  onpagehide : JsValue,
) -> Unit = "(obj, onpagehide) => { obj.onpagehide = onpagehide; }"

///|
extern "js" fn svgsvg_element_onpagereveal_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpagereveal"

///|
fn svgsvg_element_onpagereveal_ffi(obj : JsValue) -> EventHandler {
  svgsvg_element_onpagereveal_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_set_onpagereveal_ffi(
  obj : JsValue,
  onpagereveal : JsValue,
) -> Unit = "(obj, onpagereveal) => { obj.onpagereveal = onpagereveal; }"

///|
extern "js" fn svgsvg_element_onpageshow_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpageshow"

///|
fn svgsvg_element_onpageshow_ffi(obj : JsValue) -> EventHandler {
  svgsvg_element_onpageshow_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_set_onpageshow_ffi(
  obj : JsValue,
  onpageshow : JsValue,
) -> Unit = "(obj, onpageshow) => { obj.onpageshow = onpageshow; }"

///|
extern "js" fn svgsvg_element_onpageswap_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpageswap"

///|
fn svgsvg_element_onpageswap_ffi(obj : JsValue) -> EventHandler {
  svgsvg_element_onpageswap_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_set_onpageswap_ffi(
  obj : JsValue,
  onpageswap : JsValue,
) -> Unit = "(obj, onpageswap) => { obj.onpageswap = onpageswap; }"

///|
extern "js" fn svgsvg_element_onpopstate_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpopstate"

///|
fn svgsvg_element_onpopstate_ffi(obj : JsValue) -> EventHandler {
  svgsvg_element_onpopstate_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_set_onpopstate_ffi(
  obj : JsValue,
  onpopstate : JsValue,
) -> Unit = "(obj, onpopstate) => { obj.onpopstate = onpopstate; }"

///|
extern "js" fn svgsvg_element_onrejectionhandled_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onrejectionhandled"

///|
fn svgsvg_element_onrejectionhandled_ffi(obj : JsValue) -> EventHandler {
  svgsvg_element_onrejectionhandled_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_set_onrejectionhandled_ffi(
  obj : JsValue,
  onrejectionhandled : JsValue,
) -> Unit = "(obj, onrejectionhandled) => { obj.onrejectionhandled = onrejectionhandled; }"

///|
extern "js" fn svgsvg_element_onstorage_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onstorage"

///|
fn svgsvg_element_onstorage_ffi(obj : JsValue) -> EventHandler {
  svgsvg_element_onstorage_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_set_onstorage_ffi(
  obj : JsValue,
  onstorage : JsValue,
) -> Unit = "(obj, onstorage) => { obj.onstorage = onstorage; }"

///|
extern "js" fn svgsvg_element_onunhandledrejection_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onunhandledrejection"

///|
fn svgsvg_element_onunhandledrejection_ffi(obj : JsValue) -> EventHandler {
  svgsvg_element_onunhandledrejection_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_set_onunhandledrejection_ffi(
  obj : JsValue,
  onunhandledrejection : JsValue,
) -> Unit = "(obj, onunhandledrejection) => { obj.onunhandledrejection = onunhandledrejection; }"

///|
extern "js" fn svgsvg_element_onunload_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onunload"

///|
fn svgsvg_element_onunload_ffi(obj : JsValue) -> EventHandler {
  svgsvg_element_onunload_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svgsvg_element_set_onunload_ffi(
  obj : JsValue,
  onunload : JsValue,
) -> Unit = "(obj, onunload) => { obj.onunload = onunload; }"
