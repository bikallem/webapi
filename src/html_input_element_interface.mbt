///|
#external
pub type HTMLInputElement

///|
pub impl TJsValue for HTMLInputElement with to_js(self : HTMLInputElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLInputElement] HTMLInputElement::into(
  self : HTMLInputElement,
) -> T = "%identity"

///|
pub impl THTMLInputElement for HTMLInputElement

///|
pub impl THTMLElement for HTMLInputElement

///|
pub impl TElement for HTMLInputElement

///|
pub impl TNode for HTMLInputElement

///|
pub impl TEventTarget for HTMLInputElement

///|
extern "js" fn html_input_element_ffi() -> HTMLInputElement = "() => new HTMLInputElement()"

///|
pub fn HTMLInputElement::new() -> HTMLInputElement {
  html_input_element_ffi()
}

///|
pub trait THTMLInputElement: THTMLElement {
  step_up(self : Self, n? : Int) -> Unit = _
  step_down(self : Self, n? : Int) -> Unit = _
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
  show_picker(self : Self) -> Unit = _
}

///|
extern "js" fn html_input_element_step_up_ffi(
  obj : JsValue,
  n : JsValue,
) -> Unit = "(obj, n) => obj.stepUp(obj, n)"

///|
impl THTMLInputElement with step_up(self : Self, n? : Int = 1) -> Unit {
  html_input_element_step_up_ffi(TJsValue::to_js(self), TJsValue::to_js(n))
}

///|
extern "js" fn html_input_element_step_down_ffi(
  obj : JsValue,
  n : JsValue,
) -> Unit = "(obj, n) => obj.stepDown(obj, n)"

///|
impl THTMLInputElement with step_down(self : Self, n? : Int = 1) -> Unit {
  html_input_element_step_down_ffi(TJsValue::to_js(self), TJsValue::to_js(n))
}

///|
extern "js" fn html_input_element_check_validity_ffi(obj : JsValue) -> Bool = "(obj) => obj.checkValidity(obj)"

///|
impl THTMLInputElement with check_validity(self : Self) -> Bool {
  html_input_element_check_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_report_validity_ffi(obj : JsValue) -> Bool = "(obj) => obj.reportValidity(obj)"

///|
impl THTMLInputElement with report_validity(self : Self) -> Bool {
  html_input_element_report_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_custom_validity_ffi(
  obj : JsValue,
  error : JsValue,
) -> Unit = "(obj, error) => obj.setCustomValidity(obj, error)"

///|
impl THTMLInputElement with set_custom_validity(self : Self, error : String) -> Unit {
  html_input_element_set_custom_validity_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(error),
  )
}

///|
extern "js" fn html_input_element_select_ffi(obj : JsValue) -> Unit = "(obj) => obj.select(obj)"

///|
impl THTMLInputElement with select(self : Self) -> Unit {
  html_input_element_select_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_range_text_ffi(
  obj : JsValue,
  replacement : JsValue,
) -> Unit = "(obj, replacement) => obj.setRangeText(obj, replacement)"

///|
impl THTMLInputElement with set_range_text(self : Self, replacement : String) -> Unit {
  html_input_element_set_range_text_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(replacement),
  )
}

///|
extern "js" fn html_input_element_set_range_text_2_ffi(
  obj : JsValue,
  replacement : JsValue,
  start : JsValue,
  end : JsValue,
  selection_mode : JsValue,
) -> Unit = "(obj, replacement, start, end, selection_mode) => obj.setRangeText_2(obj, replacement, start, end, selection_mode)"

///|
impl THTMLInputElement with set_range_text_2(
  self : Self,
  replacement : String,
  start : UInt,
  end : UInt,
  selection_mode? : SelectionMode = SelectionMode::Preserve,
) -> Unit {
  html_input_element_set_range_text_2_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(replacement),
    TJsValue::to_js(start),
    TJsValue::to_js(end),
    TJsValue::to_js(selection_mode),
  )
}

///|
extern "js" fn html_input_element_set_selection_range_ffi(
  obj : JsValue,
  start : JsValue,
  end : JsValue,
  direction : JsValue,
) -> Unit = "(obj, start, end, direction) => obj.setSelectionRange(obj, start, end, direction)"

///|
impl THTMLInputElement with set_selection_range(
  self : Self,
  start : UInt,
  end : UInt,
  direction? : String,
) -> Unit {
  html_input_element_set_selection_range_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(start),
    TJsValue::to_js(end),
    opt_to_js(direction),
  )
}

///|
extern "js" fn html_input_element_show_picker_ffi(obj : JsValue) -> Unit = "(obj) => obj.showPicker(obj)"

///|
impl THTMLInputElement with show_picker(self : Self) -> Unit {
  html_input_element_show_picker_ffi(TJsValue::to_js(self))
}
