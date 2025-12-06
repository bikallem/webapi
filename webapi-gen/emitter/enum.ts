import { ParsedEnum } from "../parser.js";
import { toSnakeCase } from "../mapper.js";

/**
 * Convert enum value string to MoonBit variant name
 * e.g., "nonzero" -> "Nonzero", "source-over" -> "SourceOver"
 * Empty string becomes "Empty"
 * Slash-separated values like "text/html" -> "TextHtml"
 * Plus-separated values like "xhtml+xml" -> "XhtmlXml"
 * Values starting with digits get prefixed with "V" (e.g., "2d" -> "V2d")
 */
function toVariantName(value: string): string {
  // Handle empty string
  if (value === "") {
    return "Empty";
  }
  // Split by `-`, `/`, and `+` and join as PascalCase
  let name = value
    .split(/[-/+]/)
    .map((part) => part.charAt(0).toUpperCase() + part.slice(1).toLowerCase())
    .join("");

  // If the name starts with a digit, prefix with 'V'
  if (/^\d/.test(name)) {
    name = "V" + name;
  }

  return name;
}

/**
 * Emit a MoonBit enum type for a WebIDL enum
 *
 * WebIDL enums are string-backed, so we emit:
 * 1. A MoonBit enum with variants for each value
 * 2. TJsValue impl for to_js() conversion
 * 3. from() static method for reverse conversion (takes String)
 */
export function emitEnum(enumDef: ParsedEnum): string {
  const lines: string[] = [];
  const typeName = enumDef.name;

  // Header comment
  lines.push(`// Auto-generated MoonBit bindings for ${typeName}`);
  lines.push("");
  lines.push("// Do not edit manually");
  lines.push("");

  // Emit enum type
  lines.push("///|");
  lines.push(`pub enum ${typeName} {`);
  for (const value of enumDef.values) {
    const variantName = toVariantName(value);
    lines.push(`  ${variantName}`);
  }
  lines.push("} derive(Eq)");
  lines.push("");

  // Emit to_js conversion - use TJsValue::to_js to avoid ambiguity
  lines.push("///|");
  lines.push(`pub impl TJsValue for ${typeName} with to_js(self) {`);
  lines.push("  match self {");
  for (const value of enumDef.values) {
    const variantName = toVariantName(value);
    lines.push(
      `    ${typeName}::${variantName} => TJsValue::to_js("${value}")`,
    );
  }
  lines.push("  }");
  lines.push("}");
  lines.push("");

  // Emit from() conversion - accepts String directly since all enums are string-backed
  lines.push("///|");
  lines.push(`pub fn ${typeName}::from(value : String) -> ${typeName}? {`);
  lines.push("  match value {");
  for (const value of enumDef.values) {
    const variantName = toVariantName(value);
    lines.push(`    "${value}" => Some(${typeName}::${variantName})`);
  }
  lines.push("    _ => None");
  lines.push("  }");
  lines.push("}");
  lines.push("");

  // Emit Show impl for debugging
  lines.push("///|");
  lines.push(`pub impl Show for ${typeName} with output(self, logger) {`);
  lines.push("  match self {");
  for (const value of enumDef.values) {
    const variantName = toVariantName(value);
    lines.push(
      `    ${typeName}::${variantName} => logger.write_string("${value}")`,
    );
  }
  lines.push("  }");
  lines.push("}");

  return lines.join("\n");
}

/**
 * Get the filename for an enum
 */
export function getEnumFilename(name: string): string {
  return `${toSnakeCase(name)}.mbt`;
}
