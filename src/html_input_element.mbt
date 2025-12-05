// Auto-generated MoonBit bindings for HTMLInputElement

// Do not edit manually

///|
#external
pub type HTMLInputElement

///|
pub trait THTMLInputElement: TJsValue + THTMLElement {
  accept(self : Self) -> String = _
  set_accept(self : Self, value : String) -> Unit = _
  alpha(self : Self) -> Bool = _
  set_alpha(self : Self, value : Bool) -> Unit = _
  alt(self : Self) -> String = _
  set_alt(self : Self, value : String) -> Unit = _
  autocomplete(self : Self) -> String = _
  set_autocomplete(self : Self, value : String) -> Unit = _
  default_checked(self : Self) -> Bool = _
  set_default_checked(self : Self, value : Bool) -> Unit = _
  checked(self : Self) -> Bool = _
  set_checked(self : Self, value : Bool) -> Unit = _
  color_space(self : Self) -> String = _
  set_color_space(self : Self, value : String) -> Unit = _
  dir_name(self : Self) -> String = _
  set_dir_name(self : Self, value : String) -> Unit = _
  disabled(self : Self) -> Bool = _
  set_disabled(self : Self, value : Bool) -> Unit = _
  form(self : Self) -> HTMLFormElement? = _
  files(self : Self) -> JsValue? = _
  set_files(self : Self, value : JsValue) -> Unit = _
  form_action(self : Self) -> String = _
  set_form_action(self : Self, value : String) -> Unit = _
  form_enctype(self : Self) -> String = _
  set_form_enctype(self : Self, value : String) -> Unit = _
  form_method(self : Self) -> String = _
  set_form_method(self : Self, value : String) -> Unit = _
  form_no_validate(self : Self) -> Bool = _
  set_form_no_validate(self : Self, value : Bool) -> Unit = _
  form_target(self : Self) -> String = _
  set_form_target(self : Self, value : String) -> Unit = _
  height(self : Self) -> UInt = _
  set_height(self : Self, value : UInt) -> Unit = _
  indeterminate(self : Self) -> Bool = _
  set_indeterminate(self : Self, value : Bool) -> Unit = _
  list(self : Self) -> JsValue? = _
  max(self : Self) -> String = _
  set_max(self : Self, value : String) -> Unit = _
  max_length(self : Self) -> Int = _
  set_max_length(self : Self, value : Int) -> Unit = _
  min(self : Self) -> String = _
  set_min(self : Self, value : String) -> Unit = _
  min_length(self : Self) -> Int = _
  set_min_length(self : Self, value : Int) -> Unit = _
  multiple(self : Self) -> Bool = _
  set_multiple(self : Self, value : Bool) -> Unit = _
  name(self : Self) -> String = _
  set_name(self : Self, value : String) -> Unit = _
  pattern(self : Self) -> String = _
  set_pattern(self : Self, value : String) -> Unit = _
  placeholder(self : Self) -> String = _
  set_placeholder(self : Self, value : String) -> Unit = _
  read_only(self : Self) -> Bool = _
  set_read_only(self : Self, value : Bool) -> Unit = _
  required(self : Self) -> Bool = _
  set_required(self : Self, value : Bool) -> Unit = _
  size(self : Self) -> UInt = _
  set_size(self : Self, value : UInt) -> Unit = _
  src(self : Self) -> String = _
  set_src(self : Self, value : String) -> Unit = _
  step(self : Self) -> String = _
  set_step(self : Self, value : String) -> Unit = _
  type_(self : Self) -> String = _
  set_type_(self : Self, value : String) -> Unit = _
  default_value(self : Self) -> String = _
  set_default_value(self : Self, value : String) -> Unit = _
  value(self : Self) -> String = _
  set_value(self : Self, value : String) -> Unit = _
  value_as_date(self : Self) -> JsValue? = _
  set_value_as_date(self : Self, value : JsValue) -> Unit = _
  value_as_number(self : Self) -> Double = _
  set_value_as_number(self : Self, value : Double) -> Unit = _
  width(self : Self) -> UInt = _
  set_width(self : Self, value : UInt) -> Unit = _
  will_validate(self : Self) -> Bool = _
  validity(self : Self) -> JsValue = _
  validation_message(self : Self) -> String = _
  labels(self : Self) -> NodeList? = _
  selection_start(self : Self) -> UInt? = _
  set_selection_start(self : Self, value : UInt) -> Unit = _
  selection_end(self : Self) -> UInt? = _
  set_selection_end(self : Self, value : UInt) -> Unit = _
  selection_direction(self : Self) -> String? = _
  set_selection_direction(self : Self, value : String) -> Unit = _
  align(self : Self) -> String = _
  set_align(self : Self, value : String) -> Unit = _
  use_map(self : Self) -> String = _
  set_use_map(self : Self, value : String) -> Unit = _
  popover_target_element(self : Self) -> Element? = _
  set_popover_target_element(self : Self, value : Element) -> Unit = _
  popover_target_action(self : Self) -> String = _
  set_popover_target_action(self : Self, value : String) -> Unit = _
  step_up(self : Self, n? : Int) -> Unit = _
  step_down(self : Self, n? : Int) -> Unit = _
  check_validity(self : Self) -> Bool = _
  report_validity(self : Self) -> Bool = _
  set_custom_validity(self : Self, error : String) -> Unit = _
  select(self : Self) -> Unit = _
  set_range_text(self : Self, replacement : String) -> Unit = _
  set_range_text2(
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
pub impl TEventTarget for HTMLInputElement

///|
pub impl TNode for HTMLInputElement

///|
pub impl TElement for HTMLInputElement

///|
pub impl THTMLElement for HTMLInputElement

///|
pub impl THTMLInputElement for HTMLInputElement

///|
pub impl TJsValue for HTMLInputElement with to_js(self : HTMLInputElement) -> JsValue = "%identity"

///|
fn html_input_element_step_up_ffi(obj : JsValue, n : JsValue) -> Unit = "webapi_HTMLInputElement" "stepUp"

///|
impl THTMLInputElement with step_up(self : Self, n? : Int) -> Unit {
  let n_js = opt_to_js(n)
  html_input_element_step_up_ffi(TJsValue::to_js(self), n_js)
}

///|
fn html_input_element_step_down_ffi(obj : JsValue, n : JsValue) -> Unit = "webapi_HTMLInputElement" "stepDown"

///|
impl THTMLInputElement with step_down(self : Self, n? : Int) -> Unit {
  let n_js = opt_to_js(n)
  html_input_element_step_down_ffi(TJsValue::to_js(self), n_js)
}

///|
fn html_input_element_check_validity_ffi(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "checkValidity"

///|
impl THTMLInputElement with check_validity(self : Self) -> Bool {
  html_input_element_check_validity_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn html_input_element_report_validity_ffi(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "reportValidity"

///|
impl THTMLInputElement with report_validity(self : Self) -> Bool {
  html_input_element_report_validity_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn html_input_element_set_custom_validity_ffi(
  obj : JsValue,
  error : JsValue,
) -> Unit = "webapi_HTMLInputElement" "setCustomValidity"

///|
impl THTMLInputElement with set_custom_validity(self : Self, error : String) -> Unit {
  html_input_element_set_custom_validity_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(error),
  )
}

///|
fn html_input_element_select_ffi(obj : JsValue) -> Unit = "webapi_HTMLInputElement" "select"

///|
impl THTMLInputElement with select(self : Self) -> Unit {
  html_input_element_select_ffi(TJsValue::to_js(self))
}

///|
fn html_input_element_set_range_text_ffi(
  obj : JsValue,
  replacement : JsValue,
) -> Unit = "webapi_HTMLInputElement" "setRangeText"

///|
impl THTMLInputElement with set_range_text(self : Self, replacement : String) -> Unit {
  html_input_element_set_range_text_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(replacement),
  )
}

///|
fn html_input_element_set_range_text_ffi2(
  obj : JsValue,
  replacement : JsValue,
  start : JsValue,
  end : JsValue,
  selection_mode : JsValue,
) -> Unit = "webapi_HTMLInputElement" "setRangeText"

///|
impl THTMLInputElement with set_range_text2(
  self : Self,
  replacement : String,
  start : UInt,
  end : UInt,
  selection_mode? : SelectionMode,
) -> Unit {
  let selection_mode_js = opt_to_js(selection_mode)
  html_input_element_set_range_text_ffi2(
    TJsValue::to_js(self),
    TJsValue::to_js(replacement),
    TJsValue::to_js(start),
    TJsValue::to_js(end),
    selection_mode_js,
  )
}

///|
fn html_input_element_set_selection_range_ffi(
  obj : JsValue,
  start : JsValue,
  end : JsValue,
  direction : JsValue,
) -> Unit = "webapi_HTMLInputElement" "setSelectionRange"

///|
impl THTMLInputElement with set_selection_range(
  self : Self,
  start : UInt,
  end : UInt,
  direction? : String,
) -> Unit {
  let direction_js = opt_to_js(direction)
  html_input_element_set_selection_range_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(start),
    TJsValue::to_js(end),
    direction_js,
  )
}

///|
fn html_input_element_show_picker_ffi(obj : JsValue) -> Unit = "webapi_HTMLInputElement" "showPicker"

///|
impl THTMLInputElement with show_picker(self : Self) -> Unit {
  html_input_element_show_picker_ffi(TJsValue::to_js(self))
}

///|
fn html_input_element_accept_ffi(obj : JsValue) -> String = "webapi_HTMLInputElement" "accept"

///|
impl THTMLInputElement with accept(self : Self) -> String {
  html_input_element_accept_ffi(self.to_js())
}

///|
fn html_input_element_set_accept_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLInputElement" "set_accept"

///|
impl THTMLInputElement with set_accept(self : Self, value : String) -> Unit {
  html_input_element_set_accept_ffi(self.to_js(), value)
}

///|
fn html_input_element_alpha_ffi(obj : JsValue) -> Bool = "webapi_HTMLInputElement" "alpha"

///|
impl THTMLInputElement with alpha(self : Self) -> Bool {
  html_input_element_alpha_ffi(self.to_js())
}

///|
fn html_input_element_set_alpha_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLInputElement" "set_alpha"

///|
impl THTMLInputElement with set_alpha(self : Self, value : Bool) -> Unit {
  html_input_element_set_alpha_ffi(self.to_js(), value)
}

///|
fn html_input_element_alt_ffi(obj : JsValue) -> String = "webapi_HTMLInputElement" "alt"

///|
impl THTMLInputElement with alt(self : Self) -> String {
  html_input_element_alt_ffi(self.to_js())
}

///|
fn html_input_element_set_alt_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLInputElement" "set_alt"

///|
impl THTMLInputElement with set_alt(self : Self, value : String) -> Unit {
  html_input_element_set_alt_ffi(self.to_js(), value)
}

///|
fn html_input_element_autocomplete_ffi(obj : JsValue) -> String = "webapi_HTMLInputElement" "autocomplete"

///|
impl THTMLInputElement with autocomplete(self : Self) -> String {
  html_input_element_autocomplete_ffi(self.to_js())
}

///|
fn html_input_element_set_autocomplete_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_HTMLInputElement" "set_autocomplete"

///|
impl THTMLInputElement with set_autocomplete(self : Self, value : String) -> Unit {
  html_input_element_set_autocomplete_ffi(self.to_js(), value)
}

///|
fn html_input_element_default_checked_ffi(obj : JsValue) -> Bool = "webapi_HTMLInputElement" "defaultChecked"

///|
impl THTMLInputElement with default_checked(self : Self) -> Bool {
  html_input_element_default_checked_ffi(self.to_js())
}

///|
fn html_input_element_set_default_checked_ffi(
  obj : JsValue,
  value : Bool,
) -> Unit = "webapi_HTMLInputElement" "set_defaultChecked"

///|
impl THTMLInputElement with set_default_checked(self : Self, value : Bool) -> Unit {
  html_input_element_set_default_checked_ffi(self.to_js(), value)
}

///|
fn html_input_element_checked_ffi(obj : JsValue) -> Bool = "webapi_HTMLInputElement" "checked"

///|
impl THTMLInputElement with checked(self : Self) -> Bool {
  html_input_element_checked_ffi(self.to_js())
}

///|
fn html_input_element_set_checked_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLInputElement" "set_checked"

///|
impl THTMLInputElement with set_checked(self : Self, value : Bool) -> Unit {
  html_input_element_set_checked_ffi(self.to_js(), value)
}

///|
fn html_input_element_color_space_ffi(obj : JsValue) -> String = "webapi_HTMLInputElement" "colorSpace"

///|
impl THTMLInputElement with color_space(self : Self) -> String {
  html_input_element_color_space_ffi(self.to_js())
}

///|
fn html_input_element_set_color_space_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_HTMLInputElement" "set_colorSpace"

///|
impl THTMLInputElement with set_color_space(self : Self, value : String) -> Unit {
  html_input_element_set_color_space_ffi(self.to_js(), value)
}

///|
fn html_input_element_dir_name_ffi(obj : JsValue) -> String = "webapi_HTMLInputElement" "dirName"

///|
impl THTMLInputElement with dir_name(self : Self) -> String {
  html_input_element_dir_name_ffi(self.to_js())
}

///|
fn html_input_element_set_dir_name_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLInputElement" "set_dirName"

///|
impl THTMLInputElement with set_dir_name(self : Self, value : String) -> Unit {
  html_input_element_set_dir_name_ffi(self.to_js(), value)
}

///|
fn html_input_element_disabled_ffi(obj : JsValue) -> Bool = "webapi_HTMLInputElement" "disabled"

///|
impl THTMLInputElement with disabled(self : Self) -> Bool {
  html_input_element_disabled_ffi(self.to_js())
}

///|
fn html_input_element_set_disabled_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLInputElement" "set_disabled"

///|
impl THTMLInputElement with set_disabled(self : Self, value : Bool) -> Unit {
  html_input_element_set_disabled_ffi(self.to_js(), value)
}

///|
fn html_input_element_form_ffi(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "form"

///|
impl THTMLInputElement with form(self : Self) -> HTMLFormElement? {
  html_input_element_form_ffi(self.to_js()).as_option()
}

///|
fn html_input_element_files_ffi(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "files"

///|
impl THTMLInputElement with files(self : Self) -> JsValue? {
  html_input_element_files_ffi(self.to_js()).as_option()
}

///|
fn html_input_element_set_files_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLInputElement" "set_files"

///|
impl THTMLInputElement with set_files(self : Self, value : JsValue) -> Unit {
  html_input_element_set_files_ffi(self.to_js(), value)
}

///|
fn html_input_element_form_action_ffi(obj : JsValue) -> String = "webapi_HTMLInputElement" "formAction"

///|
impl THTMLInputElement with form_action(self : Self) -> String {
  html_input_element_form_action_ffi(self.to_js())
}

///|
fn html_input_element_set_form_action_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_HTMLInputElement" "set_formAction"

///|
impl THTMLInputElement with set_form_action(self : Self, value : String) -> Unit {
  html_input_element_set_form_action_ffi(self.to_js(), value)
}

///|
fn html_input_element_form_enctype_ffi(obj : JsValue) -> String = "webapi_HTMLInputElement" "formEnctype"

///|
impl THTMLInputElement with form_enctype(self : Self) -> String {
  html_input_element_form_enctype_ffi(self.to_js())
}

///|
fn html_input_element_set_form_enctype_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_HTMLInputElement" "set_formEnctype"

///|
impl THTMLInputElement with set_form_enctype(self : Self, value : String) -> Unit {
  html_input_element_set_form_enctype_ffi(self.to_js(), value)
}

///|
fn html_input_element_form_method_ffi(obj : JsValue) -> String = "webapi_HTMLInputElement" "formMethod"

///|
impl THTMLInputElement with form_method(self : Self) -> String {
  html_input_element_form_method_ffi(self.to_js())
}

///|
fn html_input_element_set_form_method_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_HTMLInputElement" "set_formMethod"

///|
impl THTMLInputElement with set_form_method(self : Self, value : String) -> Unit {
  html_input_element_set_form_method_ffi(self.to_js(), value)
}

///|
fn html_input_element_form_no_validate_ffi(obj : JsValue) -> Bool = "webapi_HTMLInputElement" "formNoValidate"

///|
impl THTMLInputElement with form_no_validate(self : Self) -> Bool {
  html_input_element_form_no_validate_ffi(self.to_js())
}

///|
fn html_input_element_set_form_no_validate_ffi(
  obj : JsValue,
  value : Bool,
) -> Unit = "webapi_HTMLInputElement" "set_formNoValidate"

///|
impl THTMLInputElement with set_form_no_validate(self : Self, value : Bool) -> Unit {
  html_input_element_set_form_no_validate_ffi(self.to_js(), value)
}

///|
fn html_input_element_form_target_ffi(obj : JsValue) -> String = "webapi_HTMLInputElement" "formTarget"

///|
impl THTMLInputElement with form_target(self : Self) -> String {
  html_input_element_form_target_ffi(self.to_js())
}

///|
fn html_input_element_set_form_target_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_HTMLInputElement" "set_formTarget"

///|
impl THTMLInputElement with set_form_target(self : Self, value : String) -> Unit {
  html_input_element_set_form_target_ffi(self.to_js(), value)
}

///|
fn html_input_element_height_ffi(obj : JsValue) -> UInt = "webapi_HTMLInputElement" "height"

///|
impl THTMLInputElement with height(self : Self) -> UInt {
  html_input_element_height_ffi(self.to_js())
}

///|
fn html_input_element_set_height_ffi(obj : JsValue, value : UInt) -> Unit = "webapi_HTMLInputElement" "set_height"

///|
impl THTMLInputElement with set_height(self : Self, value : UInt) -> Unit {
  html_input_element_set_height_ffi(self.to_js(), value)
}

///|
fn html_input_element_indeterminate_ffi(obj : JsValue) -> Bool = "webapi_HTMLInputElement" "indeterminate"

///|
impl THTMLInputElement with indeterminate(self : Self) -> Bool {
  html_input_element_indeterminate_ffi(self.to_js())
}

///|
fn html_input_element_set_indeterminate_ffi(
  obj : JsValue,
  value : Bool,
) -> Unit = "webapi_HTMLInputElement" "set_indeterminate"

///|
impl THTMLInputElement with set_indeterminate(self : Self, value : Bool) -> Unit {
  html_input_element_set_indeterminate_ffi(self.to_js(), value)
}

///|
fn html_input_element_list_ffi(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "list"

///|
impl THTMLInputElement with list(self : Self) -> JsValue? {
  html_input_element_list_ffi(self.to_js()).as_option()
}

///|
fn html_input_element_max_ffi(obj : JsValue) -> String = "webapi_HTMLInputElement" "max"

///|
impl THTMLInputElement with max(self : Self) -> String {
  html_input_element_max_ffi(self.to_js())
}

///|
fn html_input_element_set_max_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLInputElement" "set_max"

///|
impl THTMLInputElement with set_max(self : Self, value : String) -> Unit {
  html_input_element_set_max_ffi(self.to_js(), value)
}

///|
fn html_input_element_max_length_ffi(obj : JsValue) -> Int = "webapi_HTMLInputElement" "maxLength"

///|
impl THTMLInputElement with max_length(self : Self) -> Int {
  html_input_element_max_length_ffi(self.to_js())
}

///|
fn html_input_element_set_max_length_ffi(obj : JsValue, value : Int) -> Unit = "webapi_HTMLInputElement" "set_maxLength"

///|
impl THTMLInputElement with set_max_length(self : Self, value : Int) -> Unit {
  html_input_element_set_max_length_ffi(self.to_js(), value)
}

///|
fn html_input_element_min_ffi(obj : JsValue) -> String = "webapi_HTMLInputElement" "min"

///|
impl THTMLInputElement with min(self : Self) -> String {
  html_input_element_min_ffi(self.to_js())
}

///|
fn html_input_element_set_min_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLInputElement" "set_min"

///|
impl THTMLInputElement with set_min(self : Self, value : String) -> Unit {
  html_input_element_set_min_ffi(self.to_js(), value)
}

///|
fn html_input_element_min_length_ffi(obj : JsValue) -> Int = "webapi_HTMLInputElement" "minLength"

///|
impl THTMLInputElement with min_length(self : Self) -> Int {
  html_input_element_min_length_ffi(self.to_js())
}

///|
fn html_input_element_set_min_length_ffi(obj : JsValue, value : Int) -> Unit = "webapi_HTMLInputElement" "set_minLength"

///|
impl THTMLInputElement with set_min_length(self : Self, value : Int) -> Unit {
  html_input_element_set_min_length_ffi(self.to_js(), value)
}

///|
fn html_input_element_multiple_ffi(obj : JsValue) -> Bool = "webapi_HTMLInputElement" "multiple"

///|
impl THTMLInputElement with multiple(self : Self) -> Bool {
  html_input_element_multiple_ffi(self.to_js())
}

///|
fn html_input_element_set_multiple_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLInputElement" "set_multiple"

///|
impl THTMLInputElement with set_multiple(self : Self, value : Bool) -> Unit {
  html_input_element_set_multiple_ffi(self.to_js(), value)
}

///|
fn html_input_element_name_ffi(obj : JsValue) -> String = "webapi_HTMLInputElement" "name"

///|
impl THTMLInputElement with name(self : Self) -> String {
  html_input_element_name_ffi(self.to_js())
}

///|
fn html_input_element_set_name_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLInputElement" "set_name"

///|
impl THTMLInputElement with set_name(self : Self, value : String) -> Unit {
  html_input_element_set_name_ffi(self.to_js(), value)
}

///|
fn html_input_element_pattern_ffi(obj : JsValue) -> String = "webapi_HTMLInputElement" "pattern"

///|
impl THTMLInputElement with pattern(self : Self) -> String {
  html_input_element_pattern_ffi(self.to_js())
}

///|
fn html_input_element_set_pattern_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLInputElement" "set_pattern"

///|
impl THTMLInputElement with set_pattern(self : Self, value : String) -> Unit {
  html_input_element_set_pattern_ffi(self.to_js(), value)
}

///|
fn html_input_element_placeholder_ffi(obj : JsValue) -> String = "webapi_HTMLInputElement" "placeholder"

///|
impl THTMLInputElement with placeholder(self : Self) -> String {
  html_input_element_placeholder_ffi(self.to_js())
}

///|
fn html_input_element_set_placeholder_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_HTMLInputElement" "set_placeholder"

///|
impl THTMLInputElement with set_placeholder(self : Self, value : String) -> Unit {
  html_input_element_set_placeholder_ffi(self.to_js(), value)
}

///|
fn html_input_element_read_only_ffi(obj : JsValue) -> Bool = "webapi_HTMLInputElement" "readOnly"

///|
impl THTMLInputElement with read_only(self : Self) -> Bool {
  html_input_element_read_only_ffi(self.to_js())
}

///|
fn html_input_element_set_read_only_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLInputElement" "set_readOnly"

///|
impl THTMLInputElement with set_read_only(self : Self, value : Bool) -> Unit {
  html_input_element_set_read_only_ffi(self.to_js(), value)
}

///|
fn html_input_element_required_ffi(obj : JsValue) -> Bool = "webapi_HTMLInputElement" "required"

///|
impl THTMLInputElement with required(self : Self) -> Bool {
  html_input_element_required_ffi(self.to_js())
}

///|
fn html_input_element_set_required_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLInputElement" "set_required"

///|
impl THTMLInputElement with set_required(self : Self, value : Bool) -> Unit {
  html_input_element_set_required_ffi(self.to_js(), value)
}

///|
fn html_input_element_size_ffi(obj : JsValue) -> UInt = "webapi_HTMLInputElement" "size"

///|
impl THTMLInputElement with size(self : Self) -> UInt {
  html_input_element_size_ffi(self.to_js())
}

///|
fn html_input_element_set_size_ffi(obj : JsValue, value : UInt) -> Unit = "webapi_HTMLInputElement" "set_size"

///|
impl THTMLInputElement with set_size(self : Self, value : UInt) -> Unit {
  html_input_element_set_size_ffi(self.to_js(), value)
}

///|
fn html_input_element_src_ffi(obj : JsValue) -> String = "webapi_HTMLInputElement" "src"

///|
impl THTMLInputElement with src(self : Self) -> String {
  html_input_element_src_ffi(self.to_js())
}

///|
fn html_input_element_set_src_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLInputElement" "set_src"

///|
impl THTMLInputElement with set_src(self : Self, value : String) -> Unit {
  html_input_element_set_src_ffi(self.to_js(), value)
}

///|
fn html_input_element_step_ffi(obj : JsValue) -> String = "webapi_HTMLInputElement" "step"

///|
impl THTMLInputElement with step(self : Self) -> String {
  html_input_element_step_ffi(self.to_js())
}

///|
fn html_input_element_set_step_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLInputElement" "set_step"

///|
impl THTMLInputElement with set_step(self : Self, value : String) -> Unit {
  html_input_element_set_step_ffi(self.to_js(), value)
}

///|
fn html_input_element_type_ffi(obj : JsValue) -> String = "webapi_HTMLInputElement" "type"

///|
impl THTMLInputElement with type_(self : Self) -> String {
  html_input_element_type_ffi(self.to_js())
}

///|
fn html_input_element_set_type_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLInputElement" "set_type"

///|
impl THTMLInputElement with set_type_(self : Self, value : String) -> Unit {
  html_input_element_set_type_ffi(self.to_js(), value)
}

///|
fn html_input_element_default_value_ffi(obj : JsValue) -> String = "webapi_HTMLInputElement" "defaultValue"

///|
impl THTMLInputElement with default_value(self : Self) -> String {
  html_input_element_default_value_ffi(self.to_js())
}

///|
fn html_input_element_set_default_value_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_HTMLInputElement" "set_defaultValue"

///|
impl THTMLInputElement with set_default_value(self : Self, value : String) -> Unit {
  html_input_element_set_default_value_ffi(self.to_js(), value)
}

///|
fn html_input_element_value_ffi(obj : JsValue) -> String = "webapi_HTMLInputElement" "value"

///|
impl THTMLInputElement with value(self : Self) -> String {
  html_input_element_value_ffi(self.to_js())
}

///|
fn html_input_element_set_value_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLInputElement" "set_value"

///|
impl THTMLInputElement with set_value(self : Self, value : String) -> Unit {
  html_input_element_set_value_ffi(self.to_js(), value)
}

///|
fn html_input_element_value_as_date_ffi(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "valueAsDate"

///|
impl THTMLInputElement with value_as_date(self : Self) -> JsValue? {
  html_input_element_value_as_date_ffi(self.to_js()).as_option()
}

///|
fn html_input_element_set_value_as_date_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_HTMLInputElement" "set_valueAsDate"

///|
impl THTMLInputElement with set_value_as_date(self : Self, value : JsValue) -> Unit {
  html_input_element_set_value_as_date_ffi(self.to_js(), value)
}

///|
fn html_input_element_value_as_number_ffi(obj : JsValue) -> Double = "webapi_HTMLInputElement" "valueAsNumber"

///|
impl THTMLInputElement with value_as_number(self : Self) -> Double {
  html_input_element_value_as_number_ffi(self.to_js())
}

///|
fn html_input_element_set_value_as_number_ffi(
  obj : JsValue,
  value : Double,
) -> Unit = "webapi_HTMLInputElement" "set_valueAsNumber"

///|
impl THTMLInputElement with set_value_as_number(self : Self, value : Double) -> Unit {
  html_input_element_set_value_as_number_ffi(self.to_js(), value)
}

///|
fn html_input_element_width_ffi(obj : JsValue) -> UInt = "webapi_HTMLInputElement" "width"

///|
impl THTMLInputElement with width(self : Self) -> UInt {
  html_input_element_width_ffi(self.to_js())
}

///|
fn html_input_element_set_width_ffi(obj : JsValue, value : UInt) -> Unit = "webapi_HTMLInputElement" "set_width"

///|
impl THTMLInputElement with set_width(self : Self, value : UInt) -> Unit {
  html_input_element_set_width_ffi(self.to_js(), value)
}

///|
fn html_input_element_will_validate_ffi(obj : JsValue) -> Bool = "webapi_HTMLInputElement" "willValidate"

///|
impl THTMLInputElement with will_validate(self : Self) -> Bool {
  html_input_element_will_validate_ffi(self.to_js())
}

///|
fn html_input_element_validity_ffi(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "validity"

///|
impl THTMLInputElement with validity(self : Self) -> JsValue {
  html_input_element_validity_ffi(self.to_js())
}

///|
fn html_input_element_validation_message_ffi(obj : JsValue) -> String = "webapi_HTMLInputElement" "validationMessage"

///|
impl THTMLInputElement with validation_message(self : Self) -> String {
  html_input_element_validation_message_ffi(self.to_js())
}

///|
fn html_input_element_labels_ffi(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "labels"

///|
impl THTMLInputElement with labels(self : Self) -> NodeList? {
  html_input_element_labels_ffi(self.to_js()).as_option()
}

///|
fn html_input_element_selection_start_ffi(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "selectionStart"

///|
impl THTMLInputElement with selection_start(self : Self) -> UInt? {
  html_input_element_selection_start_ffi(self.to_js()).as_option()
}

///|
fn html_input_element_set_selection_start_ffi(
  obj : JsValue,
  value : UInt,
) -> Unit = "webapi_HTMLInputElement" "set_selectionStart"

///|
impl THTMLInputElement with set_selection_start(self : Self, value : UInt) -> Unit {
  html_input_element_set_selection_start_ffi(self.to_js(), value)
}

///|
fn html_input_element_selection_end_ffi(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "selectionEnd"

///|
impl THTMLInputElement with selection_end(self : Self) -> UInt? {
  html_input_element_selection_end_ffi(self.to_js()).as_option()
}

///|
fn html_input_element_set_selection_end_ffi(
  obj : JsValue,
  value : UInt,
) -> Unit = "webapi_HTMLInputElement" "set_selectionEnd"

///|
impl THTMLInputElement with set_selection_end(self : Self, value : UInt) -> Unit {
  html_input_element_set_selection_end_ffi(self.to_js(), value)
}

///|
fn html_input_element_selection_direction_ffi(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "selectionDirection"

///|
impl THTMLInputElement with selection_direction(self : Self) -> String? {
  html_input_element_selection_direction_ffi(self.to_js()).as_option()
}

///|
fn html_input_element_set_selection_direction_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_HTMLInputElement" "set_selectionDirection"

///|
impl THTMLInputElement with set_selection_direction(self : Self, value : String) -> Unit {
  html_input_element_set_selection_direction_ffi(self.to_js(), value)
}

///|
fn html_input_element_align_ffi(obj : JsValue) -> String = "webapi_HTMLInputElement" "align"

///|
impl THTMLInputElement with align(self : Self) -> String {
  html_input_element_align_ffi(self.to_js())
}

///|
fn html_input_element_set_align_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLInputElement" "set_align"

///|
impl THTMLInputElement with set_align(self : Self, value : String) -> Unit {
  html_input_element_set_align_ffi(self.to_js(), value)
}

///|
fn html_input_element_use_map_ffi(obj : JsValue) -> String = "webapi_HTMLInputElement" "useMap"

///|
impl THTMLInputElement with use_map(self : Self) -> String {
  html_input_element_use_map_ffi(self.to_js())
}

///|
fn html_input_element_set_use_map_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLInputElement" "set_useMap"

///|
impl THTMLInputElement with set_use_map(self : Self, value : String) -> Unit {
  html_input_element_set_use_map_ffi(self.to_js(), value)
}

///|
fn html_input_element_popover_target_element_ffi(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "popoverTargetElement"

///|
impl THTMLInputElement with popover_target_element(self : Self) -> Element? {
  html_input_element_popover_target_element_ffi(self.to_js()).as_option()
}

///|
fn html_input_element_set_popover_target_element_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_HTMLInputElement" "set_popoverTargetElement"

///|
impl THTMLInputElement with set_popover_target_element(
  self : Self,
  value : Element,
) -> Unit {
  html_input_element_set_popover_target_element_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn html_input_element_popover_target_action_ffi(obj : JsValue) -> String = "webapi_HTMLInputElement" "popoverTargetAction"

///|
impl THTMLInputElement with popover_target_action(self : Self) -> String {
  html_input_element_popover_target_action_ffi(self.to_js())
}

///|
fn html_input_element_set_popover_target_action_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_HTMLInputElement" "set_popoverTargetAction"

///|
impl THTMLInputElement with set_popover_target_action(
  self : Self,
  value : String,
) -> Unit {
  html_input_element_set_popover_target_action_ffi(self.to_js(), value)
}
