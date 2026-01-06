// Do not edit. This file is generated.
// MoonBit type: HTMLInputElement
// Specifications: html.idl

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
extern "js" fn html_input_element_new_ffi() -> HTMLInputElement = "() => new HTMLInputElement()"

///|
pub fn HTMLInputElement::new() -> HTMLInputElement {
  html_input_element_new_ffi()
}

///|
pub trait THTMLInputElement: THTMLElement {
  accept(self : Self) -> String = _
  set_accept(self : Self, accept : String) -> Unit = _
  alpha(self : Self) -> Bool = _
  set_alpha(self : Self, alpha : Bool) -> Unit = _
  alt(self : Self) -> String = _
  set_alt(self : Self, alt : String) -> Unit = _
  autocomplete(self : Self) -> String = _
  set_autocomplete(self : Self, autocomplete : String) -> Unit = _
  default_checked(self : Self) -> Bool = _
  set_default_checked(self : Self, default_checked : Bool) -> Unit = _
  checked(self : Self) -> Bool = _
  set_checked(self : Self, checked : Bool) -> Unit = _
  color_space(self : Self) -> String = _
  set_color_space(self : Self, color_space : String) -> Unit = _
  dir_name(self : Self) -> String = _
  set_dir_name(self : Self, dir_name : String) -> Unit = _
  disabled(self : Self) -> Bool = _
  set_disabled(self : Self, disabled : Bool) -> Unit = _
  form(self : Self) -> HTMLFormElement = _
  files(self : Self) -> FileList = _
  set_files(self : Self, files : &TFileList) -> Unit = _
  form_action(self : Self) -> String = _
  set_form_action(self : Self, form_action : String) -> Unit = _
  form_enctype(self : Self) -> String = _
  set_form_enctype(self : Self, form_enctype : String) -> Unit = _
  form_method(self : Self) -> String = _
  set_form_method(self : Self, form_method : String) -> Unit = _
  form_no_validate(self : Self) -> Bool = _
  set_form_no_validate(self : Self, form_no_validate : Bool) -> Unit = _
  form_target(self : Self) -> String = _
  set_form_target(self : Self, form_target : String) -> Unit = _
  height(self : Self) -> UInt = _
  set_height(self : Self, height : UInt) -> Unit = _
  indeterminate(self : Self) -> Bool = _
  set_indeterminate(self : Self, indeterminate : Bool) -> Unit = _
  list(self : Self) -> HTMLDataListElement = _
  max(self : Self) -> String = _
  set_max(self : Self, max : String) -> Unit = _
  max_length(self : Self) -> Int = _
  set_max_length(self : Self, max_length : Int) -> Unit = _
  min(self : Self) -> String = _
  set_min(self : Self, min : String) -> Unit = _
  min_length(self : Self) -> Int = _
  set_min_length(self : Self, min_length : Int) -> Unit = _
  multiple(self : Self) -> Bool = _
  set_multiple(self : Self, multiple : Bool) -> Unit = _
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  pattern(self : Self) -> String = _
  set_pattern(self : Self, pattern : String) -> Unit = _
  placeholder(self : Self) -> String = _
  set_placeholder(self : Self, placeholder : String) -> Unit = _
  read_only(self : Self) -> Bool = _
  set_read_only(self : Self, read_only : Bool) -> Unit = _
  required(self : Self) -> Bool = _
  set_required(self : Self, required : Bool) -> Unit = _
  size(self : Self) -> UInt = _
  set_size(self : Self, size : UInt) -> Unit = _
  src(self : Self) -> String = _
  set_src(self : Self, src : String) -> Unit = _
  step(self : Self) -> String = _
  set_step(self : Self, step : String) -> Unit = _
  type_(self : Self) -> String = _
  set_type_(self : Self, type_ : String) -> Unit = _
  default_value(self : Self) -> String = _
  set_default_value(self : Self, default_value : String) -> Unit = _
  value(self : Self) -> String = _
  set_value(self : Self, value : String) -> Unit = _
  value_as_date(self : Self) -> JsValue = _
  set_value_as_date(self : Self, value_as_date : JsValue) -> Unit = _
  value_as_number(self : Self) -> Double = _
  set_value_as_number(self : Self, value_as_number : Double) -> Unit = _
  width(self : Self) -> UInt = _
  set_width(self : Self, width : UInt) -> Unit = _
  step_up(self : Self, n? : Int) -> Unit = _
  step_down(self : Self, n? : Int) -> Unit = _
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
  show_picker(self : Self) -> Unit = _
  align(self : Self) -> String = _
  set_align(self : Self, align : String) -> Unit = _
  use_map(self : Self) -> String = _
  set_use_map(self : Self, use_map : String) -> Unit = _
  popover_target_element(self : Self) -> Element = _
  set_popover_target_element(self : Self, popover_target_element : &TElement) -> Unit = _
  popover_target_action(self : Self) -> String = _
  set_popover_target_action(self : Self, popover_target_action : String) -> Unit = _
}

///|
extern "js" fn html_input_element_accept_ffi(obj : JsValue) -> String = "(obj) => obj.accept"

///|
impl THTMLInputElement with accept(self : Self) -> String {
  html_input_element_accept_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_accept_ffi(
  obj : JsValue,
  accept : JsValue,
) -> Unit = "(obj, accept) => { obj.accept = accept; }"

///|
impl THTMLInputElement with set_accept(self : Self, accept : String) -> Unit {
  html_input_element_set_accept_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(accept),
  )
}

///|
extern "js" fn html_input_element_alpha_ffi(obj : JsValue) -> Bool = "(obj) => obj.alpha"

///|
impl THTMLInputElement with alpha(self : Self) -> Bool {
  html_input_element_alpha_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_alpha_ffi(
  obj : JsValue,
  alpha : JsValue,
) -> Unit = "(obj, alpha) => { obj.alpha = alpha; }"

///|
impl THTMLInputElement with set_alpha(self : Self, alpha : Bool) -> Unit {
  html_input_element_set_alpha_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(alpha),
  )
}

///|
extern "js" fn html_input_element_alt_ffi(obj : JsValue) -> String = "(obj) => obj.alt"

///|
impl THTMLInputElement with alt(self : Self) -> String {
  html_input_element_alt_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_alt_ffi(
  obj : JsValue,
  alt : JsValue,
) -> Unit = "(obj, alt) => { obj.alt = alt; }"

///|
impl THTMLInputElement with set_alt(self : Self, alt : String) -> Unit {
  html_input_element_set_alt_ffi(TJsValue::to_js(self), TJsValue::to_js(alt))
}

///|
extern "js" fn html_input_element_autocomplete_ffi(obj : JsValue) -> String = "(obj) => obj.autocomplete"

///|
impl THTMLInputElement with autocomplete(self : Self) -> String {
  html_input_element_autocomplete_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_autocomplete_ffi(
  obj : JsValue,
  autocomplete : JsValue,
) -> Unit = "(obj, autocomplete) => { obj.autocomplete = autocomplete; }"

///|
impl THTMLInputElement with set_autocomplete(self : Self, autocomplete : String) -> Unit {
  html_input_element_set_autocomplete_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(autocomplete),
  )
}

///|
extern "js" fn html_input_element_default_checked_ffi(obj : JsValue) -> Bool = "(obj) => obj.defaultChecked"

///|
impl THTMLInputElement with default_checked(self : Self) -> Bool {
  html_input_element_default_checked_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_default_checked_ffi(
  obj : JsValue,
  default_checked : JsValue,
) -> Unit = "(obj, defaultChecked) => { obj.defaultChecked = default_checked; }"

///|
impl THTMLInputElement with set_default_checked(
  self : Self,
  default_checked : Bool,
) -> Unit {
  html_input_element_set_default_checked_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(default_checked),
  )
}

///|
extern "js" fn html_input_element_checked_ffi(obj : JsValue) -> Bool = "(obj) => obj.checked"

///|
impl THTMLInputElement with checked(self : Self) -> Bool {
  html_input_element_checked_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_checked_ffi(
  obj : JsValue,
  checked : JsValue,
) -> Unit = "(obj, checked) => { obj.checked = checked; }"

///|
impl THTMLInputElement with set_checked(self : Self, checked : Bool) -> Unit {
  html_input_element_set_checked_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(checked),
  )
}

///|
extern "js" fn html_input_element_color_space_ffi(obj : JsValue) -> String = "(obj) => obj.colorSpace"

///|
impl THTMLInputElement with color_space(self : Self) -> String {
  html_input_element_color_space_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_color_space_ffi(
  obj : JsValue,
  color_space : JsValue,
) -> Unit = "(obj, colorSpace) => { obj.colorSpace = color_space; }"

///|
impl THTMLInputElement with set_color_space(self : Self, color_space : String) -> Unit {
  html_input_element_set_color_space_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(color_space),
  )
}

///|
extern "js" fn html_input_element_dir_name_ffi(obj : JsValue) -> String = "(obj) => obj.dirName"

///|
impl THTMLInputElement with dir_name(self : Self) -> String {
  html_input_element_dir_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_dir_name_ffi(
  obj : JsValue,
  dir_name : JsValue,
) -> Unit = "(obj, dirName) => { obj.dirName = dir_name; }"

///|
impl THTMLInputElement with set_dir_name(self : Self, dir_name : String) -> Unit {
  html_input_element_set_dir_name_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(dir_name),
  )
}

///|
extern "js" fn html_input_element_disabled_ffi(obj : JsValue) -> Bool = "(obj) => obj.disabled"

///|
impl THTMLInputElement with disabled(self : Self) -> Bool {
  html_input_element_disabled_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_disabled_ffi(
  obj : JsValue,
  disabled : JsValue,
) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

///|
impl THTMLInputElement with set_disabled(self : Self, disabled : Bool) -> Unit {
  html_input_element_set_disabled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(disabled),
  )
}

///|
extern "js" fn html_input_element_form_ffi(obj : JsValue) -> HTMLFormElement = "(obj) => obj.form"

///|
impl THTMLInputElement with form(self : Self) -> HTMLFormElement {
  html_input_element_form_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_files_ffi(obj : JsValue) -> FileList = "(obj) => obj.files"

///|
impl THTMLInputElement with files(self : Self) -> FileList {
  html_input_element_files_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_files_ffi(
  obj : JsValue,
  files : JsValue,
) -> Unit = "(obj, files) => { obj.files = files; }"

///|
impl THTMLInputElement with set_files(self : Self, files : &TFileList) -> Unit {
  html_input_element_set_files_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(files),
  )
}

///|
extern "js" fn html_input_element_form_action_ffi(obj : JsValue) -> String = "(obj) => obj.formAction"

///|
impl THTMLInputElement with form_action(self : Self) -> String {
  html_input_element_form_action_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_form_action_ffi(
  obj : JsValue,
  form_action : JsValue,
) -> Unit = "(obj, formAction) => { obj.formAction = form_action; }"

///|
impl THTMLInputElement with set_form_action(self : Self, form_action : String) -> Unit {
  html_input_element_set_form_action_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(form_action),
  )
}

///|
extern "js" fn html_input_element_form_enctype_ffi(obj : JsValue) -> String = "(obj) => obj.formEnctype"

///|
impl THTMLInputElement with form_enctype(self : Self) -> String {
  html_input_element_form_enctype_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_form_enctype_ffi(
  obj : JsValue,
  form_enctype : JsValue,
) -> Unit = "(obj, formEnctype) => { obj.formEnctype = form_enctype; }"

///|
impl THTMLInputElement with set_form_enctype(self : Self, form_enctype : String) -> Unit {
  html_input_element_set_form_enctype_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(form_enctype),
  )
}

///|
extern "js" fn html_input_element_form_method_ffi(obj : JsValue) -> String = "(obj) => obj.formMethod"

///|
impl THTMLInputElement with form_method(self : Self) -> String {
  html_input_element_form_method_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_form_method_ffi(
  obj : JsValue,
  form_method : JsValue,
) -> Unit = "(obj, formMethod) => { obj.formMethod = form_method; }"

///|
impl THTMLInputElement with set_form_method(self : Self, form_method : String) -> Unit {
  html_input_element_set_form_method_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(form_method),
  )
}

///|
extern "js" fn html_input_element_form_no_validate_ffi(obj : JsValue) -> Bool = "(obj) => obj.formNoValidate"

///|
impl THTMLInputElement with form_no_validate(self : Self) -> Bool {
  html_input_element_form_no_validate_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_form_no_validate_ffi(
  obj : JsValue,
  form_no_validate : JsValue,
) -> Unit = "(obj, formNoValidate) => { obj.formNoValidate = form_no_validate; }"

///|
impl THTMLInputElement with set_form_no_validate(
  self : Self,
  form_no_validate : Bool,
) -> Unit {
  html_input_element_set_form_no_validate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(form_no_validate),
  )
}

///|
extern "js" fn html_input_element_form_target_ffi(obj : JsValue) -> String = "(obj) => obj.formTarget"

///|
impl THTMLInputElement with form_target(self : Self) -> String {
  html_input_element_form_target_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_form_target_ffi(
  obj : JsValue,
  form_target : JsValue,
) -> Unit = "(obj, formTarget) => { obj.formTarget = form_target; }"

///|
impl THTMLInputElement with set_form_target(self : Self, form_target : String) -> Unit {
  html_input_element_set_form_target_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(form_target),
  )
}

///|
extern "js" fn html_input_element_height_ffi(obj : JsValue) -> UInt = "(obj) => obj.height"

///|
impl THTMLInputElement with height(self : Self) -> UInt {
  html_input_element_height_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_height_ffi(
  obj : JsValue,
  height : JsValue,
) -> Unit = "(obj, height) => { obj.height = height; }"

///|
impl THTMLInputElement with set_height(self : Self, height : UInt) -> Unit {
  html_input_element_set_height_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(height),
  )
}

///|
extern "js" fn html_input_element_indeterminate_ffi(obj : JsValue) -> Bool = "(obj) => obj.indeterminate"

///|
impl THTMLInputElement with indeterminate(self : Self) -> Bool {
  html_input_element_indeterminate_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_indeterminate_ffi(
  obj : JsValue,
  indeterminate : JsValue,
) -> Unit = "(obj, indeterminate) => { obj.indeterminate = indeterminate; }"

///|
impl THTMLInputElement with set_indeterminate(self : Self, indeterminate : Bool) -> Unit {
  html_input_element_set_indeterminate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(indeterminate),
  )
}

///|
extern "js" fn html_input_element_list_ffi(
  obj : JsValue,
) -> HTMLDataListElement = "(obj) => obj.list"

///|
impl THTMLInputElement with list(self : Self) -> HTMLDataListElement {
  html_input_element_list_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_max_ffi(obj : JsValue) -> String = "(obj) => obj.max"

///|
impl THTMLInputElement with max(self : Self) -> String {
  html_input_element_max_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_max_ffi(
  obj : JsValue,
  max : JsValue,
) -> Unit = "(obj, max) => { obj.max = max; }"

///|
impl THTMLInputElement with set_max(self : Self, max : String) -> Unit {
  html_input_element_set_max_ffi(TJsValue::to_js(self), TJsValue::to_js(max))
}

///|
extern "js" fn html_input_element_max_length_ffi(obj : JsValue) -> Int = "(obj) => obj.maxLength"

///|
impl THTMLInputElement with max_length(self : Self) -> Int {
  html_input_element_max_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_max_length_ffi(
  obj : JsValue,
  max_length : JsValue,
) -> Unit = "(obj, maxLength) => { obj.maxLength = max_length; }"

///|
impl THTMLInputElement with set_max_length(self : Self, max_length : Int) -> Unit {
  html_input_element_set_max_length_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(max_length),
  )
}

///|
extern "js" fn html_input_element_min_ffi(obj : JsValue) -> String = "(obj) => obj.min"

///|
impl THTMLInputElement with min(self : Self) -> String {
  html_input_element_min_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_min_ffi(
  obj : JsValue,
  min : JsValue,
) -> Unit = "(obj, min) => { obj.min = min; }"

///|
impl THTMLInputElement with set_min(self : Self, min : String) -> Unit {
  html_input_element_set_min_ffi(TJsValue::to_js(self), TJsValue::to_js(min))
}

///|
extern "js" fn html_input_element_min_length_ffi(obj : JsValue) -> Int = "(obj) => obj.minLength"

///|
impl THTMLInputElement with min_length(self : Self) -> Int {
  html_input_element_min_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_min_length_ffi(
  obj : JsValue,
  min_length : JsValue,
) -> Unit = "(obj, minLength) => { obj.minLength = min_length; }"

///|
impl THTMLInputElement with set_min_length(self : Self, min_length : Int) -> Unit {
  html_input_element_set_min_length_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(min_length),
  )
}

///|
extern "js" fn html_input_element_multiple_ffi(obj : JsValue) -> Bool = "(obj) => obj.multiple"

///|
impl THTMLInputElement with multiple(self : Self) -> Bool {
  html_input_element_multiple_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_multiple_ffi(
  obj : JsValue,
  multiple : JsValue,
) -> Unit = "(obj, multiple) => { obj.multiple = multiple; }"

///|
impl THTMLInputElement with set_multiple(self : Self, multiple : Bool) -> Unit {
  html_input_element_set_multiple_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(multiple),
  )
}

///|
extern "js" fn html_input_element_name_ffi(obj : JsValue) -> String = "(obj) => obj.name"

///|
impl THTMLInputElement with name(self : Self) -> String {
  html_input_element_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
impl THTMLInputElement with set_name(self : Self, name : String) -> Unit {
  html_input_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
extern "js" fn html_input_element_pattern_ffi(obj : JsValue) -> String = "(obj) => obj.pattern"

///|
impl THTMLInputElement with pattern(self : Self) -> String {
  html_input_element_pattern_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_pattern_ffi(
  obj : JsValue,
  pattern : JsValue,
) -> Unit = "(obj, pattern) => { obj.pattern = pattern; }"

///|
impl THTMLInputElement with set_pattern(self : Self, pattern : String) -> Unit {
  html_input_element_set_pattern_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(pattern),
  )
}

///|
extern "js" fn html_input_element_placeholder_ffi(obj : JsValue) -> String = "(obj) => obj.placeholder"

///|
impl THTMLInputElement with placeholder(self : Self) -> String {
  html_input_element_placeholder_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_placeholder_ffi(
  obj : JsValue,
  placeholder : JsValue,
) -> Unit = "(obj, placeholder) => { obj.placeholder = placeholder; }"

///|
impl THTMLInputElement with set_placeholder(self : Self, placeholder : String) -> Unit {
  html_input_element_set_placeholder_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(placeholder),
  )
}

///|
extern "js" fn html_input_element_read_only_ffi(obj : JsValue) -> Bool = "(obj) => obj.readOnly"

///|
impl THTMLInputElement with read_only(self : Self) -> Bool {
  html_input_element_read_only_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_read_only_ffi(
  obj : JsValue,
  read_only : JsValue,
) -> Unit = "(obj, readOnly) => { obj.readOnly = read_only; }"

///|
impl THTMLInputElement with set_read_only(self : Self, read_only : Bool) -> Unit {
  html_input_element_set_read_only_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(read_only),
  )
}

///|
extern "js" fn html_input_element_required_ffi(obj : JsValue) -> Bool = "(obj) => obj.required"

///|
impl THTMLInputElement with required(self : Self) -> Bool {
  html_input_element_required_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_required_ffi(
  obj : JsValue,
  required : JsValue,
) -> Unit = "(obj, required) => { obj.required = required; }"

///|
impl THTMLInputElement with set_required(self : Self, required : Bool) -> Unit {
  html_input_element_set_required_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(required),
  )
}

///|
extern "js" fn html_input_element_size_ffi(obj : JsValue) -> UInt = "(obj) => obj.size"

///|
impl THTMLInputElement with size(self : Self) -> UInt {
  html_input_element_size_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_size_ffi(
  obj : JsValue,
  size : JsValue,
) -> Unit = "(obj, size) => { obj.size = size; }"

///|
impl THTMLInputElement with set_size(self : Self, size : UInt) -> Unit {
  html_input_element_set_size_ffi(TJsValue::to_js(self), TJsValue::to_js(size))
}

///|
extern "js" fn html_input_element_src_ffi(obj : JsValue) -> String = "(obj) => obj.src"

///|
impl THTMLInputElement with src(self : Self) -> String {
  html_input_element_src_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_src_ffi(
  obj : JsValue,
  src : JsValue,
) -> Unit = "(obj, src) => { obj.src = src; }"

///|
impl THTMLInputElement with set_src(self : Self, src : String) -> Unit {
  html_input_element_set_src_ffi(TJsValue::to_js(self), TJsValue::to_js(src))
}

///|
extern "js" fn html_input_element_step_ffi(obj : JsValue) -> String = "(obj) => obj.step"

///|
impl THTMLInputElement with step(self : Self) -> String {
  html_input_element_step_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_step_ffi(
  obj : JsValue,
  step : JsValue,
) -> Unit = "(obj, step) => { obj.step = step; }"

///|
impl THTMLInputElement with set_step(self : Self, step : String) -> Unit {
  html_input_element_set_step_ffi(TJsValue::to_js(self), TJsValue::to_js(step))
}

///|
extern "js" fn html_input_element_type_ffi(obj : JsValue) -> String = "(obj) => obj.type"

///|
impl THTMLInputElement with type_(self : Self) -> String {
  html_input_element_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type_; }"

///|
impl THTMLInputElement with set_type_(self : Self, type_ : String) -> Unit {
  html_input_element_set_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

///|
extern "js" fn html_input_element_default_value_ffi(obj : JsValue) -> String = "(obj) => obj.defaultValue"

///|
impl THTMLInputElement with default_value(self : Self) -> String {
  html_input_element_default_value_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_default_value_ffi(
  obj : JsValue,
  default_value : JsValue,
) -> Unit = "(obj, defaultValue) => { obj.defaultValue = default_value; }"

///|
impl THTMLInputElement with set_default_value(
  self : Self,
  default_value : String,
) -> Unit {
  html_input_element_set_default_value_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(default_value),
  )
}

///|
extern "js" fn html_input_element_value_ffi(obj : JsValue) -> String = "(obj) => obj.value"

///|
impl THTMLInputElement with value(self : Self) -> String {
  html_input_element_value_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_value_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "(obj, value) => { obj.value = value; }"

///|
impl THTMLInputElement with set_value(self : Self, value : String) -> Unit {
  html_input_element_set_value_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(value),
  )
}

///|
extern "js" fn html_input_element_value_as_date_ffi(obj : JsValue) -> JsValue = "(obj) => obj.valueAsDate"

///|
impl THTMLInputElement with value_as_date(self : Self) -> JsValue {
  html_input_element_value_as_date_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_value_as_date_ffi(
  obj : JsValue,
  value_as_date : JsValue,
) -> Unit = "(obj, valueAsDate) => { obj.valueAsDate = value_as_date; }"

///|
impl THTMLInputElement with set_value_as_date(
  self : Self,
  value_as_date : JsValue,
) -> Unit {
  html_input_element_set_value_as_date_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(value_as_date),
  )
}

///|
extern "js" fn html_input_element_value_as_number_ffi(obj : JsValue) -> Double = "(obj) => obj.valueAsNumber"

///|
impl THTMLInputElement with value_as_number(self : Self) -> Double {
  html_input_element_value_as_number_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_value_as_number_ffi(
  obj : JsValue,
  value_as_number : JsValue,
) -> Unit = "(obj, valueAsNumber) => { obj.valueAsNumber = value_as_number; }"

///|
impl THTMLInputElement with set_value_as_number(
  self : Self,
  value_as_number : Double,
) -> Unit {
  html_input_element_set_value_as_number_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(value_as_number),
  )
}

///|
extern "js" fn html_input_element_width_ffi(obj : JsValue) -> UInt = "(obj) => obj.width"

///|
impl THTMLInputElement with width(self : Self) -> UInt {
  html_input_element_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_width_ffi(
  obj : JsValue,
  width : JsValue,
) -> Unit = "(obj, width) => { obj.width = width; }"

///|
impl THTMLInputElement with set_width(self : Self, width : UInt) -> Unit {
  html_input_element_set_width_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(width),
  )
}

///|
extern "js" fn html_input_element_step_up_ffi(
  obj : JsValue,
  n : JsValue,
) -> Unit = "(obj, n) => obj.stepUp(obj, n)"

///|
impl THTMLInputElement with step_up(self : Self, n? : Int = (1 : Int)) -> Unit {
  html_input_element_step_up_ffi(TJsValue::to_js(self), TJsValue::to_js(n))
}

///|
extern "js" fn html_input_element_step_down_ffi(
  obj : JsValue,
  n : JsValue,
) -> Unit = "(obj, n) => obj.stepDown(obj, n)"

///|
impl THTMLInputElement with step_down(self : Self, n? : Int = (1 : Int)) -> Unit {
  html_input_element_step_down_ffi(TJsValue::to_js(self), TJsValue::to_js(n))
}

///|
extern "js" fn html_input_element_will_validate_ffi(obj : JsValue) -> Bool = "(obj) => obj.willValidate"

///|
impl THTMLInputElement with will_validate(self : Self) -> Bool {
  html_input_element_will_validate_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_validity_ffi(obj : JsValue) -> ValidityState = "(obj) => obj.validity"

///|
impl THTMLInputElement with validity(self : Self) -> ValidityState {
  html_input_element_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_validation_message_ffi(
  obj : JsValue,
) -> String = "(obj) => obj.validationMessage"

///|
impl THTMLInputElement with validation_message(self : Self) -> String {
  html_input_element_validation_message_ffi(TJsValue::to_js(self))
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
extern "js" fn html_input_element_labels_ffi(obj : JsValue) -> NodeList = "(obj) => obj.labels"

///|
impl THTMLInputElement with labels(self : Self) -> NodeList {
  html_input_element_labels_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_select_ffi(obj : JsValue) -> Unit = "(obj) => obj.select(obj)"

///|
impl THTMLInputElement with select(self : Self) -> Unit {
  html_input_element_select_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_selection_start_ffi(obj : JsValue) -> UInt = "(obj) => obj.selectionStart"

///|
impl THTMLInputElement with selection_start(self : Self) -> UInt {
  html_input_element_selection_start_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_selection_start_ffi(
  obj : JsValue,
  selection_start : JsValue,
) -> Unit = "(obj, selectionStart) => { obj.selectionStart = selection_start; }"

///|
impl THTMLInputElement with set_selection_start(
  self : Self,
  selection_start : UInt,
) -> Unit {
  html_input_element_set_selection_start_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(selection_start),
  )
}

///|
extern "js" fn html_input_element_selection_end_ffi(obj : JsValue) -> UInt = "(obj) => obj.selectionEnd"

///|
impl THTMLInputElement with selection_end(self : Self) -> UInt {
  html_input_element_selection_end_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_selection_end_ffi(
  obj : JsValue,
  selection_end : JsValue,
) -> Unit = "(obj, selectionEnd) => { obj.selectionEnd = selection_end; }"

///|
impl THTMLInputElement with set_selection_end(self : Self, selection_end : UInt) -> Unit {
  html_input_element_set_selection_end_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(selection_end),
  )
}

///|
extern "js" fn html_input_element_selection_direction_ffi(
  obj : JsValue,
) -> String = "(obj) => obj.selectionDirection"

///|
impl THTMLInputElement with selection_direction(self : Self) -> String {
  html_input_element_selection_direction_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_selection_direction_ffi(
  obj : JsValue,
  selection_direction : JsValue,
) -> Unit = "(obj, selectionDirection) => { obj.selectionDirection = selection_direction; }"

///|
impl THTMLInputElement with set_selection_direction(
  self : Self,
  selection_direction : String,
) -> Unit {
  html_input_element_set_selection_direction_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(selection_direction),
  )
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

///|
extern "js" fn html_input_element_align_ffi(obj : JsValue) -> String = "(obj) => obj.align"

///|
impl THTMLInputElement with align(self : Self) -> String {
  html_input_element_align_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
impl THTMLInputElement with set_align(self : Self, align : String) -> Unit {
  html_input_element_set_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(align),
  )
}

///|
extern "js" fn html_input_element_use_map_ffi(obj : JsValue) -> String = "(obj) => obj.useMap"

///|
impl THTMLInputElement with use_map(self : Self) -> String {
  html_input_element_use_map_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_use_map_ffi(
  obj : JsValue,
  use_map : JsValue,
) -> Unit = "(obj, useMap) => { obj.useMap = use_map; }"

///|
impl THTMLInputElement with set_use_map(self : Self, use_map : String) -> Unit {
  html_input_element_set_use_map_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(use_map),
  )
}

///|
extern "js" fn html_input_element_popover_target_element_ffi(
  obj : JsValue,
) -> Element = "(obj) => obj.popoverTargetElement"

///|
impl THTMLInputElement with popover_target_element(self : Self) -> Element {
  html_input_element_popover_target_element_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_popover_target_element_ffi(
  obj : JsValue,
  popover_target_element : JsValue,
) -> Unit = "(obj, popoverTargetElement) => { obj.popoverTargetElement = popover_target_element; }"

///|
impl THTMLInputElement with set_popover_target_element(
  self : Self,
  popover_target_element : &TElement,
) -> Unit {
  html_input_element_set_popover_target_element_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(popover_target_element),
  )
}

///|
extern "js" fn html_input_element_popover_target_action_ffi(
  obj : JsValue,
) -> String = "(obj) => obj.popoverTargetAction"

///|
impl THTMLInputElement with popover_target_action(self : Self) -> String {
  html_input_element_popover_target_action_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_input_element_set_popover_target_action_ffi(
  obj : JsValue,
  popover_target_action : JsValue,
) -> Unit = "(obj, popoverTargetAction) => { obj.popoverTargetAction = popover_target_action; }"

///|
impl THTMLInputElement with set_popover_target_action(
  self : Self,
  popover_target_action : String,
) -> Unit {
  html_input_element_set_popover_target_action_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(popover_target_action),
  )
}
