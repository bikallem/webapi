// Do not edit. This file is generated.
// MoonBit type: ReferrerPolicy
// Specifications: referrer-policy.idl

///|
pub(all) enum ReferrerPolicy {
  Empty
  NoReferrer
  NoReferrerWhenDowngrade
  SameOrigin
  Origin
  StrictOrigin
  OriginWhenCrossOrigin
  StrictOriginWhenCrossOrigin
  UnsafeUrl
} derive(Eq)

///|
pub impl Show for ReferrerPolicy with output(
  self : ReferrerPolicy,
  logger : &Logger,
) -> Unit {
  match self {
    ReferrerPolicy::Empty => logger.write_string("Empty")
    ReferrerPolicy::NoReferrer => logger.write_string("NoReferrer")
    ReferrerPolicy::NoReferrerWhenDowngrade =>
      logger.write_string("NoReferrerWhenDowngrade")
    ReferrerPolicy::SameOrigin => logger.write_string("SameOrigin")
    ReferrerPolicy::Origin => logger.write_string("Origin")
    ReferrerPolicy::StrictOrigin => logger.write_string("StrictOrigin")
    ReferrerPolicy::OriginWhenCrossOrigin =>
      logger.write_string("OriginWhenCrossOrigin")
    ReferrerPolicy::StrictOriginWhenCrossOrigin =>
      logger.write_string("StrictOriginWhenCrossOrigin")
    ReferrerPolicy::UnsafeUrl => logger.write_string("UnsafeUrl")
  }
}

///|
pub impl TJsValue for ReferrerPolicy with to_js(self : ReferrerPolicy) -> JsValue {
  match self {
    ReferrerPolicy::Empty => TJsValue::to_js("")
    ReferrerPolicy::NoReferrer => TJsValue::to_js("no-referrer")
    ReferrerPolicy::NoReferrerWhenDowngrade =>
      TJsValue::to_js("no-referrer-when-downgrade")
    ReferrerPolicy::SameOrigin => TJsValue::to_js("same-origin")
    ReferrerPolicy::Origin => TJsValue::to_js("origin")
    ReferrerPolicy::StrictOrigin => TJsValue::to_js("strict-origin")
    ReferrerPolicy::OriginWhenCrossOrigin =>
      TJsValue::to_js("origin-when-cross-origin")
    ReferrerPolicy::StrictOriginWhenCrossOrigin =>
      TJsValue::to_js("strict-origin-when-cross-origin")
    ReferrerPolicy::UnsafeUrl => TJsValue::to_js("unsafe-url")
  }
}

///|
pub fn ReferrerPolicy::from(value : String) -> ReferrerPolicy? {
  match value {
    "" => Some(ReferrerPolicy::Empty)
    "no-referrer" => Some(ReferrerPolicy::NoReferrer)
    "no-referrer-when-downgrade" =>
      Some(ReferrerPolicy::NoReferrerWhenDowngrade)
    "same-origin" => Some(ReferrerPolicy::SameOrigin)
    "origin" => Some(ReferrerPolicy::Origin)
    "strict-origin" => Some(ReferrerPolicy::StrictOrigin)
    "origin-when-cross-origin" => Some(ReferrerPolicy::OriginWhenCrossOrigin)
    "strict-origin-when-cross-origin" =>
      Some(ReferrerPolicy::StrictOriginWhenCrossOrigin)
    "unsafe-url" => Some(ReferrerPolicy::UnsafeUrl)
    _ => None
  }
}

///|
fn ReferrerPolicy::from_unchecked(value : String) -> ReferrerPolicy {
  match value {
    "" => ReferrerPolicy::Empty
    "no-referrer" => ReferrerPolicy::NoReferrer
    "no-referrer-when-downgrade" => ReferrerPolicy::NoReferrerWhenDowngrade
    "same-origin" => ReferrerPolicy::SameOrigin
    "origin" => ReferrerPolicy::Origin
    "strict-origin" => ReferrerPolicy::StrictOrigin
    "origin-when-cross-origin" => ReferrerPolicy::OriginWhenCrossOrigin
    "strict-origin-when-cross-origin" =>
      ReferrerPolicy::StrictOriginWhenCrossOrigin
    "unsafe-url" => ReferrerPolicy::UnsafeUrl
    _ => abort("unknown enum value")
  }
}

///|
pub fn ReferrerPolicy::value(self : ReferrerPolicy) -> String {
  let buf = StringBuilder::new()
  match self {
    ReferrerPolicy::Empty => buf.write_string("")
    ReferrerPolicy::NoReferrer => buf.write_string("no-referrer")
    ReferrerPolicy::NoReferrerWhenDowngrade =>
      buf.write_string("no-referrer-when-downgrade")
    ReferrerPolicy::SameOrigin => buf.write_string("same-origin")
    ReferrerPolicy::Origin => buf.write_string("origin")
    ReferrerPolicy::StrictOrigin => buf.write_string("strict-origin")
    ReferrerPolicy::OriginWhenCrossOrigin =>
      buf.write_string("origin-when-cross-origin")
    ReferrerPolicy::StrictOriginWhenCrossOrigin =>
      buf.write_string("strict-origin-when-cross-origin")
    ReferrerPolicy::UnsafeUrl => buf.write_string("unsafe-url")
  }
  buf.to_string()
}
