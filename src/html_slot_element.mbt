// Auto-generated MoonBit bindings for HTMLSlotElement

// Do not edit manually

///|
#external
pub type HTMLSlotElement

///|
pub trait THTMLSlotElement: TJsValue + THTMLElement {
  name(self : Self) -> String = _
  set_name(self : Self, value : String) -> Unit = _
  assigned_nodes(self : Self, options? : AssignedNodesOptions) -> Array[Node] = _
  assigned_elements(self : Self, options? : AssignedNodesOptions) -> Array[
    Element,
  ] = _
  assign(self : Self, nodes : &TAssignNodesArg) -> Unit = _
}

///|
pub impl TEventTarget for HTMLSlotElement

///|
pub impl TNode for HTMLSlotElement

///|
pub impl TElement for HTMLSlotElement

///|
pub impl THTMLElement for HTMLSlotElement

///|
pub impl THTMLSlotElement for HTMLSlotElement

///|
pub impl TJsValue for HTMLSlotElement with to_js(self : HTMLSlotElement) -> JsValue = "%identity"

///|
fn html_slot_element_assigned_nodes_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "webapi_HTMLSlotElement" "assignedNodes"

///|
impl THTMLSlotElement with assigned_nodes(
  self : Self,
  options? : AssignedNodesOptions = AssignedNodesOptions::empty(),
) -> Array[Node] {
  html_slot_element_assigned_nodes_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(options),
  ).unsafe_cast()
}

///|
fn html_slot_element_assigned_elements_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "webapi_HTMLSlotElement" "assignedElements"

///|
impl THTMLSlotElement with assigned_elements(
  self : Self,
  options? : AssignedNodesOptions = AssignedNodesOptions::empty(),
) -> Array[Element] {
  html_slot_element_assigned_elements_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(options),
  ).unsafe_cast()
}

///|
/// Arg : nodes
pub(open) trait TAssignNodesArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TAssignNodesArg for Element with to_js(self : Element) -> JsValue = "%identity"

///|
pub impl TAssignNodesArg for Text with to_js(self : Text) -> JsValue = "%identity"

///|
fn html_slot_element_assign_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_HTMLSlotElement" "assign"

///|
impl THTMLSlotElement with assign(self : Self, nodes : &TAssignNodesArg) -> Unit {
  html_slot_element_assign_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
fn html_slot_element_name_ffi(obj : JsValue) -> String = "webapi_HTMLSlotElement" "name"

///|
impl THTMLSlotElement with name(self : Self) -> String {
  html_slot_element_name_ffi(self.to_js())
}

///|
fn html_slot_element_set_name_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLSlotElement" "set_name"

///|
impl THTMLSlotElement with set_name(self : Self, value : String) -> Unit {
  html_slot_element_set_name_ffi(self.to_js(), value)
}
