// Do not edit. This file is generated.
// MoonBit type: WellKnownDirectory
// Specifications: file-system-access.idl

pub(all) enum WellKnownDirectory {
  Desktop
  Documents
  Downloads
  Music
  Pictures
  Videos
} derive(Eq)

pub impl Show for WellKnownDirectory with output(self : WellKnownDirectory, logger : &Logger) -> Unit {
  match self {
    WellKnownDirectory::Desktop => logger.write_string("Desktop")
    WellKnownDirectory::Documents => logger.write_string("Documents")
    WellKnownDirectory::Downloads => logger.write_string("Downloads")
    WellKnownDirectory::Music => logger.write_string("Music")
    WellKnownDirectory::Pictures => logger.write_string("Pictures")
    WellKnownDirectory::Videos => logger.write_string("Videos")
  }
}

pub impl TJsValue for WellKnownDirectory with to_js(self: WellKnownDirectory) -> JsValue {
  match self {
    WellKnownDirectory::Desktop => TJsValue::to_js("desktop")
    WellKnownDirectory::Documents => TJsValue::to_js("documents")
    WellKnownDirectory::Downloads => TJsValue::to_js("downloads")
    WellKnownDirectory::Music => TJsValue::to_js("music")
    WellKnownDirectory::Pictures => TJsValue::to_js("pictures")
    WellKnownDirectory::Videos => TJsValue::to_js("videos")
  }
}

pub fn WellKnownDirectory::from(value: String) -> WellKnownDirectory? {
  match value {
    "desktop" => Some(WellKnownDirectory::Desktop)
    "documents" => Some(WellKnownDirectory::Documents)
    "downloads" => Some(WellKnownDirectory::Downloads)
    "music" => Some(WellKnownDirectory::Music)
    "pictures" => Some(WellKnownDirectory::Pictures)
    "videos" => Some(WellKnownDirectory::Videos)
    _ => None
  }
}

fn WellKnownDirectory::from_unchecked(value: String) -> WellKnownDirectory {
  match value {
    "desktop" => WellKnownDirectory::Desktop
    "documents" => WellKnownDirectory::Documents
    "downloads" => WellKnownDirectory::Downloads
    "music" => WellKnownDirectory::Music
    "pictures" => WellKnownDirectory::Pictures
    "videos" => WellKnownDirectory::Videos
    _ => abort("unknown WellKnownDirectory enum value")
  }
}

pub fn WellKnownDirectory::value(self: WellKnownDirectory) -> String {
  match self {
    WellKnownDirectory::Desktop => "desktop"
    WellKnownDirectory::Documents => "documents"
    WellKnownDirectory::Downloads => "downloads"
    WellKnownDirectory::Music => "music"
    WellKnownDirectory::Pictures => "pictures"
    WellKnownDirectory::Videos => "videos"
  }
}

pub impl FromJsAny for WellKnownDirectory with from_js_any(value : JsAny) -> WellKnownDirectory {
  WellKnownDirectory::from_unchecked(value)
}