// Do not edit. This file is generated.
// MoonBit type: RequestCache
// Specifications: fetch.idl

pub(all) enum RequestCache {
  Default
  NoStore
  Reload
  NoCache
  ForceCache
  OnlyIfCached
} derive(Eq)

pub impl Show for RequestCache with output(self : RequestCache, logger : &Logger) -> Unit {
  match self {
    RequestCache::Default => logger.write_string("Default")
    RequestCache::NoStore => logger.write_string("NoStore")
    RequestCache::Reload => logger.write_string("Reload")
    RequestCache::NoCache => logger.write_string("NoCache")
    RequestCache::ForceCache => logger.write_string("ForceCache")
    RequestCache::OnlyIfCached => logger.write_string("OnlyIfCached")
  }
}

pub impl TJsValue for RequestCache with to_js(self: RequestCache) -> JsValue {
  match self {
    RequestCache::Default => TJsValue::to_js("default")
    RequestCache::NoStore => TJsValue::to_js("no-store")
    RequestCache::Reload => TJsValue::to_js("reload")
    RequestCache::NoCache => TJsValue::to_js("no-cache")
    RequestCache::ForceCache => TJsValue::to_js("force-cache")
    RequestCache::OnlyIfCached => TJsValue::to_js("only-if-cached")
  }
}

pub fn RequestCache::from(value: String) -> RequestCache? {
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

fn RequestCache::from_unchecked(value: String) -> RequestCache {
  match value {
    "default" => RequestCache::Default
    "no-store" => RequestCache::NoStore
    "reload" => RequestCache::Reload
    "no-cache" => RequestCache::NoCache
    "force-cache" => RequestCache::ForceCache
    "only-if-cached" => RequestCache::OnlyIfCached
    _ => RequestCache::Default
  }
}

pub fn RequestCache::value(self: RequestCache) -> String {
  match self {
    RequestCache::Default => "default"
    RequestCache::NoStore => "no-store"
    RequestCache::Reload => "reload"
    RequestCache::NoCache => "no-cache"
    RequestCache::ForceCache => "force-cache"
    RequestCache::OnlyIfCached => "only-if-cached"
  }
}

pub impl FromJsAny for RequestCache with from_js_any(value : JsAny) -> RequestCache {
  RequestCache::from_unchecked(value)
}