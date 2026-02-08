extern "js" fn svgsvg_element_x_ffi(obj: JsValue) -> JsValue = "(obj) => obj.x"

extern "js" fn svgsvg_element_y_ffi(obj: JsValue) -> JsValue = "(obj) => obj.y"

extern "js" fn svgsvg_element_width_ffi(obj: JsValue) -> JsValue = "(obj) => obj.width"

extern "js" fn svgsvg_element_height_ffi(obj: JsValue) -> JsValue = "(obj) => obj.height"

extern "js" fn svgsvg_element_current_scale_ffi(obj: JsValue) -> JsValue = "(obj) => obj.currentScale"

extern "js" fn svgsvg_element_set_current_scale_ffi(obj: JsValue, current_scale: JsValue) -> Unit = "(obj, currentScale) => { obj.currentScale = currentScale; }"

extern "js" fn svgsvg_element_current_translate_ffi(obj: JsValue) -> JsValue = "(obj) => obj.currentTranslate"

extern "js" fn svgsvg_element_get_intersection_list_ffi(obj: JsValue, rect: JsValue, reference_element: JsValue) -> JsValue = "(obj, rect, reference_element) => obj.getIntersectionList(rect, reference_element)"

extern "js" fn svgsvg_element_get_enclosure_list_ffi(obj: JsValue, rect: JsValue, reference_element: JsValue) -> JsValue = "(obj, rect, reference_element) => obj.getEnclosureList(rect, reference_element)"

extern "js" fn svgsvg_element_check_intersection_ffi(obj: JsValue, element: JsValue, rect: JsValue) -> JsValue = "(obj, element, rect) => obj.checkIntersection(element, rect)"

extern "js" fn svgsvg_element_check_enclosure_ffi(obj: JsValue, element: JsValue, rect: JsValue) -> JsValue = "(obj, element, rect) => obj.checkEnclosure(element, rect)"

extern "js" fn svgsvg_element_deselect_all_ffi(obj: JsValue) -> Unit = "(obj) => obj.deselectAll()"

extern "js" fn svgsvg_element_create_svg_number_ffi(obj: JsValue) -> JsValue = "(obj) => obj.createSVGNumber()"

extern "js" fn svgsvg_element_create_svg_length_ffi(obj: JsValue) -> JsValue = "(obj) => obj.createSVGLength()"

extern "js" fn svgsvg_element_create_svg_angle_ffi(obj: JsValue) -> JsValue = "(obj) => obj.createSVGAngle()"

extern "js" fn svgsvg_element_create_svg_point_ffi(obj: JsValue) -> JsValue = "(obj) => obj.createSVGPoint()"

extern "js" fn svgsvg_element_create_svg_matrix_ffi(obj: JsValue) -> JsValue = "(obj) => obj.createSVGMatrix()"

extern "js" fn svgsvg_element_create_svg_rect_ffi(obj: JsValue) -> JsValue = "(obj) => obj.createSVGRect()"

extern "js" fn svgsvg_element_create_svg_transform_ffi(obj: JsValue) -> JsValue = "(obj) => obj.createSVGTransform()"

extern "js" fn svgsvg_element_create_svg_transform_from_matrix_ffi(obj: JsValue, matrix: JsValue) -> JsValue = "(obj, matrix) => obj.createSVGTransformFromMatrix(matrix)"

extern "js" fn svgsvg_element_get_element_by_id_ffi(obj: JsValue, element_id: JsValue) -> JsValue = "(obj, element_id) => obj.getElementById(element_id)"

extern "js" fn svgsvg_element_suspend_redraw_ffi(obj: JsValue, max_wait_milliseconds: JsValue) -> JsValue = "(obj, max_wait_milliseconds) => obj.suspendRedraw(max_wait_milliseconds)"

extern "js" fn svgsvg_element_unsuspend_redraw_ffi(obj: JsValue, suspend_handle_id: JsValue) -> Unit = "(obj, suspend_handle_id) => obj.unsuspendRedraw(suspend_handle_id)"

extern "js" fn svgsvg_element_unsuspend_redraw_all_ffi(obj: JsValue) -> Unit = "(obj) => obj.unsuspendRedrawAll()"

extern "js" fn svgsvg_element_force_redraw_ffi(obj: JsValue) -> Unit = "(obj) => obj.forceRedraw()"

extern "js" fn svgsvg_element_view_box_ffi(obj: JsValue) -> JsValue = "(obj) => obj.viewBox"

extern "js" fn svgsvg_element_preserve_aspect_ratio_ffi(obj: JsValue) -> JsValue = "(obj) => obj.preserveAspectRatio"

extern "js" fn svgsvg_element_onafterprint_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onafterprint"

extern "js" fn svgsvg_element_set_onafterprint_ffi(obj: JsValue, onafterprint: JsValue) -> Unit = "(obj, onafterprint) => { obj.onafterprint = onafterprint; }"

extern "js" fn svgsvg_element_onbeforeprint_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onbeforeprint"

extern "js" fn svgsvg_element_set_onbeforeprint_ffi(obj: JsValue, onbeforeprint: JsValue) -> Unit = "(obj, onbeforeprint) => { obj.onbeforeprint = onbeforeprint; }"

extern "js" fn svgsvg_element_onbeforeunload_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onbeforeunload"

extern "js" fn svgsvg_element_set_onbeforeunload_ffi(obj: JsValue, onbeforeunload: JsValue) -> Unit = "(obj, onbeforeunload) => { obj.onbeforeunload = onbeforeunload; }"

extern "js" fn svgsvg_element_onhashchange_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onhashchange"

extern "js" fn svgsvg_element_set_onhashchange_ffi(obj: JsValue, onhashchange: JsValue) -> Unit = "(obj, onhashchange) => { obj.onhashchange = onhashchange; }"

extern "js" fn svgsvg_element_onlanguagechange_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onlanguagechange"

extern "js" fn svgsvg_element_set_onlanguagechange_ffi(obj: JsValue, onlanguagechange: JsValue) -> Unit = "(obj, onlanguagechange) => { obj.onlanguagechange = onlanguagechange; }"

extern "js" fn svgsvg_element_onmessage_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onmessage"

extern "js" fn svgsvg_element_set_onmessage_ffi(obj: JsValue, onmessage: JsValue) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

extern "js" fn svgsvg_element_onmessageerror_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onmessageerror"

extern "js" fn svgsvg_element_set_onmessageerror_ffi(obj: JsValue, onmessageerror: JsValue) -> Unit = "(obj, onmessageerror) => { obj.onmessageerror = onmessageerror; }"

extern "js" fn svgsvg_element_onoffline_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onoffline"

extern "js" fn svgsvg_element_set_onoffline_ffi(obj: JsValue, onoffline: JsValue) -> Unit = "(obj, onoffline) => { obj.onoffline = onoffline; }"

extern "js" fn svgsvg_element_ononline_ffi(obj: JsValue) -> JsValue = "(obj) => obj.ononline"

extern "js" fn svgsvg_element_set_ononline_ffi(obj: JsValue, ononline: JsValue) -> Unit = "(obj, ononline) => { obj.ononline = ononline; }"

extern "js" fn svgsvg_element_onpagehide_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onpagehide"

extern "js" fn svgsvg_element_set_onpagehide_ffi(obj: JsValue, onpagehide: JsValue) -> Unit = "(obj, onpagehide) => { obj.onpagehide = onpagehide; }"

extern "js" fn svgsvg_element_onpagereveal_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onpagereveal"

extern "js" fn svgsvg_element_set_onpagereveal_ffi(obj: JsValue, onpagereveal: JsValue) -> Unit = "(obj, onpagereveal) => { obj.onpagereveal = onpagereveal; }"

extern "js" fn svgsvg_element_onpageshow_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onpageshow"

extern "js" fn svgsvg_element_set_onpageshow_ffi(obj: JsValue, onpageshow: JsValue) -> Unit = "(obj, onpageshow) => { obj.onpageshow = onpageshow; }"

extern "js" fn svgsvg_element_onpageswap_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onpageswap"

extern "js" fn svgsvg_element_set_onpageswap_ffi(obj: JsValue, onpageswap: JsValue) -> Unit = "(obj, onpageswap) => { obj.onpageswap = onpageswap; }"

extern "js" fn svgsvg_element_onpopstate_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onpopstate"

extern "js" fn svgsvg_element_set_onpopstate_ffi(obj: JsValue, onpopstate: JsValue) -> Unit = "(obj, onpopstate) => { obj.onpopstate = onpopstate; }"

extern "js" fn svgsvg_element_onrejectionhandled_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onrejectionhandled"

extern "js" fn svgsvg_element_set_onrejectionhandled_ffi(obj: JsValue, onrejectionhandled: JsValue) -> Unit = "(obj, onrejectionhandled) => { obj.onrejectionhandled = onrejectionhandled; }"

extern "js" fn svgsvg_element_onstorage_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onstorage"

extern "js" fn svgsvg_element_set_onstorage_ffi(obj: JsValue, onstorage: JsValue) -> Unit = "(obj, onstorage) => { obj.onstorage = onstorage; }"

extern "js" fn svgsvg_element_onunhandledrejection_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onunhandledrejection"

extern "js" fn svgsvg_element_set_onunhandledrejection_ffi(obj: JsValue, onunhandledrejection: JsValue) -> Unit = "(obj, onunhandledrejection) => { obj.onunhandledrejection = onunhandledrejection; }"

extern "js" fn svgsvg_element_onunload_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onunload"

extern "js" fn svgsvg_element_set_onunload_ffi(obj: JsValue, onunload: JsValue) -> Unit = "(obj, onunload) => { obj.onunload = onunload; }"