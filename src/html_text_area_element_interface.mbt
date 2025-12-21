///|
#external
pub type HTMLTextAreaElement

///|
pub impl TJsValue for HTMLTextAreaElement with to_js(self : HTMLTextAreaElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLTextAreaElement] HTMLTextAreaElement::into(
  self : HTMLTextAreaElement,
) -> T = "%identity"

///|
pub impl THTMLTextAreaElement for HTMLTextAreaElement

///|
pub impl THTMLElement for HTMLTextAreaElement

///|
pub impl TElement for HTMLTextAreaElement

///|
pub impl TNode for HTMLTextAreaElement

///|
pub impl TEventTarget for HTMLTextAreaElement

///|
extern "js" fn html_text_area_element_ffi() -> HTMLTextAreaElement = "() => new HTMLTextAreaElement()"

///|
pub fn HTMLTextAreaElement::new() -> HTMLTextAreaElement {
  html_text_area_element_ffi()
}

///|
pub trait THTMLTextAreaElement: THTMLElement {
  check_validity(self : Self) -> Bool = _
  report_validity(self : Self) -> Bool = _
  set_custom_validity(self : Self, error : String) -> Unit = _
  select(self : Self) -> Unit = _
  set_range_text(self : Self, replacement : String) -> Unit = _
  set_range_text_2(
    self : Self,
    replacement : String,
    start : UInt,
    end : UInt,
    selection_mode? : SelectionMode,
  ) -> Unit = _
  set_selection_range(
    self : Self,
    start : UInt,
    end : UInt,
    direction? : String,
  ) -> Unit = _
}

///|
extern "js" fn html_text_area_element_check_validity_ffi(obj : JsValue) -> Bool = "(obj) => obj.checkValidity(obj)"

///|
impl THTMLTextAreaElement with check_validity(self : Self) -> Bool {
  html_text_area_element_check_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_text_area_element_report_validity_ffi(
  obj : JsValue,
) -> Bool = "(obj) => obj.reportValidity(obj)"

///|
impl THTMLTextAreaElement with report_validity(self : Self) -> Bool {
  html_text_area_element_report_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_text_area_element_set_custom_validity_ffi(
  obj : JsValue,
  error : JsValue,
) -> Unit = "(obj, error) => obj.setCustomValidity(obj, error)"

///|
impl THTMLTextAreaElement with set_custom_validity(self : Self, error : String) -> Unit {
  html_text_area_element_set_custom_validity_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(error),
  )
}

///|
extern "js" fn html_text_area_element_select_ffi(obj : JsValue) -> Unit = "(obj) => obj.select(obj)"

///|
impl THTMLTextAreaElement with select(self : Self) -> Unit {
  html_text_area_element_select_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_text_area_element_set_range_text_ffi(
  obj : JsValue,
  replacement : JsValue,
) -> Unit = "(obj, replacement) => obj.setRangeText(obj, replacement)"

///|
impl THTMLTextAreaElement with set_range_text(self : Self, replacement : String) -> Unit {
  html_text_area_element_set_range_text_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(replacement),
  )
}

///|
extern "js" fn html_text_area_element_set_range_text_2_ffi(
  obj : JsValue,
  replacement : JsValue,
  start : JsValue,
  end : JsValue,
  selection_mode : JsValue,
) -> Unit = "(obj, replacement, start, end, selection_mode) => obj.setRangeText_2(obj, replacement, start, end, selection_mode)"

///|
impl THTMLTextAreaElement with set_range_text_2(
  self : Self,
  replacement : String,
  start : UInt,
  end : UInt,
  selection_mode? : SelectionMode = SelectionMode::Preserve,
) -> Unit {
  html_text_area_element_set_range_text_2_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(replacement),
    TJsValue::to_js(start),
    TJsValue::to_js(end),
    TJsValue::to_js(selection_mode),
  )
}

///|
extern "js" fn html_text_area_element_set_selection_range_ffi(
  obj : JsValue,
  start : JsValue,
  end : JsValue,
  direction : JsValue,
) -> Unit = "(obj, start, end, direction) => obj.setSelectionRange(obj, start, end, direction)"

///|
impl THTMLTextAreaElement with set_selection_range(
  self : Self,
  start : UInt,
  end : UInt,
  direction? : String,
) -> Unit {
  html_text_area_element_set_selection_range_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(start),
    TJsValue::to_js(end),
    opt_to_js(direction),
  )
}
