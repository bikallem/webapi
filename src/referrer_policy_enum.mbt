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
} derive(Eq, Show)

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
