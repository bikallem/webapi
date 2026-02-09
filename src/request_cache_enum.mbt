// Do not edit. This file is generated.
// MoonBit type: RequestCache
// Specifications: fetch.idl

///|
pub(all) enum RequestCache {
  Default
  NoStore
  Reload
  NoCache
  ForceCache
  OnlyIfCached
} derive(Eq, Show)

///|
pub impl TJsValue for RequestCache with to_js(self : RequestCache) -> JsValue {
  match self {
    RequestCache::Default => TJsValue::to_js("default")
    RequestCache::NoStore => TJsValue::to_js("no-store")
    RequestCache::Reload => TJsValue::to_js("reload")
    RequestCache::NoCache => TJsValue::to_js("no-cache")
    RequestCache::ForceCache => TJsValue::to_js("force-cache")
    RequestCache::OnlyIfCached => TJsValue::to_js("only-if-cached")
  }
}

///|
pub fn RequestCache::from(value : String) -> RequestCache? {
  match value {
    "default" => Some(RequestCache::Default)
    "no-store" => Some(RequestCache::NoStore)
    "reload" => Some(RequestCache::Reload)
    "no-cache" => Some(RequestCache::NoCache)
    "force-cache" => Some(RequestCache::ForceCache)
    "only-if-cached" => Some(RequestCache::OnlyIfCached)
    _ => None
  }
}
