// Do not edit. This file is generated.
// MoonBit type: HTMLInputElement
// Specifications: html.idl

/// [HTMLInputElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement)
#external
pub type HTMLInputElement

pub impl TJsValue for HTMLInputElement with to_js(self: HTMLInputElement) -> JsValue = "%identity"

pub impl FromJsAny for HTMLInputElement with from_js_any(value : JsAny) -> HTMLInputElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: THTMLInputElement] HTMLInputElement::into(self : HTMLInputElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: THTMLInputElement] HTMLInputElement::unsafe_into(self : HTMLInputElement) -> T = "%identity"

pub impl HasConstructor for HTMLInputElement with constructor_name() { "HTMLInputElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLInputElement + HasConstructor] HTMLInputElement::try_into(self : HTMLInputElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl THTMLInputElement for HTMLInputElement

pub impl THTMLElement for HTMLInputElement

pub impl TElement for HTMLInputElement

pub impl TNode for HTMLInputElement

pub impl TEventTarget for HTMLInputElement

pub fn HTMLInputElement::new() -> HTMLInputElement {
  html_input_element_new_ffi()
}

/// [HTMLInputElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement) interface.
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
  set_range_text_in_range(self : Self, replacement : String, start : UInt, end : UInt, selection_mode? : SelectionMode) -> Unit = _
  set_selection_range(self : Self, start : UInt, end : UInt, direction? : String) -> Unit = _
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

/// [HTMLInputElement.accept](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/accept)
impl THTMLInputElement with accept(self : Self) -> String {
  html_input_element_accept_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.accept](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/accept)
impl THTMLInputElement with set_accept(self : Self, 
accept : String) -> Unit {
  html_input_element_set_accept_ffi(TJsValue::to_js(self), TJsValue::to_js(accept))
}

/// [HTMLInputElement.alpha](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/alpha)
impl THTMLInputElement with alpha(self : Self) -> Bool {
  html_input_element_alpha_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.alpha](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/alpha)
impl THTMLInputElement with set_alpha(self : Self, 
alpha : Bool) -> Unit {
  html_input_element_set_alpha_ffi(TJsValue::to_js(self), TJsValue::to_js(alpha))
}

/// [HTMLInputElement.alt](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/alt)
impl THTMLInputElement with alt(self : Self) -> String {
  html_input_element_alt_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.alt](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/alt)
impl THTMLInputElement with set_alt(self : Self, 
alt : String) -> Unit {
  html_input_element_set_alt_ffi(TJsValue::to_js(self), TJsValue::to_js(alt))
}

/// [HTMLInputElement.autocomplete](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/autocomplete)
impl THTMLInputElement with autocomplete(self : Self) -> String {
  html_input_element_autocomplete_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.autocomplete](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/autocomplete)
impl THTMLInputElement with set_autocomplete(self : Self, 
autocomplete : String) -> Unit {
  html_input_element_set_autocomplete_ffi(TJsValue::to_js(self), TJsValue::to_js(autocomplete))
}

/// [HTMLInputElement.defaultChecked](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/defaultChecked)
impl THTMLInputElement with default_checked(self : Self) -> Bool {
  html_input_element_default_checked_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.defaultChecked](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/defaultChecked)
impl THTMLInputElement with set_default_checked(self : Self, 
default_checked : Bool) -> Unit {
  html_input_element_set_default_checked_ffi(TJsValue::to_js(self), TJsValue::to_js(default_checked))
}

/// [HTMLInputElement.checked](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/checked)
impl THTMLInputElement with checked(self : Self) -> Bool {
  html_input_element_checked_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.checked](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/checked)
impl THTMLInputElement with set_checked(self : Self, 
checked : Bool) -> Unit {
  html_input_element_set_checked_ffi(TJsValue::to_js(self), TJsValue::to_js(checked))
}

/// [HTMLInputElement.colorSpace](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/colorSpace)
impl THTMLInputElement with color_space(self : Self) -> String {
  html_input_element_color_space_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.colorSpace](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/colorSpace)
impl THTMLInputElement with set_color_space(self : Self, 
color_space : String) -> Unit {
  html_input_element_set_color_space_ffi(TJsValue::to_js(self), TJsValue::to_js(color_space))
}

/// [HTMLInputElement.dirName](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/dirName)
impl THTMLInputElement with dir_name(self : Self) -> String {
  html_input_element_dir_name_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.dirName](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/dirName)
impl THTMLInputElement with set_dir_name(self : Self, 
dir_name : String) -> Unit {
  html_input_element_set_dir_name_ffi(TJsValue::to_js(self), TJsValue::to_js(dir_name))
}

/// [HTMLInputElement.disabled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/disabled)
impl THTMLInputElement with disabled(self : Self) -> Bool {
  html_input_element_disabled_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.disabled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/disabled)
impl THTMLInputElement with set_disabled(self : Self, 
disabled : Bool) -> Unit {
  html_input_element_set_disabled_ffi(TJsValue::to_js(self), TJsValue::to_js(disabled))
}

/// [HTMLInputElement.form](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/form)
impl THTMLInputElement with form(self : Self) -> HTMLFormElement {
  html_input_element_form_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.files](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/files)
impl THTMLInputElement with files(self : Self) -> FileList {
  html_input_element_files_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.files](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/files)
impl THTMLInputElement with set_files(self : Self, 
files : &TFileList) -> Unit {
  html_input_element_set_files_ffi(TJsValue::to_js(self), TJsValue::to_js(files))
}

/// [HTMLInputElement.formAction](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/formAction)
impl THTMLInputElement with form_action(self : Self) -> String {
  html_input_element_form_action_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.formAction](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/formAction)
impl THTMLInputElement with set_form_action(self : Self, 
form_action : String) -> Unit {
  html_input_element_set_form_action_ffi(TJsValue::to_js(self), TJsValue::to_js(form_action))
}

/// [HTMLInputElement.formEnctype](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/formEnctype)
impl THTMLInputElement with form_enctype(self : Self) -> String {
  html_input_element_form_enctype_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.formEnctype](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/formEnctype)
impl THTMLInputElement with set_form_enctype(self : Self, 
form_enctype : String) -> Unit {
  html_input_element_set_form_enctype_ffi(TJsValue::to_js(self), TJsValue::to_js(form_enctype))
}

/// [HTMLInputElement.formMethod](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/formMethod)
impl THTMLInputElement with form_method(self : Self) -> String {
  html_input_element_form_method_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.formMethod](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/formMethod)
impl THTMLInputElement with set_form_method(self : Self, 
form_method : String) -> Unit {
  html_input_element_set_form_method_ffi(TJsValue::to_js(self), TJsValue::to_js(form_method))
}

/// [HTMLInputElement.formNoValidate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/formNoValidate)
impl THTMLInputElement with form_no_validate(self : Self) -> Bool {
  html_input_element_form_no_validate_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.formNoValidate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/formNoValidate)
impl THTMLInputElement with set_form_no_validate(self : Self, 
form_no_validate : Bool) -> Unit {
  html_input_element_set_form_no_validate_ffi(TJsValue::to_js(self), TJsValue::to_js(form_no_validate))
}

/// [HTMLInputElement.formTarget](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/formTarget)
impl THTMLInputElement with form_target(self : Self) -> String {
  html_input_element_form_target_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.formTarget](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/formTarget)
impl THTMLInputElement with set_form_target(self : Self, 
form_target : String) -> Unit {
  html_input_element_set_form_target_ffi(TJsValue::to_js(self), TJsValue::to_js(form_target))
}

/// [HTMLInputElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/height)
impl THTMLInputElement with height(self : Self) -> UInt {
  html_input_element_height_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/height)
impl THTMLInputElement with set_height(self : Self, 
height : UInt) -> Unit {
  html_input_element_set_height_ffi(TJsValue::to_js(self), TJsValue::to_js(height))
}

/// [HTMLInputElement.indeterminate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/indeterminate)
impl THTMLInputElement with indeterminate(self : Self) -> Bool {
  html_input_element_indeterminate_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.indeterminate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/indeterminate)
impl THTMLInputElement with set_indeterminate(self : Self, 
indeterminate : Bool) -> Unit {
  html_input_element_set_indeterminate_ffi(TJsValue::to_js(self), TJsValue::to_js(indeterminate))
}

/// [HTMLInputElement.list](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/list)
impl THTMLInputElement with list(self : Self) -> HTMLDataListElement {
  html_input_element_list_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.max](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/max)
impl THTMLInputElement with max(self : Self) -> String {
  html_input_element_max_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.max](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/max)
impl THTMLInputElement with set_max(self : Self, 
max : String) -> Unit {
  html_input_element_set_max_ffi(TJsValue::to_js(self), TJsValue::to_js(max))
}

/// [HTMLInputElement.maxLength](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/maxLength)
impl THTMLInputElement with max_length(self : Self) -> Int {
  html_input_element_max_length_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.maxLength](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/maxLength)
impl THTMLInputElement with set_max_length(self : Self, 
max_length : Int) -> Unit {
  html_input_element_set_max_length_ffi(TJsValue::to_js(self), TJsValue::to_js(max_length))
}

/// [HTMLInputElement.min](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/min)
impl THTMLInputElement with min(self : Self) -> String {
  html_input_element_min_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.min](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/min)
impl THTMLInputElement with set_min(self : Self, 
min : String) -> Unit {
  html_input_element_set_min_ffi(TJsValue::to_js(self), TJsValue::to_js(min))
}

/// [HTMLInputElement.minLength](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/minLength)
impl THTMLInputElement with min_length(self : Self) -> Int {
  html_input_element_min_length_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.minLength](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/minLength)
impl THTMLInputElement with set_min_length(self : Self, 
min_length : Int) -> Unit {
  html_input_element_set_min_length_ffi(TJsValue::to_js(self), TJsValue::to_js(min_length))
}

/// [HTMLInputElement.multiple](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/multiple)
impl THTMLInputElement with multiple(self : Self) -> Bool {
  html_input_element_multiple_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.multiple](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/multiple)
impl THTMLInputElement with set_multiple(self : Self, 
multiple : Bool) -> Unit {
  html_input_element_set_multiple_ffi(TJsValue::to_js(self), TJsValue::to_js(multiple))
}

/// [HTMLInputElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/name)
impl THTMLInputElement with name(self : Self) -> String {
  html_input_element_name_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/name)
impl THTMLInputElement with set_name(self : Self, 
name : String) -> Unit {
  html_input_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

/// [HTMLInputElement.pattern](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/pattern)
impl THTMLInputElement with pattern(self : Self) -> String {
  html_input_element_pattern_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.pattern](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/pattern)
impl THTMLInputElement with set_pattern(self : Self, 
pattern : String) -> Unit {
  html_input_element_set_pattern_ffi(TJsValue::to_js(self), TJsValue::to_js(pattern))
}

/// [HTMLInputElement.placeholder](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/placeholder)
impl THTMLInputElement with placeholder(self : Self) -> String {
  html_input_element_placeholder_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.placeholder](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/placeholder)
impl THTMLInputElement with set_placeholder(self : Self, 
placeholder : String) -> Unit {
  html_input_element_set_placeholder_ffi(TJsValue::to_js(self), TJsValue::to_js(placeholder))
}

/// [HTMLInputElement.readOnly](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/readOnly)
impl THTMLInputElement with read_only(self : Self) -> Bool {
  html_input_element_read_only_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.readOnly](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/readOnly)
impl THTMLInputElement with set_read_only(self : Self, 
read_only : Bool) -> Unit {
  html_input_element_set_read_only_ffi(TJsValue::to_js(self), TJsValue::to_js(read_only))
}

/// [HTMLInputElement.required](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/required)
impl THTMLInputElement with required(self : Self) -> Bool {
  html_input_element_required_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.required](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/required)
impl THTMLInputElement with set_required(self : Self, 
required : Bool) -> Unit {
  html_input_element_set_required_ffi(TJsValue::to_js(self), TJsValue::to_js(required))
}

/// [HTMLInputElement.size](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/size)
impl THTMLInputElement with size(self : Self) -> UInt {
  html_input_element_size_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.size](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/size)
impl THTMLInputElement with set_size(self : Self, 
size : UInt) -> Unit {
  html_input_element_set_size_ffi(TJsValue::to_js(self), TJsValue::to_js(size))
}

/// [HTMLInputElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/src)
impl THTMLInputElement with src(self : Self) -> String {
  html_input_element_src_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/src)
impl THTMLInputElement with set_src(self : Self, 
src : String) -> Unit {
  html_input_element_set_src_ffi(TJsValue::to_js(self), TJsValue::to_js(src))
}

/// [HTMLInputElement.step](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/step)
impl THTMLInputElement with step(self : Self) -> String {
  html_input_element_step_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.step](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/step)
impl THTMLInputElement with set_step(self : Self, 
step : String) -> Unit {
  html_input_element_set_step_ffi(TJsValue::to_js(self), TJsValue::to_js(step))
}

/// [HTMLInputElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/type)
impl THTMLInputElement with type_(self : Self) -> String {
  html_input_element_type_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/type)
impl THTMLInputElement with set_type_(self : Self, 
type_ : String) -> Unit {
  html_input_element_set_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

/// [HTMLInputElement.defaultValue](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/defaultValue)
impl THTMLInputElement with default_value(self : Self) -> String {
  html_input_element_default_value_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.defaultValue](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/defaultValue)
impl THTMLInputElement with set_default_value(self : Self, 
default_value : String) -> Unit {
  html_input_element_set_default_value_ffi(TJsValue::to_js(self), TJsValue::to_js(default_value))
}

/// [HTMLInputElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/value)
impl THTMLInputElement with value(self : Self) -> String {
  html_input_element_value_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/value)
impl THTMLInputElement with set_value(self : Self, 
value : String) -> Unit {
  html_input_element_set_value_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}

/// [HTMLInputElement.valueAsDate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/valueAsDate)
impl THTMLInputElement with value_as_date(self : Self) -> JsValue {
  html_input_element_value_as_date_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.valueAsDate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/valueAsDate)
impl THTMLInputElement with set_value_as_date(self : Self, 
value_as_date : JsValue) -> Unit {
  html_input_element_set_value_as_date_ffi(TJsValue::to_js(self), TJsValue::to_js(value_as_date))
}

/// [HTMLInputElement.valueAsNumber](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/valueAsNumber)
impl THTMLInputElement with value_as_number(self : Self) -> Double {
  html_input_element_value_as_number_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.valueAsNumber](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/valueAsNumber)
impl THTMLInputElement with set_value_as_number(self : Self, 
value_as_number : Double) -> Unit {
  html_input_element_set_value_as_number_ffi(TJsValue::to_js(self), TJsValue::to_js(value_as_number))
}

/// [HTMLInputElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/width)
impl THTMLInputElement with width(self : Self) -> UInt {
  html_input_element_width_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/width)
impl THTMLInputElement with set_width(self : Self, 
width : UInt) -> Unit {
  html_input_element_set_width_ffi(TJsValue::to_js(self), TJsValue::to_js(width))
}

/// [HTMLInputElement.stepUp](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/stepUp)
impl THTMLInputElement with step_up(self : Self, 
n? : Int) -> Unit {
  html_input_element_step_up_ffi(TJsValue::to_js(self), opt_to_js(n))
}

/// [HTMLInputElement.stepDown](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/stepDown)
impl THTMLInputElement with step_down(self : Self, 
n? : Int) -> Unit {
  html_input_element_step_down_ffi(TJsValue::to_js(self), opt_to_js(n))
}

/// [HTMLInputElement.willValidate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/willValidate)
impl THTMLInputElement with will_validate(self : Self) -> Bool {
  html_input_element_will_validate_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.validity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/validity)
impl THTMLInputElement with validity(self : Self) -> ValidityState {
  html_input_element_validity_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.validationMessage](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/validationMessage)
impl THTMLInputElement with validation_message(self : Self) -> String {
  html_input_element_validation_message_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.checkValidity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/checkValidity)
impl THTMLInputElement with check_validity(self : Self) -> Bool {
  html_input_element_check_validity_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.reportValidity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/reportValidity)
impl THTMLInputElement with report_validity(self : Self) -> Bool {
  html_input_element_report_validity_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.setCustomValidity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/setCustomValidity)
impl THTMLInputElement with set_custom_validity(self : Self, 
error : String) -> Unit {
  html_input_element_set_custom_validity_ffi(TJsValue::to_js(self), TJsValue::to_js(error))
}

/// [HTMLInputElement.labels](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/labels)
impl THTMLInputElement with labels(self : Self) -> NodeList {
  html_input_element_labels_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.select](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/select)
impl THTMLInputElement with select(self : Self) -> Unit {
  html_input_element_select_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.selectionStart](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/selectionStart)
impl THTMLInputElement with selection_start(self : Self) -> UInt {
  html_input_element_selection_start_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.selectionStart](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/selectionStart)
impl THTMLInputElement with set_selection_start(self : Self, 
selection_start : UInt) -> Unit {
  html_input_element_set_selection_start_ffi(TJsValue::to_js(self), TJsValue::to_js(selection_start))
}

/// [HTMLInputElement.selectionEnd](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/selectionEnd)
impl THTMLInputElement with selection_end(self : Self) -> UInt {
  html_input_element_selection_end_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.selectionEnd](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/selectionEnd)
impl THTMLInputElement with set_selection_end(self : Self, 
selection_end : UInt) -> Unit {
  html_input_element_set_selection_end_ffi(TJsValue::to_js(self), TJsValue::to_js(selection_end))
}

/// [HTMLInputElement.selectionDirection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/selectionDirection)
impl THTMLInputElement with selection_direction(self : Self) -> String {
  html_input_element_selection_direction_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.selectionDirection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/selectionDirection)
impl THTMLInputElement with set_selection_direction(self : Self, 
selection_direction : String) -> Unit {
  html_input_element_set_selection_direction_ffi(TJsValue::to_js(self), TJsValue::to_js(selection_direction))
}

/// [HTMLInputElement.setRangeText](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/setRangeText)
impl THTMLInputElement with set_range_text(self : Self, 
replacement : String) -> Unit {
  html_input_element_set_range_text_ffi(TJsValue::to_js(self), TJsValue::to_js(replacement))
}

/// [HTMLInputElement.setRangeText](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/setRangeText)
impl THTMLInputElement with set_range_text_in_range(self : Self, 
replacement : String, 
start : UInt, 
end : UInt, 
selection_mode? : SelectionMode) -> Unit {
  html_input_element_set_range_text_in_range_ffi(TJsValue::to_js(self), TJsValue::to_js(replacement), TJsValue::to_js(start), TJsValue::to_js(end), opt_to_js(selection_mode))
}

/// [HTMLInputElement.setSelectionRange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/setSelectionRange)
impl THTMLInputElement with set_selection_range(self : Self, 
start : UInt, 
end : UInt, 
direction? : String) -> Unit {
  html_input_element_set_selection_range_ffi(TJsValue::to_js(self), TJsValue::to_js(start), TJsValue::to_js(end), opt_to_js(direction))
}

/// [HTMLInputElement.showPicker](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/showPicker)
impl THTMLInputElement with show_picker(self : Self) -> Unit {
  html_input_element_show_picker_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/align)
impl THTMLInputElement with align(self : Self) -> String {
  html_input_element_align_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/align)
impl THTMLInputElement with set_align(self : Self, 
align : String) -> Unit {
  html_input_element_set_align_ffi(TJsValue::to_js(self), TJsValue::to_js(align))
}

/// [HTMLInputElement.useMap](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/useMap)
impl THTMLInputElement with use_map(self : Self) -> String {
  html_input_element_use_map_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.useMap](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/useMap)
impl THTMLInputElement with set_use_map(self : Self, 
use_map : String) -> Unit {
  html_input_element_set_use_map_ffi(TJsValue::to_js(self), TJsValue::to_js(use_map))
}

/// [HTMLInputElement.popoverTargetElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/popoverTargetElement)
impl THTMLInputElement with popover_target_element(self : Self) -> Element {
  html_input_element_popover_target_element_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.popoverTargetElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/popoverTargetElement)
impl THTMLInputElement with set_popover_target_element(self : Self, 
popover_target_element : &TElement) -> Unit {
  html_input_element_set_popover_target_element_ffi(TJsValue::to_js(self), TJsValue::to_js(popover_target_element))
}

/// [HTMLInputElement.popoverTargetAction](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/popoverTargetAction)
impl THTMLInputElement with popover_target_action(self : Self) -> String {
  html_input_element_popover_target_action_ffi(TJsValue::to_js(self))
}

/// [HTMLInputElement.popoverTargetAction](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/popoverTargetAction)
impl THTMLInputElement with set_popover_target_action(self : Self, 
popover_target_action : String) -> Unit {
  html_input_element_set_popover_target_action_ffi(TJsValue::to_js(self), TJsValue::to_js(popover_target_action))
}

#cfg(target="js")
extern "js" fn html_input_element_new_ffi() -> HTMLInputElement = "() => new HTMLInputElement()"

#cfg(target="js")
extern "js" fn html_input_element_accept_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.accept"

///|
#cfg(target="js")
fn html_input_element_accept_ffi(obj: JsValue) -> String {
  html_input_element_accept_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_accept_ffi(obj: JsValue, accept: JsValue) -> Unit = "(obj, accept) => { obj.accept = accept; }"

#cfg(target="js")
extern "js" fn html_input_element_alpha_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.alpha"

///|
#cfg(target="js")
fn html_input_element_alpha_ffi(obj: JsValue) -> Bool {
  html_input_element_alpha_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_alpha_ffi(obj: JsValue, alpha: JsValue) -> Unit = "(obj, alpha) => { obj.alpha = alpha; }"

#cfg(target="js")
extern "js" fn html_input_element_alt_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.alt"

///|
#cfg(target="js")
fn html_input_element_alt_ffi(obj: JsValue) -> String {
  html_input_element_alt_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_alt_ffi(obj: JsValue, alt: JsValue) -> Unit = "(obj, alt) => { obj.alt = alt; }"

#cfg(target="js")
extern "js" fn html_input_element_autocomplete_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.autocomplete"

///|
#cfg(target="js")
fn html_input_element_autocomplete_ffi(obj: JsValue) -> String {
  html_input_element_autocomplete_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_autocomplete_ffi(obj: JsValue, autocomplete: JsValue) -> Unit = "(obj, autocomplete) => { obj.autocomplete = autocomplete; }"

#cfg(target="js")
extern "js" fn html_input_element_default_checked_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.defaultChecked"

///|
#cfg(target="js")
fn html_input_element_default_checked_ffi(obj: JsValue) -> Bool {
  html_input_element_default_checked_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_default_checked_ffi(obj: JsValue, default_checked: JsValue) -> Unit = "(obj, defaultChecked) => { obj.defaultChecked = defaultChecked; }"

#cfg(target="js")
extern "js" fn html_input_element_checked_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.checked"

///|
#cfg(target="js")
fn html_input_element_checked_ffi(obj: JsValue) -> Bool {
  html_input_element_checked_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_checked_ffi(obj: JsValue, checked: JsValue) -> Unit = "(obj, checked) => { obj.checked = checked; }"

#cfg(target="js")
extern "js" fn html_input_element_color_space_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.colorSpace"

///|
#cfg(target="js")
fn html_input_element_color_space_ffi(obj: JsValue) -> String {
  html_input_element_color_space_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_color_space_ffi(obj: JsValue, color_space: JsValue) -> Unit = "(obj, colorSpace) => { obj.colorSpace = colorSpace; }"

#cfg(target="js")
extern "js" fn html_input_element_dir_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.dirName"

///|
#cfg(target="js")
fn html_input_element_dir_name_ffi(obj: JsValue) -> String {
  html_input_element_dir_name_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_dir_name_ffi(obj: JsValue, dir_name: JsValue) -> Unit = "(obj, dirName) => { obj.dirName = dirName; }"

#cfg(target="js")
extern "js" fn html_input_element_disabled_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.disabled"

///|
#cfg(target="js")
fn html_input_element_disabled_ffi(obj: JsValue) -> Bool {
  html_input_element_disabled_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_disabled_ffi(obj: JsValue, disabled: JsValue) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

#cfg(target="js")
extern "js" fn html_input_element_form_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.form"

///|
#cfg(target="js")
fn html_input_element_form_ffi(obj: JsValue) -> HTMLFormElement {
  html_input_element_form_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_files_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.files"

///|
#cfg(target="js")
fn html_input_element_files_ffi(obj: JsValue) -> FileList {
  html_input_element_files_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_files_ffi(obj: JsValue, files: JsValue) -> Unit = "(obj, files) => { obj.files = files; }"

#cfg(target="js")
extern "js" fn html_input_element_form_action_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.formAction"

///|
#cfg(target="js")
fn html_input_element_form_action_ffi(obj: JsValue) -> String {
  html_input_element_form_action_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_form_action_ffi(obj: JsValue, form_action: JsValue) -> Unit = "(obj, formAction) => { obj.formAction = formAction; }"

#cfg(target="js")
extern "js" fn html_input_element_form_enctype_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.formEnctype"

///|
#cfg(target="js")
fn html_input_element_form_enctype_ffi(obj: JsValue) -> String {
  html_input_element_form_enctype_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_form_enctype_ffi(obj: JsValue, form_enctype: JsValue) -> Unit = "(obj, formEnctype) => { obj.formEnctype = formEnctype; }"

#cfg(target="js")
extern "js" fn html_input_element_form_method_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.formMethod"

///|
#cfg(target="js")
fn html_input_element_form_method_ffi(obj: JsValue) -> String {
  html_input_element_form_method_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_form_method_ffi(obj: JsValue, form_method: JsValue) -> Unit = "(obj, formMethod) => { obj.formMethod = formMethod; }"

#cfg(target="js")
extern "js" fn html_input_element_form_no_validate_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.formNoValidate"

///|
#cfg(target="js")
fn html_input_element_form_no_validate_ffi(obj: JsValue) -> Bool {
  html_input_element_form_no_validate_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_form_no_validate_ffi(obj: JsValue, form_no_validate: JsValue) -> Unit = "(obj, formNoValidate) => { obj.formNoValidate = formNoValidate; }"

#cfg(target="js")
extern "js" fn html_input_element_form_target_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.formTarget"

///|
#cfg(target="js")
fn html_input_element_form_target_ffi(obj: JsValue) -> String {
  html_input_element_form_target_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_form_target_ffi(obj: JsValue, form_target: JsValue) -> Unit = "(obj, formTarget) => { obj.formTarget = formTarget; }"

#cfg(target="js")
extern "js" fn html_input_element_height_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.height"

///|
#cfg(target="js")
fn html_input_element_height_ffi(obj: JsValue) -> UInt {
  html_input_element_height_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_height_ffi(obj: JsValue, height: JsValue) -> Unit = "(obj, height) => { obj.height = height; }"

#cfg(target="js")
extern "js" fn html_input_element_indeterminate_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.indeterminate"

///|
#cfg(target="js")
fn html_input_element_indeterminate_ffi(obj: JsValue) -> Bool {
  html_input_element_indeterminate_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_indeterminate_ffi(obj: JsValue, indeterminate: JsValue) -> Unit = "(obj, indeterminate) => { obj.indeterminate = indeterminate; }"

#cfg(target="js")
extern "js" fn html_input_element_list_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.list"

///|
#cfg(target="js")
fn html_input_element_list_ffi(obj: JsValue) -> HTMLDataListElement {
  html_input_element_list_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_max_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.max"

///|
#cfg(target="js")
fn html_input_element_max_ffi(obj: JsValue) -> String {
  html_input_element_max_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_max_ffi(obj: JsValue, max: JsValue) -> Unit = "(obj, max) => { obj.max = max; }"

#cfg(target="js")
extern "js" fn html_input_element_max_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.maxLength"

///|
#cfg(target="js")
fn html_input_element_max_length_ffi(obj: JsValue) -> Int {
  html_input_element_max_length_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_max_length_ffi(obj: JsValue, max_length: JsValue) -> Unit = "(obj, maxLength) => { obj.maxLength = maxLength; }"

#cfg(target="js")
extern "js" fn html_input_element_min_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.min"

///|
#cfg(target="js")
fn html_input_element_min_ffi(obj: JsValue) -> String {
  html_input_element_min_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_min_ffi(obj: JsValue, min: JsValue) -> Unit = "(obj, min) => { obj.min = min; }"

#cfg(target="js")
extern "js" fn html_input_element_min_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.minLength"

///|
#cfg(target="js")
fn html_input_element_min_length_ffi(obj: JsValue) -> Int {
  html_input_element_min_length_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_min_length_ffi(obj: JsValue, min_length: JsValue) -> Unit = "(obj, minLength) => { obj.minLength = minLength; }"

#cfg(target="js")
extern "js" fn html_input_element_multiple_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.multiple"

///|
#cfg(target="js")
fn html_input_element_multiple_ffi(obj: JsValue) -> Bool {
  html_input_element_multiple_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_multiple_ffi(obj: JsValue, multiple: JsValue) -> Unit = "(obj, multiple) => { obj.multiple = multiple; }"

#cfg(target="js")
extern "js" fn html_input_element_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn html_input_element_name_ffi(obj: JsValue) -> String {
  html_input_element_name_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "(obj, name) => { obj.name = name; }"

#cfg(target="js")
extern "js" fn html_input_element_pattern_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.pattern"

///|
#cfg(target="js")
fn html_input_element_pattern_ffi(obj: JsValue) -> String {
  html_input_element_pattern_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_pattern_ffi(obj: JsValue, pattern: JsValue) -> Unit = "(obj, pattern) => { obj.pattern = pattern; }"

#cfg(target="js")
extern "js" fn html_input_element_placeholder_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.placeholder"

///|
#cfg(target="js")
fn html_input_element_placeholder_ffi(obj: JsValue) -> String {
  html_input_element_placeholder_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_placeholder_ffi(obj: JsValue, placeholder: JsValue) -> Unit = "(obj, placeholder) => { obj.placeholder = placeholder; }"

#cfg(target="js")
extern "js" fn html_input_element_read_only_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.readOnly"

///|
#cfg(target="js")
fn html_input_element_read_only_ffi(obj: JsValue) -> Bool {
  html_input_element_read_only_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_read_only_ffi(obj: JsValue, read_only: JsValue) -> Unit = "(obj, readOnly) => { obj.readOnly = readOnly; }"

#cfg(target="js")
extern "js" fn html_input_element_required_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.required"

///|
#cfg(target="js")
fn html_input_element_required_ffi(obj: JsValue) -> Bool {
  html_input_element_required_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_required_ffi(obj: JsValue, required: JsValue) -> Unit = "(obj, required) => { obj.required = required; }"

#cfg(target="js")
extern "js" fn html_input_element_size_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.size"

///|
#cfg(target="js")
fn html_input_element_size_ffi(obj: JsValue) -> UInt {
  html_input_element_size_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_size_ffi(obj: JsValue, size: JsValue) -> Unit = "(obj, size) => { obj.size = size; }"

#cfg(target="js")
extern "js" fn html_input_element_src_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.src"

///|
#cfg(target="js")
fn html_input_element_src_ffi(obj: JsValue) -> String {
  html_input_element_src_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_src_ffi(obj: JsValue, src: JsValue) -> Unit = "(obj, src) => { obj.src = src; }"

#cfg(target="js")
extern "js" fn html_input_element_step_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.step"

///|
#cfg(target="js")
fn html_input_element_step_ffi(obj: JsValue) -> String {
  html_input_element_step_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_step_ffi(obj: JsValue, step: JsValue) -> Unit = "(obj, step) => { obj.step = step; }"

#cfg(target="js")
extern "js" fn html_input_element_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn html_input_element_type_ffi(obj: JsValue) -> String {
  html_input_element_type_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_type_ffi(obj: JsValue, type_: JsValue) -> Unit = "(obj, type) => { obj.type = type; }"

#cfg(target="js")
extern "js" fn html_input_element_default_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.defaultValue"

///|
#cfg(target="js")
fn html_input_element_default_value_ffi(obj: JsValue) -> String {
  html_input_element_default_value_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_default_value_ffi(obj: JsValue, default_value: JsValue) -> Unit = "(obj, defaultValue) => { obj.defaultValue = defaultValue; }"

#cfg(target="js")
extern "js" fn html_input_element_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.value"

///|
#cfg(target="js")
fn html_input_element_value_ffi(obj: JsValue) -> String {
  html_input_element_value_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "(obj, value) => { obj.value = value; }"

#cfg(target="js")
extern "js" fn html_input_element_value_as_date_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.valueAsDate"

///|
#cfg(target="js")
fn html_input_element_value_as_date_ffi(obj: JsValue) -> JsValue {
  html_input_element_value_as_date_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_value_as_date_ffi(obj: JsValue, value_as_date: JsValue) -> Unit = "(obj, valueAsDate) => { obj.valueAsDate = valueAsDate; }"

#cfg(target="js")
extern "js" fn html_input_element_value_as_number_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.valueAsNumber"

///|
#cfg(target="js")
fn html_input_element_value_as_number_ffi(obj: JsValue) -> Double {
  html_input_element_value_as_number_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_value_as_number_ffi(obj: JsValue, value_as_number: JsValue) -> Unit = "(obj, valueAsNumber) => { obj.valueAsNumber = valueAsNumber; }"

#cfg(target="js")
extern "js" fn html_input_element_width_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.width"

///|
#cfg(target="js")
fn html_input_element_width_ffi(obj: JsValue) -> UInt {
  html_input_element_width_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_width_ffi(obj: JsValue, width: JsValue) -> Unit = "(obj, width) => { obj.width = width; }"

#cfg(target="js")
extern "js" fn html_input_element_step_up_ffi(obj: JsValue, n: JsValue) -> Unit = "(obj, n) => obj.stepUp(n)"

#cfg(target="js")
extern "js" fn html_input_element_step_down_ffi(obj: JsValue, n: JsValue) -> Unit = "(obj, n) => obj.stepDown(n)"

#cfg(target="js")
extern "js" fn html_input_element_will_validate_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.willValidate"

///|
#cfg(target="js")
fn html_input_element_will_validate_ffi(obj: JsValue) -> Bool {
  html_input_element_will_validate_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_validity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.validity"

///|
#cfg(target="js")
fn html_input_element_validity_ffi(obj: JsValue) -> ValidityState {
  html_input_element_validity_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_validation_message_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.validationMessage"

///|
#cfg(target="js")
fn html_input_element_validation_message_ffi(obj: JsValue) -> String {
  html_input_element_validation_message_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_check_validity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.checkValidity()"

///|
#cfg(target="js")
fn html_input_element_check_validity_ffi(obj: JsValue) -> Bool {
  html_input_element_check_validity_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_report_validity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.reportValidity()"

///|
#cfg(target="js")
fn html_input_element_report_validity_ffi(obj: JsValue) -> Bool {
  html_input_element_report_validity_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_custom_validity_ffi(obj: JsValue, error: JsValue) -> Unit = "(obj, error) => obj.setCustomValidity(error)"

#cfg(target="js")
extern "js" fn html_input_element_labels_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.labels"

///|
#cfg(target="js")
fn html_input_element_labels_ffi(obj: JsValue) -> NodeList {
  html_input_element_labels_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_select_ffi(obj: JsValue) -> Unit = "(obj) => obj.select()"

#cfg(target="js")
extern "js" fn html_input_element_selection_start_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.selectionStart"

///|
#cfg(target="js")
fn html_input_element_selection_start_ffi(obj: JsValue) -> UInt {
  html_input_element_selection_start_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_selection_start_ffi(obj: JsValue, selection_start: JsValue) -> Unit = "(obj, selectionStart) => { obj.selectionStart = selectionStart; }"

#cfg(target="js")
extern "js" fn html_input_element_selection_end_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.selectionEnd"

///|
#cfg(target="js")
fn html_input_element_selection_end_ffi(obj: JsValue) -> UInt {
  html_input_element_selection_end_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_selection_end_ffi(obj: JsValue, selection_end: JsValue) -> Unit = "(obj, selectionEnd) => { obj.selectionEnd = selectionEnd; }"

#cfg(target="js")
extern "js" fn html_input_element_selection_direction_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.selectionDirection"

///|
#cfg(target="js")
fn html_input_element_selection_direction_ffi(obj: JsValue) -> String {
  html_input_element_selection_direction_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_selection_direction_ffi(obj: JsValue, selection_direction: JsValue) -> Unit = "(obj, selectionDirection) => { obj.selectionDirection = selectionDirection; }"

#cfg(target="js")
extern "js" fn html_input_element_set_range_text_ffi(obj: JsValue, replacement: JsValue) -> Unit = "(obj, replacement) => obj.setRangeText(replacement)"

#cfg(target="js")
extern "js" fn html_input_element_set_range_text_in_range_ffi(obj: JsValue, replacement: JsValue, start: JsValue, end: JsValue, selection_mode: JsValue) -> Unit = "(obj, replacement, start, end, selection_mode) => obj.setRangeText(replacement, start, end, selection_mode)"

#cfg(target="js")
extern "js" fn html_input_element_set_selection_range_ffi(obj: JsValue, start: JsValue, end: JsValue, direction: JsValue) -> Unit = "(obj, start, end, direction) => obj.setSelectionRange(start, end, direction)"

#cfg(target="js")
extern "js" fn html_input_element_show_picker_ffi(obj: JsValue) -> Unit = "(obj) => obj.showPicker()"

#cfg(target="js")
extern "js" fn html_input_element_align_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.align"

///|
#cfg(target="js")
fn html_input_element_align_ffi(obj: JsValue) -> String {
  html_input_element_align_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_align_ffi(obj: JsValue, align: JsValue) -> Unit = "(obj, align) => { obj.align = align; }"

#cfg(target="js")
extern "js" fn html_input_element_use_map_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.useMap"

///|
#cfg(target="js")
fn html_input_element_use_map_ffi(obj: JsValue) -> String {
  html_input_element_use_map_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_use_map_ffi(obj: JsValue, use_map: JsValue) -> Unit = "(obj, useMap) => { obj.useMap = useMap; }"

#cfg(target="js")
extern "js" fn html_input_element_popover_target_element_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.popoverTargetElement"

///|
#cfg(target="js")
fn html_input_element_popover_target_element_ffi(obj: JsValue) -> Element {
  html_input_element_popover_target_element_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_popover_target_element_ffi(obj: JsValue, popover_target_element: JsValue) -> Unit = "(obj, popoverTargetElement) => { obj.popoverTargetElement = popoverTargetElement; }"

#cfg(target="js")
extern "js" fn html_input_element_popover_target_action_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.popoverTargetAction"

///|
#cfg(target="js")
fn html_input_element_popover_target_action_ffi(obj: JsValue) -> String {
  html_input_element_popover_target_action_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_input_element_set_popover_target_action_ffi(obj: JsValue, popover_target_action: JsValue) -> Unit = "(obj, popoverTargetAction) => { obj.popoverTargetAction = popoverTargetAction; }"

#cfg(target="wasm-gc")
fn html_input_element_new_ffi() -> HTMLInputElement = "webapi_HTMLInputElement" "new"

#cfg(target="wasm-gc")
fn html_input_element_accept_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLInputElement" "get_accept"

///|
#cfg(target="wasm-gc")
fn html_input_element_accept_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_input_element_accept_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_input_element_set_accept_ffi(obj: JsValue, accept: JsValue) -> Unit = "webapi_HTMLInputElement" "set_accept"

#cfg(target="wasm-gc")
fn html_input_element_alpha_ffi(obj: JsValue) -> Bool = "webapi_HTMLInputElement" "get_alpha"

#cfg(target="wasm-gc")
fn html_input_element_set_alpha_ffi(obj: JsValue, alpha: JsValue) -> Unit = "webapi_HTMLInputElement" "set_alpha"

#cfg(target="wasm-gc")
fn html_input_element_alt_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLInputElement" "get_alt"

///|
#cfg(target="wasm-gc")
fn html_input_element_alt_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_input_element_alt_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_input_element_set_alt_ffi(obj: JsValue, alt: JsValue) -> Unit = "webapi_HTMLInputElement" "set_alt"

#cfg(target="wasm-gc")
fn html_input_element_autocomplete_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLInputElement" "get_autocomplete"

///|
#cfg(target="wasm-gc")
fn html_input_element_autocomplete_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_input_element_autocomplete_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_input_element_set_autocomplete_ffi(obj: JsValue, autocomplete: JsValue) -> Unit = "webapi_HTMLInputElement" "set_autocomplete"

#cfg(target="wasm-gc")
fn html_input_element_default_checked_ffi(obj: JsValue) -> Bool = "webapi_HTMLInputElement" "get_defaultChecked"

#cfg(target="wasm-gc")
fn html_input_element_set_default_checked_ffi(obj: JsValue, default_checked: JsValue) -> Unit = "webapi_HTMLInputElement" "set_defaultChecked"

#cfg(target="wasm-gc")
fn html_input_element_checked_ffi(obj: JsValue) -> Bool = "webapi_HTMLInputElement" "get_checked"

#cfg(target="wasm-gc")
fn html_input_element_set_checked_ffi(obj: JsValue, checked: JsValue) -> Unit = "webapi_HTMLInputElement" "set_checked"

#cfg(target="wasm-gc")
fn html_input_element_color_space_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLInputElement" "get_colorSpace"

///|
#cfg(target="wasm-gc")
fn html_input_element_color_space_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_input_element_color_space_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_input_element_set_color_space_ffi(obj: JsValue, color_space: JsValue) -> Unit = "webapi_HTMLInputElement" "set_colorSpace"

#cfg(target="wasm-gc")
fn html_input_element_dir_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLInputElement" "get_dirName"

///|
#cfg(target="wasm-gc")
fn html_input_element_dir_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_input_element_dir_name_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_input_element_set_dir_name_ffi(obj: JsValue, dir_name: JsValue) -> Unit = "webapi_HTMLInputElement" "set_dirName"

#cfg(target="wasm-gc")
fn html_input_element_disabled_ffi(obj: JsValue) -> Bool = "webapi_HTMLInputElement" "get_disabled"

#cfg(target="wasm-gc")
fn html_input_element_set_disabled_ffi(obj: JsValue, disabled: JsValue) -> Unit = "webapi_HTMLInputElement" "set_disabled"

#cfg(target="wasm-gc")
fn html_input_element_form_ffi(obj: JsValue) -> HTMLFormElement = "webapi_HTMLInputElement" "get_form"

#cfg(target="wasm-gc")
fn html_input_element_files_ffi(obj: JsValue) -> FileList = "webapi_HTMLInputElement" "get_files"

#cfg(target="wasm-gc")
fn html_input_element_set_files_ffi(obj: JsValue, files: JsValue) -> Unit = "webapi_HTMLInputElement" "set_files"

#cfg(target="wasm-gc")
fn html_input_element_form_action_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLInputElement" "get_formAction"

///|
#cfg(target="wasm-gc")
fn html_input_element_form_action_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_input_element_form_action_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_input_element_set_form_action_ffi(obj: JsValue, form_action: JsValue) -> Unit = "webapi_HTMLInputElement" "set_formAction"

#cfg(target="wasm-gc")
fn html_input_element_form_enctype_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLInputElement" "get_formEnctype"

///|
#cfg(target="wasm-gc")
fn html_input_element_form_enctype_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_input_element_form_enctype_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_input_element_set_form_enctype_ffi(obj: JsValue, form_enctype: JsValue) -> Unit = "webapi_HTMLInputElement" "set_formEnctype"

#cfg(target="wasm-gc")
fn html_input_element_form_method_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLInputElement" "get_formMethod"

///|
#cfg(target="wasm-gc")
fn html_input_element_form_method_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_input_element_form_method_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_input_element_set_form_method_ffi(obj: JsValue, form_method: JsValue) -> Unit = "webapi_HTMLInputElement" "set_formMethod"

#cfg(target="wasm-gc")
fn html_input_element_form_no_validate_ffi(obj: JsValue) -> Bool = "webapi_HTMLInputElement" "get_formNoValidate"

#cfg(target="wasm-gc")
fn html_input_element_set_form_no_validate_ffi(obj: JsValue, form_no_validate: JsValue) -> Unit = "webapi_HTMLInputElement" "set_formNoValidate"

#cfg(target="wasm-gc")
fn html_input_element_form_target_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLInputElement" "get_formTarget"

///|
#cfg(target="wasm-gc")
fn html_input_element_form_target_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_input_element_form_target_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_input_element_set_form_target_ffi(obj: JsValue, form_target: JsValue) -> Unit = "webapi_HTMLInputElement" "set_formTarget"

#cfg(target="wasm-gc")
fn html_input_element_height_ffi(obj: JsValue) -> UInt = "webapi_HTMLInputElement" "get_height"

#cfg(target="wasm-gc")
fn html_input_element_set_height_ffi(obj: JsValue, height: JsValue) -> Unit = "webapi_HTMLInputElement" "set_height"

#cfg(target="wasm-gc")
fn html_input_element_indeterminate_ffi(obj: JsValue) -> Bool = "webapi_HTMLInputElement" "get_indeterminate"

#cfg(target="wasm-gc")
fn html_input_element_set_indeterminate_ffi(obj: JsValue, indeterminate: JsValue) -> Unit = "webapi_HTMLInputElement" "set_indeterminate"

#cfg(target="wasm-gc")
fn html_input_element_list_ffi(obj: JsValue) -> HTMLDataListElement = "webapi_HTMLInputElement" "get_list"

#cfg(target="wasm-gc")
fn html_input_element_max_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLInputElement" "get_max"

///|
#cfg(target="wasm-gc")
fn html_input_element_max_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_input_element_max_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_input_element_set_max_ffi(obj: JsValue, max: JsValue) -> Unit = "webapi_HTMLInputElement" "set_max"

#cfg(target="wasm-gc")
fn html_input_element_max_length_ffi(obj: JsValue) -> Int = "webapi_HTMLInputElement" "get_maxLength"

#cfg(target="wasm-gc")
fn html_input_element_set_max_length_ffi(obj: JsValue, max_length: JsValue) -> Unit = "webapi_HTMLInputElement" "set_maxLength"

#cfg(target="wasm-gc")
fn html_input_element_min_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLInputElement" "get_min"

///|
#cfg(target="wasm-gc")
fn html_input_element_min_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_input_element_min_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_input_element_set_min_ffi(obj: JsValue, min: JsValue) -> Unit = "webapi_HTMLInputElement" "set_min"

#cfg(target="wasm-gc")
fn html_input_element_min_length_ffi(obj: JsValue) -> Int = "webapi_HTMLInputElement" "get_minLength"

#cfg(target="wasm-gc")
fn html_input_element_set_min_length_ffi(obj: JsValue, min_length: JsValue) -> Unit = "webapi_HTMLInputElement" "set_minLength"

#cfg(target="wasm-gc")
fn html_input_element_multiple_ffi(obj: JsValue) -> Bool = "webapi_HTMLInputElement" "get_multiple"

#cfg(target="wasm-gc")
fn html_input_element_set_multiple_ffi(obj: JsValue, multiple: JsValue) -> Unit = "webapi_HTMLInputElement" "set_multiple"

#cfg(target="wasm-gc")
fn html_input_element_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLInputElement" "get_name"

///|
#cfg(target="wasm-gc")
fn html_input_element_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_input_element_name_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_input_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "webapi_HTMLInputElement" "set_name"

#cfg(target="wasm-gc")
fn html_input_element_pattern_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLInputElement" "get_pattern"

///|
#cfg(target="wasm-gc")
fn html_input_element_pattern_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_input_element_pattern_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_input_element_set_pattern_ffi(obj: JsValue, pattern: JsValue) -> Unit = "webapi_HTMLInputElement" "set_pattern"

#cfg(target="wasm-gc")
fn html_input_element_placeholder_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLInputElement" "get_placeholder"

///|
#cfg(target="wasm-gc")
fn html_input_element_placeholder_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_input_element_placeholder_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_input_element_set_placeholder_ffi(obj: JsValue, placeholder: JsValue) -> Unit = "webapi_HTMLInputElement" "set_placeholder"

#cfg(target="wasm-gc")
fn html_input_element_read_only_ffi(obj: JsValue) -> Bool = "webapi_HTMLInputElement" "get_readOnly"

#cfg(target="wasm-gc")
fn html_input_element_set_read_only_ffi(obj: JsValue, read_only: JsValue) -> Unit = "webapi_HTMLInputElement" "set_readOnly"

#cfg(target="wasm-gc")
fn html_input_element_required_ffi(obj: JsValue) -> Bool = "webapi_HTMLInputElement" "get_required"

#cfg(target="wasm-gc")
fn html_input_element_set_required_ffi(obj: JsValue, required: JsValue) -> Unit = "webapi_HTMLInputElement" "set_required"

#cfg(target="wasm-gc")
fn html_input_element_size_ffi(obj: JsValue) -> UInt = "webapi_HTMLInputElement" "get_size"

#cfg(target="wasm-gc")
fn html_input_element_set_size_ffi(obj: JsValue, size: JsValue) -> Unit = "webapi_HTMLInputElement" "set_size"

#cfg(target="wasm-gc")
fn html_input_element_src_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLInputElement" "get_src"

///|
#cfg(target="wasm-gc")
fn html_input_element_src_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_input_element_src_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_input_element_set_src_ffi(obj: JsValue, src: JsValue) -> Unit = "webapi_HTMLInputElement" "set_src"

#cfg(target="wasm-gc")
fn html_input_element_step_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLInputElement" "get_step"

///|
#cfg(target="wasm-gc")
fn html_input_element_step_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_input_element_step_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_input_element_set_step_ffi(obj: JsValue, step: JsValue) -> Unit = "webapi_HTMLInputElement" "set_step"

#cfg(target="wasm-gc")
fn html_input_element_type_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLInputElement" "get_type"

///|
#cfg(target="wasm-gc")
fn html_input_element_type_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_input_element_type_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_input_element_set_type_ffi(obj: JsValue, type_: JsValue) -> Unit = "webapi_HTMLInputElement" "set_type"

#cfg(target="wasm-gc")
fn html_input_element_default_value_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLInputElement" "get_defaultValue"

///|
#cfg(target="wasm-gc")
fn html_input_element_default_value_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_input_element_default_value_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_input_element_set_default_value_ffi(obj: JsValue, default_value: JsValue) -> Unit = "webapi_HTMLInputElement" "set_defaultValue"

#cfg(target="wasm-gc")
fn html_input_element_value_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLInputElement" "get_value"

///|
#cfg(target="wasm-gc")
fn html_input_element_value_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_input_element_value_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_input_element_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "webapi_HTMLInputElement" "set_value"

#cfg(target="wasm-gc")
fn html_input_element_value_as_date_ffi(obj: JsValue) -> JsValue = "webapi_HTMLInputElement" "get_valueAsDate"

#cfg(target="wasm-gc")
fn html_input_element_set_value_as_date_ffi(obj: JsValue, value_as_date: JsValue) -> Unit = "webapi_HTMLInputElement" "set_valueAsDate"

#cfg(target="wasm-gc")
fn html_input_element_value_as_number_ffi(obj: JsValue) -> Double = "webapi_HTMLInputElement" "get_valueAsNumber"

#cfg(target="wasm-gc")
fn html_input_element_set_value_as_number_ffi(obj: JsValue, value_as_number: JsValue) -> Unit = "webapi_HTMLInputElement" "set_valueAsNumber"

#cfg(target="wasm-gc")
fn html_input_element_width_ffi(obj: JsValue) -> UInt = "webapi_HTMLInputElement" "get_width"

#cfg(target="wasm-gc")
fn html_input_element_set_width_ffi(obj: JsValue, width: JsValue) -> Unit = "webapi_HTMLInputElement" "set_width"

#cfg(target="wasm-gc")
fn html_input_element_step_up_ffi(obj: JsValue, n: JsValue) -> Unit = "webapi_HTMLInputElement" "stepUp"

#cfg(target="wasm-gc")
fn html_input_element_step_down_ffi(obj: JsValue, n: JsValue) -> Unit = "webapi_HTMLInputElement" "stepDown"

#cfg(target="wasm-gc")
fn html_input_element_will_validate_ffi(obj: JsValue) -> Bool = "webapi_HTMLInputElement" "get_willValidate"

#cfg(target="wasm-gc")
fn html_input_element_validity_ffi(obj: JsValue) -> ValidityState = "webapi_HTMLInputElement" "get_validity"

#cfg(target="wasm-gc")
fn html_input_element_validation_message_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLInputElement" "get_validationMessage"

///|
#cfg(target="wasm-gc")
fn html_input_element_validation_message_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_input_element_validation_message_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_input_element_check_validity_ffi(obj: JsValue) -> Bool = "webapi_HTMLInputElement" "checkValidity"

#cfg(target="wasm-gc")
fn html_input_element_report_validity_ffi(obj: JsValue) -> Bool = "webapi_HTMLInputElement" "reportValidity"

#cfg(target="wasm-gc")
fn html_input_element_set_custom_validity_ffi(obj: JsValue, error: JsValue) -> Unit = "webapi_HTMLInputElement" "setCustomValidity"

#cfg(target="wasm-gc")
fn html_input_element_labels_ffi(obj: JsValue) -> NodeList = "webapi_HTMLInputElement" "get_labels"

#cfg(target="wasm-gc")
fn html_input_element_select_ffi(obj: JsValue) -> Unit = "webapi_HTMLInputElement" "select"

#cfg(target="wasm-gc")
fn html_input_element_selection_start_ffi(obj: JsValue) -> UInt = "webapi_HTMLInputElement" "get_selectionStart"

#cfg(target="wasm-gc")
fn html_input_element_set_selection_start_ffi(obj: JsValue, selection_start: JsValue) -> Unit = "webapi_HTMLInputElement" "set_selectionStart"

#cfg(target="wasm-gc")
fn html_input_element_selection_end_ffi(obj: JsValue) -> UInt = "webapi_HTMLInputElement" "get_selectionEnd"

#cfg(target="wasm-gc")
fn html_input_element_set_selection_end_ffi(obj: JsValue, selection_end: JsValue) -> Unit = "webapi_HTMLInputElement" "set_selectionEnd"

#cfg(target="wasm-gc")
fn html_input_element_selection_direction_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLInputElement" "get_selectionDirection"

///|
#cfg(target="wasm-gc")
fn html_input_element_selection_direction_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_input_element_selection_direction_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_input_element_set_selection_direction_ffi(obj: JsValue, selection_direction: JsValue) -> Unit = "webapi_HTMLInputElement" "set_selectionDirection"

#cfg(target="wasm-gc")
fn html_input_element_set_range_text_ffi(obj: JsValue, replacement: JsValue) -> Unit = "webapi_HTMLInputElement" "setRangeText"

#cfg(target="wasm-gc")
fn html_input_element_set_range_text_in_range_ffi(obj: JsValue, replacement: JsValue, start: JsValue, end: JsValue, selection_mode: JsValue) -> Unit = "webapi_HTMLInputElement" "set_range_text_in_range"

#cfg(target="wasm-gc")
fn html_input_element_set_selection_range_ffi(obj: JsValue, start: JsValue, end: JsValue, direction: JsValue) -> Unit = "webapi_HTMLInputElement" "setSelectionRange"

#cfg(target="wasm-gc")
fn html_input_element_show_picker_ffi(obj: JsValue) -> Unit = "webapi_HTMLInputElement" "showPicker"

#cfg(target="wasm-gc")
fn html_input_element_align_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLInputElement" "get_align"

///|
#cfg(target="wasm-gc")
fn html_input_element_align_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_input_element_align_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_input_element_set_align_ffi(obj: JsValue, align: JsValue) -> Unit = "webapi_HTMLInputElement" "set_align"

#cfg(target="wasm-gc")
fn html_input_element_use_map_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLInputElement" "get_useMap"

///|
#cfg(target="wasm-gc")
fn html_input_element_use_map_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_input_element_use_map_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_input_element_set_use_map_ffi(obj: JsValue, use_map: JsValue) -> Unit = "webapi_HTMLInputElement" "set_useMap"

#cfg(target="wasm-gc")
fn html_input_element_popover_target_element_ffi(obj: JsValue) -> Element = "webapi_HTMLInputElement" "get_popoverTargetElement"

#cfg(target="wasm-gc")
fn html_input_element_set_popover_target_element_ffi(obj: JsValue, popover_target_element: JsValue) -> Unit = "webapi_HTMLInputElement" "set_popoverTargetElement"

#cfg(target="wasm-gc")
fn html_input_element_popover_target_action_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLInputElement" "get_popoverTargetAction"

///|
#cfg(target="wasm-gc")
fn html_input_element_popover_target_action_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_input_element_popover_target_action_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_input_element_set_popover_target_action_ffi(obj: JsValue, popover_target_action: JsValue) -> Unit = "webapi_HTMLInputElement" "set_popoverTargetAction"