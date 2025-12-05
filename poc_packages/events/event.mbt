// Simplified Event for POC

///|
pub trait TEvent {
  // Event needs to reference EventTarget - but EventTarget is also defined here
  // So we reference the dom package's Node which implements EventTarget
  // This completes the cycle: dom -> events (via TEventTarget), events -> dom (via this)
  target(self : Self) -> @dom.Node? = "%identity"
  current_target(self : Self) -> EventTarget? = "%identity"
  composed_path(self : Self) -> Array[EventTarget] = "%identity"
}

///|
pub impl TEvent for Event
