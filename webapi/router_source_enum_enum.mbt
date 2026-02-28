// Do not edit. This file is generated.
// MoonBit type: RouterSourceEnum
// Specifications: service-workers.idl

///|
pub(all) enum RouterSourceEnum {
  Cache
  FetchEvent
  Network
  RaceNetworkAndFetchHandler
} derive(Eq)

///|
pub impl Show for RouterSourceEnum with output(
  self : RouterSourceEnum,
  logger : &Logger,
) -> Unit {
  match self {
    RouterSourceEnum::Cache => logger.write_string("Cache")
    RouterSourceEnum::FetchEvent => logger.write_string("FetchEvent")
    RouterSourceEnum::Network => logger.write_string("Network")
    RouterSourceEnum::RaceNetworkAndFetchHandler =>
      logger.write_string("RaceNetworkAndFetchHandler")
  }
}

///|
pub impl TJsValue for RouterSourceEnum with to_js(self : RouterSourceEnum) -> JsValue {
  match self {
    RouterSourceEnum::Cache => TJsValue::to_js("cache")
    RouterSourceEnum::FetchEvent => TJsValue::to_js("fetch-event")
    RouterSourceEnum::Network => TJsValue::to_js("network")
    RouterSourceEnum::RaceNetworkAndFetchHandler =>
      TJsValue::to_js("race-network-and-fetch-handler")
  }
}

///|
pub fn RouterSourceEnum::from(value : String) -> RouterSourceEnum? {
  match value {
    "cache" => Some(RouterSourceEnum::Cache)
    "fetch-event" => Some(RouterSourceEnum::FetchEvent)
    "network" => Some(RouterSourceEnum::Network)
    "race-network-and-fetch-handler" =>
      Some(RouterSourceEnum::RaceNetworkAndFetchHandler)
    _ => None
  }
}

///|
fn RouterSourceEnum::from_unchecked(value : String) -> RouterSourceEnum {
  match value {
    "cache" => RouterSourceEnum::Cache
    "fetch-event" => RouterSourceEnum::FetchEvent
    "network" => RouterSourceEnum::Network
    "race-network-and-fetch-handler" =>
      RouterSourceEnum::RaceNetworkAndFetchHandler
    _ => abort("unknown RouterSourceEnum enum value")
  }
}

///|
pub fn RouterSourceEnum::value(self : RouterSourceEnum) -> String {
  match self {
    RouterSourceEnum::Cache => "cache"
    RouterSourceEnum::FetchEvent => "fetch-event"
    RouterSourceEnum::Network => "network"
    RouterSourceEnum::RaceNetworkAndFetchHandler =>
      "race-network-and-fetch-handler"
  }
}

///|
pub impl FromJsAny for RouterSourceEnum with from_js_any(value : JsAny) -> RouterSourceEnum {
  RouterSourceEnum::from_unchecked(value)
}
