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
extern "js" fn html_text_area_element_new_ffi() -> HTMLTextAreaElement = "() => new HTMLTextAreaElement()"

///|
pub fn HTMLTextAreaElement::new() -> HTMLTextAreaElement {
  html_text_area_element_new_ffi()
}

///|
pub trait THTMLTextAreaElement: THTMLElement {
  autocomplete(self : Self) -> String = _
  set_autocomplete(self : Self, autocomplete : String) -> Unit = _
  cols(self : Self) -> UInt = _
  set_cols(self : Self, cols : UInt) -> Unit = _
  dir_name(self : Self) -> String = _
  set_dir_name(self : Self, dir_name : String) -> Unit = _
  disabled(self : Self) -> Bool = _
  set_disabled(self : Self, disabled : Bool) -> Unit = _
  form(self : Self) -> HTMLFormElement = _
  max_length(self : Self) -> Int = _
  set_max_length(self : Self, max_length : Int) -> Unit = _
  min_length(self : Self) -> Int = _
  set_min_length(self : Self, min_length : Int) -> Unit = _
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  placeholder(self : Self) -> String = _
  set_placeholder(self : Self, placeholder : String) -> Unit = _
  read_only(self : Self) -> Bool = _
  set_read_only(self : Self, read_only : Bool) -> Unit = _
  required(self : Self) -> Bool = _
  set_required(self : Self, required : Bool) -> Unit = _
  rows(self : Self) -> UInt = _
  set_rows(self : Self, rows : UInt) -> Unit = _
  wrap(self : Self) -> String = _
  set_wrap(self : Self, wrap : String) -> Unit = _
  type_(self : Self) -> String = _
  default_value(self : Self) -> String = _
  set_default_value(self : Self, default_value : String) -> Unit = _
  value(self : Self) -> String = _
  set_value(self : Self, value : String) -> Unit = _
  text_length(self : Self) -> UInt = _
  will_validate(self : Self) -> Bool = _
  validity(self : Self) -> ValidityState = _
  validation_message(self : Self) -> String = _
  check_validity(self : Self) -> Bool = _
  report_validity(self : Self) -> Bool = _
  set_custom_validity(self : Self, error : String) -> Unit = _
  labels(self : Self) -> NodeList = _
  select(self : Self) -> Unit = _
  selection_start(self : Self) -> UInt = _
  set_selection_start(self : Self, selection_start : UInt) -> Unit = _
  selection_end(self : Self) -> UInt = _
  set_selection_end(self : Self, selection_end : UInt) -> Unit = _
  selection_direction(self : Self) -> String = _
  set_selection_direction(self : Self, selection_direction : String) -> Unit = _
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
extern "js" fn html_text_area_element_autocomplete_ffi(obj : JsValue) -> String = "(obj) => obj.autocomplete"

///|
impl THTMLTextAreaElement with autocomplete(self : Self) -> String {
  html_text_area_element_autocomplete_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_text_area_element_set_autocomplete_ffi(
  obj : JsValue,
  autocomplete : JsValue,
) -> Unit = "(obj, autocomplete) => { obj.autocomplete = autocomplete; }"

///|
impl THTMLTextAreaElement with set_autocomplete(
  self : Self,
  autocomplete : String,
) -> Unit {
  html_text_area_element_set_autocomplete_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(autocomplete),
  )
}

///|
extern "js" fn html_text_area_element_cols_ffi(obj : JsValue) -> UInt = "(obj) => obj.cols"

///|
impl THTMLTextAreaElement with cols(self : Self) -> UInt {
  html_text_area_element_cols_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_text_area_element_set_cols_ffi(
  obj : JsValue,
  cols : JsValue,
) -> Unit = "(obj, cols) => { obj.cols = cols; }"

///|
impl THTMLTextAreaElement with set_cols(self : Self, cols : UInt) -> Unit {
  html_text_area_element_set_cols_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(cols),
  )
}

///|
extern "js" fn html_text_area_element_dir_name_ffi(obj : JsValue) -> String = "(obj) => obj.dirName"

///|
impl THTMLTextAreaElement with dir_name(self : Self) -> String {
  html_text_area_element_dir_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_text_area_element_set_dir_name_ffi(
  obj : JsValue,
  dir_name : JsValue,
) -> Unit = "(obj, dirName) => { obj.dirName = dirName; }"

///|
impl THTMLTextAreaElement with set_dir_name(self : Self, dir_name : String) -> Unit {
  html_text_area_element_set_dir_name_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(dir_name),
  )
}

///|
extern "js" fn html_text_area_element_disabled_ffi(obj : JsValue) -> Bool = "(obj) => obj.disabled"

///|
impl THTMLTextAreaElement with disabled(self : Self) -> Bool {
  html_text_area_element_disabled_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_text_area_element_set_disabled_ffi(
  obj : JsValue,
  disabled : JsValue,
) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

///|
impl THTMLTextAreaElement with set_disabled(self : Self, disabled : Bool) -> Unit {
  html_text_area_element_set_disabled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(disabled),
  )
}

///|
extern "js" fn html_text_area_element_form_ffi(
  obj : JsValue,
) -> HTMLFormElement = "(obj) => obj.form"

///|
impl THTMLTextAreaElement with form(self : Self) -> HTMLFormElement {
  html_text_area_element_form_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_text_area_element_max_length_ffi(obj : JsValue) -> Int = "(obj) => obj.maxLength"

///|
impl THTMLTextAreaElement with max_length(self : Self) -> Int {
  html_text_area_element_max_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_text_area_element_set_max_length_ffi(
  obj : JsValue,
  max_length : JsValue,
) -> Unit = "(obj, maxLength) => { obj.maxLength = maxLength; }"

///|
impl THTMLTextAreaElement with set_max_length(self : Self, max_length : Int) -> Unit {
  html_text_area_element_set_max_length_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(max_length),
  )
}

///|
extern "js" fn html_text_area_element_min_length_ffi(obj : JsValue) -> Int = "(obj) => obj.minLength"

///|
impl THTMLTextAreaElement with min_length(self : Self) -> Int {
  html_text_area_element_min_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_text_area_element_set_min_length_ffi(
  obj : JsValue,
  min_length : JsValue,
) -> Unit = "(obj, minLength) => { obj.minLength = minLength; }"

///|
impl THTMLTextAreaElement with set_min_length(self : Self, min_length : Int) -> Unit {
  html_text_area_element_set_min_length_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(min_length),
  )
}

///|
extern "js" fn html_text_area_element_name_ffi(obj : JsValue) -> String = "(obj) => obj.name"

///|
impl THTMLTextAreaElement with name(self : Self) -> String {
  html_text_area_element_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_text_area_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
impl THTMLTextAreaElement with set_name(self : Self, name : String) -> Unit {
  html_text_area_element_set_name_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
  )
}

///|
extern "js" fn html_text_area_element_placeholder_ffi(obj : JsValue) -> String = "(obj) => obj.placeholder"

///|
impl THTMLTextAreaElement with placeholder(self : Self) -> String {
  html_text_area_element_placeholder_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_text_area_element_set_placeholder_ffi(
  obj : JsValue,
  placeholder : JsValue,
) -> Unit = "(obj, placeholder) => { obj.placeholder = placeholder; }"

///|
impl THTMLTextAreaElement with set_placeholder(
  self : Self,
  placeholder : String,
) -> Unit {
  html_text_area_element_set_placeholder_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(placeholder),
  )
}

///|
extern "js" fn html_text_area_element_read_only_ffi(obj : JsValue) -> Bool = "(obj) => obj.readOnly"

///|
impl THTMLTextAreaElement with read_only(self : Self) -> Bool {
  html_text_area_element_read_only_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_text_area_element_set_read_only_ffi(
  obj : JsValue,
  read_only : JsValue,
) -> Unit = "(obj, readOnly) => { obj.readOnly = readOnly; }"

///|
impl THTMLTextAreaElement with set_read_only(self : Self, read_only : Bool) -> Unit {
  html_text_area_element_set_read_only_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(read_only),
  )
}

///|
extern "js" fn html_text_area_element_required_ffi(obj : JsValue) -> Bool = "(obj) => obj.required"

///|
impl THTMLTextAreaElement with required(self : Self) -> Bool {
  html_text_area_element_required_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_text_area_element_set_required_ffi(
  obj : JsValue,
  required : JsValue,
) -> Unit = "(obj, required) => { obj.required = required; }"

///|
impl THTMLTextAreaElement with set_required(self : Self, required : Bool) -> Unit {
  html_text_area_element_set_required_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(required),
  )
}

///|
extern "js" fn html_text_area_element_rows_ffi(obj : JsValue) -> UInt = "(obj) => obj.rows"

///|
impl THTMLTextAreaElement with rows(self : Self) -> UInt {
  html_text_area_element_rows_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_text_area_element_set_rows_ffi(
  obj : JsValue,
  rows : JsValue,
) -> Unit = "(obj, rows) => { obj.rows = rows; }"

///|
impl THTMLTextAreaElement with set_rows(self : Self, rows : UInt) -> Unit {
  html_text_area_element_set_rows_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(rows),
  )
}

///|
extern "js" fn html_text_area_element_wrap_ffi(obj : JsValue) -> String = "(obj) => obj.wrap"

///|
impl THTMLTextAreaElement with wrap(self : Self) -> String {
  html_text_area_element_wrap_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_text_area_element_set_wrap_ffi(
  obj : JsValue,
  wrap : JsValue,
) -> Unit = "(obj, wrap) => { obj.wrap = wrap; }"

///|
impl THTMLTextAreaElement with set_wrap(self : Self, wrap : String) -> Unit {
  html_text_area_element_set_wrap_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(wrap),
  )
}

///|
extern "js" fn html_text_area_element_type_ffi(obj : JsValue) -> String = "(obj) => obj.type"

///|
impl THTMLTextAreaElement with type_(self : Self) -> String {
  html_text_area_element_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_text_area_element_default_value_ffi(
  obj : JsValue,
) -> String = "(obj) => obj.defaultValue"

///|
impl THTMLTextAreaElement with default_value(self : Self) -> String {
  html_text_area_element_default_value_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_text_area_element_set_default_value_ffi(
  obj : JsValue,
  default_value : JsValue,
) -> Unit = "(obj, defaultValue) => { obj.defaultValue = defaultValue; }"

///|
impl THTMLTextAreaElement with set_default_value(
  self : Self,
  default_value : String,
) -> Unit {
  html_text_area_element_set_default_value_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(default_value),
  )
}

///|
extern "js" fn html_text_area_element_value_ffi(obj : JsValue) -> String = "(obj) => obj.value"

///|
impl THTMLTextAreaElement with value(self : Self) -> String {
  html_text_area_element_value_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_text_area_element_set_value_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "(obj, value) => { obj.value = value; }"

///|
impl THTMLTextAreaElement with set_value(self : Self, value : String) -> Unit {
  html_text_area_element_set_value_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(value),
  )
}

///|
extern "js" fn html_text_area_element_text_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.textLength"

///|
impl THTMLTextAreaElement with text_length(self : Self) -> UInt {
  html_text_area_element_text_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_text_area_element_will_validate_ffi(obj : JsValue) -> Bool = "(obj) => obj.willValidate"

///|
impl THTMLTextAreaElement with will_validate(self : Self) -> Bool {
  html_text_area_element_will_validate_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_text_area_element_validity_ffi(
  obj : JsValue,
) -> ValidityState = "(obj) => obj.validity"

///|
impl THTMLTextAreaElement with validity(self : Self) -> ValidityState {
  html_text_area_element_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_text_area_element_validation_message_ffi(
  obj : JsValue,
) -> String = "(obj) => obj.validationMessage"

///|
impl THTMLTextAreaElement with validation_message(self : Self) -> String {
  html_text_area_element_validation_message_ffi(TJsValue::to_js(self))
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
extern "js" fn html_text_area_element_labels_ffi(obj : JsValue) -> NodeList = "(obj) => obj.labels"

///|
impl THTMLTextAreaElement with labels(self : Self) -> NodeList {
  html_text_area_element_labels_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_text_area_element_select_ffi(obj : JsValue) -> Unit = "(obj) => obj.select(obj)"

///|
impl THTMLTextAreaElement with select(self : Self) -> Unit {
  html_text_area_element_select_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_text_area_element_selection_start_ffi(
  obj : JsValue,
) -> UInt = "(obj) => obj.selectionStart"

///|
impl THTMLTextAreaElement with selection_start(self : Self) -> UInt {
  html_text_area_element_selection_start_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_text_area_element_set_selection_start_ffi(
  obj : JsValue,
  selection_start : JsValue,
) -> Unit = "(obj, selectionStart) => { obj.selectionStart = selectionStart; }"

///|
impl THTMLTextAreaElement with set_selection_start(
  self : Self,
  selection_start : UInt,
) -> Unit {
  html_text_area_element_set_selection_start_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(selection_start),
  )
}

///|
extern "js" fn html_text_area_element_selection_end_ffi(obj : JsValue) -> UInt = "(obj) => obj.selectionEnd"

///|
impl THTMLTextAreaElement with selection_end(self : Self) -> UInt {
  html_text_area_element_selection_end_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_text_area_element_set_selection_end_ffi(
  obj : JsValue,
  selection_end : JsValue,
) -> Unit = "(obj, selectionEnd) => { obj.selectionEnd = selectionEnd; }"

///|
impl THTMLTextAreaElement with set_selection_end(
  self : Self,
  selection_end : UInt,
) -> Unit {
  html_text_area_element_set_selection_end_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(selection_end),
  )
}

///|
extern "js" fn html_text_area_element_selection_direction_ffi(
  obj : JsValue,
) -> String = "(obj) => obj.selectionDirection"

///|
impl THTMLTextAreaElement with selection_direction(self : Self) -> String {
  html_text_area_element_selection_direction_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_text_area_element_set_selection_direction_ffi(
  obj : JsValue,
  selection_direction : JsValue,
) -> Unit = "(obj, selectionDirection) => { obj.selectionDirection = selectionDirection; }"

///|
impl THTMLTextAreaElement with set_selection_direction(
  self : Self,
  selection_direction : String,
) -> Unit {
  html_text_area_element_set_selection_direction_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(selection_direction),
  )
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
