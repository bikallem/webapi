// Simplified EventTarget for POC

///|
pub type EventTarget

///|
pub type Event

///|
pub type EventListener

///|
pub trait TEventTarget {
  add_event_listener(
    self : Self,
    type_ : String,
    callback : EventListener
  ) -> Unit = "%identity"
  
  dispatch_event(self : Self, event : Event) -> Bool = "%identity"
}

///|
pub impl TEventTarget for EventTarget
