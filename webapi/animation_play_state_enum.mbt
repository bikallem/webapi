// Do not edit. This file is generated.
// MoonBit type: AnimationPlayState
// Specifications: web-animations.idl

///|
pub(all) enum AnimationPlayState {
  Idle
  Running
  Paused
  Finished
} derive(Eq)

///|
pub impl Show for AnimationPlayState with output(
  self : AnimationPlayState,
  logger : &Logger,
) -> Unit {
  match self {
    AnimationPlayState::Idle => logger.write_string("Idle")
    AnimationPlayState::Running => logger.write_string("Running")
    AnimationPlayState::Paused => logger.write_string("Paused")
    AnimationPlayState::Finished => logger.write_string("Finished")
  }
}

///|
pub impl TJsValue for AnimationPlayState with to_js(self : AnimationPlayState) -> JsValue {
  match self {
    AnimationPlayState::Idle => TJsValue::to_js("idle")
    AnimationPlayState::Running => TJsValue::to_js("running")
    AnimationPlayState::Paused => TJsValue::to_js("paused")
    AnimationPlayState::Finished => TJsValue::to_js("finished")
  }
}

///|
pub fn AnimationPlayState::from(value : String) -> AnimationPlayState? {
  match value {
    "idle" => Some(AnimationPlayState::Idle)
    "running" => Some(AnimationPlayState::Running)
    "paused" => Some(AnimationPlayState::Paused)
    "finished" => Some(AnimationPlayState::Finished)
    _ => None
  }
}

///|
fn AnimationPlayState::from_unchecked(value : String) -> AnimationPlayState {
  match value {
    "idle" => AnimationPlayState::Idle
    "running" => AnimationPlayState::Running
    "paused" => AnimationPlayState::Paused
    "finished" => AnimationPlayState::Finished
    _ => AnimationPlayState::Idle
  }
}

///|
pub fn AnimationPlayState::value(self : AnimationPlayState) -> String {
  match self {
    AnimationPlayState::Idle => "idle"
    AnimationPlayState::Running => "running"
    AnimationPlayState::Paused => "paused"
    AnimationPlayState::Finished => "finished"
  }
}

///|
pub impl FromJsAny for AnimationPlayState with from_js_any(value : JsAny) -> AnimationPlayState {
  AnimationPlayState::from_unchecked(value)
}
