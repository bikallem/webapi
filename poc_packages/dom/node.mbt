// Simplified Node for POC demonstrating the cyclic dependency

///|
pub type Node

///|
pub type Element

///|
// This is where the cycle starts!
// Node extends EventTarget (from events package)
pub trait TNode: @events.TEventTarget {
  node_type(self : Self) -> UInt = "%identity"
  parent_node(self : Self) -> Node? = "%identity"
  parent_element(self : Self) -> Element? = "%identity"
}

///|
pub impl @events.TEventTarget for Node

///|
pub impl TNode for Node
