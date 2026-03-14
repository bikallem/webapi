// Do not edit. This file is generated.
// MoonBit type: ImageSmoothingQuality
// Specifications: html.idl

pub(all) enum ImageSmoothingQuality {
  Low
  Medium
  High
} derive(Eq)

pub impl Show for ImageSmoothingQuality with output(self : ImageSmoothingQuality, logger : &Logger) -> Unit {
  match self {
    ImageSmoothingQuality::Low => logger.write_string("Low")
    ImageSmoothingQuality::Medium => logger.write_string("Medium")
    ImageSmoothingQuality::High => logger.write_string("High")
  }
}

pub impl TJsValue for ImageSmoothingQuality with to_js(self: ImageSmoothingQuality) -> JsValue {
  match self {
    ImageSmoothingQuality::Low => TJsValue::to_js("low")
    ImageSmoothingQuality::Medium => TJsValue::to_js("medium")
    ImageSmoothingQuality::High => TJsValue::to_js("high")
  }
}

pub fn ImageSmoothingQuality::from(value: String) -> ImageSmoothingQuality? {
  match value {
    "low" => Some(ImageSmoothingQuality::Low)
    "medium" => Some(ImageSmoothingQuality::Medium)
    "high" => Some(ImageSmoothingQuality::High)
    _ => None
  }
}

fn ImageSmoothingQuality::from_unchecked(value: String) -> ImageSmoothingQuality {
  match value {
    "low" => ImageSmoothingQuality::Low
    "medium" => ImageSmoothingQuality::Medium
    "high" => ImageSmoothingQuality::High
    _ => ImageSmoothingQuality::Low
  }
}

pub fn ImageSmoothingQuality::value(self: ImageSmoothingQuality) -> String {
  match self {
    ImageSmoothingQuality::Low => "low"
    ImageSmoothingQuality::Medium => "medium"
    ImageSmoothingQuality::High => "high"
  }
}

pub impl FromJsAny for ImageSmoothingQuality with from_js_any(value : JsAny) -> ImageSmoothingQuality {
  ImageSmoothingQuality::from_unchecked(value)
}