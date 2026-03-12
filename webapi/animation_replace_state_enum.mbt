// Do not edit. This file is generated.
// MoonBit type: AnimationReplaceState
// Specifications: web-animations.idl

///|
pub(all) enum AnimationReplaceState {
  Active
  Removed
  Persisted
} derive(Eq)

///|
pub impl Show for AnimationReplaceState with output(
  self : AnimationReplaceState,
  logger : &Logger,
) -> Unit {
  match self {
    AnimationReplaceState::Active => logger.write_string("Active")
    AnimationReplaceState::Removed => logger.write_string("Removed")
    AnimationReplaceState::Persisted => logger.write_string("Persisted")
  }
}

///|
pub impl TJsValue for AnimationReplaceState with to_js(
  self : AnimationReplaceState,
) -> JsValue {
  match self {
    AnimationReplaceState::Active => TJsValue::to_js("active")
    AnimationReplaceState::Removed => TJsValue::to_js("removed")
    AnimationReplaceState::Persisted => TJsValue::to_js("persisted")
  }
}

///|
pub fn AnimationReplaceState::from(value : String) -> AnimationReplaceState? {
  match value {
    "active" => Some(AnimationReplaceState::Active)
    "removed" => Some(AnimationReplaceState::Removed)
    "persisted" => Some(AnimationReplaceState::Persisted)
    _ => None
  }
}

///|
fn AnimationReplaceState::from_unchecked(
  value : String,
) -> AnimationReplaceState {
  match value {
    "active" => AnimationReplaceState::Active
    "removed" => AnimationReplaceState::Removed
    "persisted" => AnimationReplaceState::Persisted
    _ => abort("unknown AnimationReplaceState enum value")
  }
}

///|
pub fn AnimationReplaceState::value(self : AnimationReplaceState) -> String {
  match self {
    AnimationReplaceState::Active => "active"
    AnimationReplaceState::Removed => "removed"
    AnimationReplaceState::Persisted => "persisted"
  }
}

///|
pub impl FromJsAny for AnimationReplaceState with from_js_any(value : JsAny) -> AnimationReplaceState {
  AnimationReplaceState::from_unchecked(value)
}
