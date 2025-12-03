/**
 * Utility functions for name conversion and keyword escaping
 */

/**
 * Convert camelCase or PascalCase to snake_case
 * Examples:
 *   addEventListener -> add_event_listener
 *   getElementById -> get_element_by_id
 *   XMLHttpRequest -> xml_http_request
 */
export function toSnakeCase(name: string): string {
  return name
    .replace(/([A-Z]+)([A-Z][a-z])/g, "$1_$2")
    .replace(/([a-z\d])([A-Z])/g, "$1_$2")
    .replace(/-/g, "_")
    .toLowerCase();
}

/**
 * Convert to PascalCase (for type names)
 * Examples:
 *   event_target -> EventTarget
 *   html_element -> HtmlElement
 */
export function toPascalCase(name: string): string {
  return name
    .split(/[_-]/)
    .map((part) => part.charAt(0).toUpperCase() + part.slice(1).toLowerCase())
    .join("");
}

/**
 * Convert to camelCase (for method names in JS)
 * Examples:
 *   add_event_listener -> addEventListener
 */
export function toCamelCase(name: string): string {
  const pascal = toPascalCase(name);
  return pascal.charAt(0).toLowerCase() + pascal.slice(1);
}

/**
 * MoonBit reserved keywords that need escaping
 */
const MOONBIT_KEYWORDS = new Set([
  "type",
  "struct",
  "enum",
  "trait",
  "impl",
  "fn",
  "let",
  "mut",
  "pub",
  "priv",
  "if",
  "else",
  "match",
  "while",
  "for",
  "break",
  "continue",
  "return",
  "true",
  "false",
  "self",
  "Self",
  "as",
  "is",
  "in",
  "not",
  "and",
  "or",
  "test",
  "init",
  "main",
  "derive",
  "extern",
  "loop",
  "guard",
  "raise",
  "try",
  "catch",
  "throw",
]);

/**
 * Escape MoonBit keywords by appending underscore
 * Examples:
 *   type -> type_
 *   match -> match_
 */
export function escapeKeyword(name: string): string {
  if (MOONBIT_KEYWORDS.has(name)) {
    return name + "_";
  }
  return name;
}

/**
 * Escape a parameter name (combines snake_case conversion and keyword escaping)
 */
export function escapeParamName(name: string): string {
  return escapeKeyword(toSnakeCase(name));
}

/**
 * Generate a valid MoonBit identifier from any string
 */
export function toMoonBitIdent(name: string): string {
  // First convert to snake_case
  let ident = toSnakeCase(name);
  // Remove any invalid characters
  ident = ident.replace(/[^a-z0-9_]/g, "_");
  // Ensure it doesn't start with a number
  if (/^[0-9]/.test(ident)) {
    ident = "_" + ident;
  }
  // Escape if it's a keyword
  return escapeKeyword(ident);
}

/**
 * Generate trait name from interface name
 * EventTarget -> TEventTarget
 */
export function toTraitName(interfaceName: string): string {
  return "T" + interfaceName;
}

/**
 * Generate FFI module name from interface name
 * EventTarget -> webapi_EventTarget
 */
export function toFfiModuleName(interfaceName: string): string {
  return "webapi_" + interfaceName;
}

/**
 * Indent each line of a string by the given number of spaces
 */
export function indent(str: string, spaces: number = 2): string {
  const indentation = " ".repeat(spaces);
  return str
    .split("\n")
    .map((line) => (line.trim() ? indentation + line : line))
    .join("\n");
}

/**
 * Join multiple code blocks with blank lines
 */
export function joinBlocks(...blocks: (string | undefined)[]): string {
  return blocks.filter((b) => b && b.trim()).join("\n\n");
}

/**
 * Format WebIDL source as MoonBit comments
 * Each line is prefixed with "// "
 */
export function formatIdlSourceAsComment(idlSource: string | undefined): string | undefined {
  if (!idlSource) return undefined;
  
  const lines = idlSource.split("\n");
  const commentLines = lines.map(line => `// ${line}`);
  return commentLines.join("\n");
}
