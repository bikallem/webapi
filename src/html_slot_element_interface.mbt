///|
#external
pub type HTMLSlotElement

///|
pub impl TJsValue for HTMLSlotElement with to_js(self : HTMLSlotElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLSlotElement] HTMLSlotElement::into(self : HTMLSlotElement) -> T = "%identity"

///|
pub impl THTMLSlotElement for HTMLSlotElement

///|
pub impl THTMLElement for HTMLSlotElement

///|
pub impl TElement for HTMLSlotElement

///|
pub impl TNode for HTMLSlotElement

///|
pub impl TEventTarget for HTMLSlotElement

///|
extern "js" fn html_slot_element_ffi() -> HTMLSlotElement = "() => new HTMLSlotElement()"

///|
pub fn HTMLSlotElement::new() -> HTMLSlotElement {
  html_slot_element_ffi()
}

///|
pub(open) trait THTMLSlotElementAssignNodesArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl THTMLSlotElementAssignNodesArg for Element with to_js(self : Element) -> JsValue = "%identity"

///|
pub impl THTMLSlotElementAssignNodesArg for Text with to_js(self : Text) -> JsValue = "%identity"

///|
pub trait THTMLSlotElement: THTMLElement {
  assigned_nodes(self : Self, options? : AssignedNodesOptions) -> Array[Node] = _
  assigned_elements(self : Self, options? : AssignedNodesOptions) -> Array[
    Element,
  ] = _
  assign(self : Self, nodes : &THTMLSlotElementAssignNodesArg) -> Unit = _
}

///|
extern "js" fn html_slot_element_assigned_nodes_ffi(
  obj : JsValue,
  options : JsValue,
) -> Array[Node] = "(obj, options) => obj.assignedNodes(obj, options)"

///|
impl THTMLSlotElement with assigned_nodes(
  self : Self,
  options? : AssignedNodesOptions = AssignedNodesOptions::empty(),
) -> Array[Node] {
  html_slot_element_assigned_nodes_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(options),
  )
}

///|
extern "js" fn html_slot_element_assigned_elements_ffi(
  obj : JsValue,
  options : JsValue,
) -> Array[Element] = "(obj, options) => obj.assignedElements(obj, options)"

///|
impl THTMLSlotElement with assigned_elements(
  self : Self,
  options? : AssignedNodesOptions = AssignedNodesOptions::empty(),
) -> Array[Element] {
  html_slot_element_assigned_elements_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(options),
  )
}

///|
extern "js" fn html_slot_element_assign_ffi(
  obj : JsValue,
  nodes : JsValue,
) -> Unit = "(obj, nodes) => obj.assign(obj, nodes)"

///|
impl THTMLSlotElement with assign(
  self : Self,
  nodes : &THTMLSlotElementAssignNodesArg,
) -> Unit {
  html_slot_element_assign_ffi(TJsValue::to_js(self), nodes.to_js())
}
