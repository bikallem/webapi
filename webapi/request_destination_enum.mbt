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
} derive(Eq)

pub impl Show for RequestDestination with output(self : RequestDestination, logger : &Logger) -> Unit {
  match self {
    RequestDestination::Empty => logger.write_string("Empty")
    RequestDestination::Audio => logger.write_string("Audio")
    RequestDestination::Audioworklet => logger.write_string("Audioworklet")
    RequestDestination::Document => logger.write_string("Document")
    RequestDestination::Embed => logger.write_string("Embed")
    RequestDestination::Font => logger.write_string("Font")
    RequestDestination::Frame => logger.write_string("Frame")
    RequestDestination::Iframe => logger.write_string("Iframe")
    RequestDestination::Image => logger.write_string("Image")
    RequestDestination::Json => logger.write_string("Json")
    RequestDestination::Manifest => logger.write_string("Manifest")
    RequestDestination::Object => logger.write_string("Object")
    RequestDestination::Paintworklet => logger.write_string("Paintworklet")
    RequestDestination::Report => logger.write_string("Report")
    RequestDestination::Script => logger.write_string("Script")
    RequestDestination::Sharedworker => logger.write_string("Sharedworker")
    RequestDestination::Style => logger.write_string("Style")
    RequestDestination::Track => logger.write_string("Track")
    RequestDestination::Video => logger.write_string("Video")
    RequestDestination::Worker => logger.write_string("Worker")
    RequestDestination::Xslt => logger.write_string("Xslt")
  }
}

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

fn RequestDestination::from_unchecked(value: String) -> RequestDestination {
  match value {
    "" => RequestDestination::Empty
    "audio" => RequestDestination::Audio
    "audioworklet" => RequestDestination::Audioworklet
    "document" => RequestDestination::Document
    "embed" => RequestDestination::Embed
    "font" => RequestDestination::Font
    "frame" => RequestDestination::Frame
    "iframe" => RequestDestination::Iframe
    "image" => RequestDestination::Image
    "json" => RequestDestination::Json
    "manifest" => RequestDestination::Manifest
    "object" => RequestDestination::Object
    "paintworklet" => RequestDestination::Paintworklet
    "report" => RequestDestination::Report
    "script" => RequestDestination::Script
    "sharedworker" => RequestDestination::Sharedworker
    "style" => RequestDestination::Style
    "track" => RequestDestination::Track
    "video" => RequestDestination::Video
    "worker" => RequestDestination::Worker
    "xslt" => RequestDestination::Xslt
    _ => abort("unknown RequestDestination enum value")
  }
}

pub fn RequestDestination::value(self: RequestDestination) -> String {
  match self {
    RequestDestination::Empty => ""
    RequestDestination::Audio => "audio"
    RequestDestination::Audioworklet => "audioworklet"
    RequestDestination::Document => "document"
    RequestDestination::Embed => "embed"
    RequestDestination::Font => "font"
    RequestDestination::Frame => "frame"
    RequestDestination::Iframe => "iframe"
    RequestDestination::Image => "image"
    RequestDestination::Json => "json"
    RequestDestination::Manifest => "manifest"
    RequestDestination::Object => "object"
    RequestDestination::Paintworklet => "paintworklet"
    RequestDestination::Report => "report"
    RequestDestination::Script => "script"
    RequestDestination::Sharedworker => "sharedworker"
    RequestDestination::Style => "style"
    RequestDestination::Track => "track"
    RequestDestination::Video => "video"
    RequestDestination::Worker => "worker"
    RequestDestination::Xslt => "xslt"
  }
}

pub impl FromJsAny for RequestDestination with from_js_any(value : JsAny) -> RequestDestination {
  RequestDestination::from_unchecked(value)
}