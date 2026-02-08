// Do not edit. This file is generated.
// MoonBit type: RequestDestination
// Specifications: fetch.idl

pub(all) enum RequestDestination {
  Empty
  Audio
  Audioworklet
  Document
  Embed
  Font
  Frame
  Iframe
  Image
  Json
  Manifest
  Object
  Paintworklet
  Report
  Script
  Sharedworker
  Style
  Track
  Video
  Worker
  Xslt
} derive(Eq,Show)

pub impl TJsValue for RequestDestination with to_js(self: RequestDestination) -> JsValue {
  match self {
    RequestDestination::Empty => TJsValue::to_js("")
    RequestDestination::Audio => TJsValue::to_js("audio")
    RequestDestination::Audioworklet => TJsValue::to_js("audioworklet")
    RequestDestination::Document => TJsValue::to_js("document")
    RequestDestination::Embed => TJsValue::to_js("embed")
    RequestDestination::Font => TJsValue::to_js("font")
    RequestDestination::Frame => TJsValue::to_js("frame")
    RequestDestination::Iframe => TJsValue::to_js("iframe")
    RequestDestination::Image => TJsValue::to_js("image")
    RequestDestination::Json => TJsValue::to_js("json")
    RequestDestination::Manifest => TJsValue::to_js("manifest")
    RequestDestination::Object => TJsValue::to_js("object")
    RequestDestination::Paintworklet => TJsValue::to_js("paintworklet")
    RequestDestination::Report => TJsValue::to_js("report")
    RequestDestination::Script => TJsValue::to_js("script")
    RequestDestination::Sharedworker => TJsValue::to_js("sharedworker")
    RequestDestination::Style => TJsValue::to_js("style")
    RequestDestination::Track => TJsValue::to_js("track")
    RequestDestination::Video => TJsValue::to_js("video")
    RequestDestination::Worker => TJsValue::to_js("worker")
    RequestDestination::Xslt => TJsValue::to_js("xslt")
  }
}

pub fn RequestDestination::from(value: String) -> RequestDestination? {
  match value {
    "" => Some(RequestDestination::Empty)
    "audio" => Some(RequestDestination::Audio)
    "audioworklet" => Some(RequestDestination::Audioworklet)
    "document" => Some(RequestDestination::Document)
    "embed" => Some(RequestDestination::Embed)
    "font" => Some(RequestDestination::Font)
    "frame" => Some(RequestDestination::Frame)
    "iframe" => Some(RequestDestination::Iframe)
    "image" => Some(RequestDestination::Image)
    "json" => Some(RequestDestination::Json)
    "manifest" => Some(RequestDestination::Manifest)
    "object" => Some(RequestDestination::Object)
    "paintworklet" => Some(RequestDestination::Paintworklet)
    "report" => Some(RequestDestination::Report)
    "script" => Some(RequestDestination::Script)
    "sharedworker" => Some(RequestDestination::Sharedworker)
    "style" => Some(RequestDestination::Style)
    "track" => Some(RequestDestination::Track)
    "video" => Some(RequestDestination::Video)
    "worker" => Some(RequestDestination::Worker)
    "xslt" => Some(RequestDestination::Xslt)
    _ => None
  }
}