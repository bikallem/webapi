/**
 * Internal type definitions for parsed Web IDL
 */

export interface ParsedParam {
  name: string;
  type: ParsedType;
  optional: boolean;
  default?: string;
  variadic: boolean;
}

export interface ParsedType {
  type:
  | "primitive"
  | "reference"
  | "sequence"
  | "promise"
  | "union"
  | "nullable"
  | "record"
  | "frozen-array"
  | "any"
  | "void";
  name?: string; // For primitive and reference types
  elementType?: ParsedType; // For sequence, promise, nullable, frozen-array
  memberTypes?: ParsedType[]; // For union types
  keyType?: ParsedType; // For record types
  valueType?: ParsedType; // For record types
}

export interface ParsedMethod {
  name: string;
  params: ParsedParam[];
  returnType: ParsedType;
  static: boolean;
  special?: "getter" | "setter" | "deleter" | "stringifier";
}

export interface ParsedProperty {
  name: string;
  type: ParsedType;
  readonly: boolean;
  static: boolean;
}

export interface ParsedConstant {
  name: string;
  type: ParsedType;
  value: string;
}

export interface ParsedConstructor {
  params: ParsedParam[];
  isHTMLConstructor: boolean; // True if marked with [HTMLConstructor]
}

export interface ParsedInterface {
  name: string;
  inheritance?: string;
  mixins: string[];
  methods: ParsedMethod[];
  properties: ParsedProperty[];
  constants: ParsedConstant[];
  constructors: ParsedConstructor[];
  partial: boolean;
  isCallbackInterface?: boolean; // True if this is a callback interface
  idlSource?: string; // Original WebIDL source text
}

export interface ParsedDictionary {
  name: string;
  inheritance?: string;
  members: ParsedDictionaryMember[];
  partial: boolean;
  idlSource?: string; // Original WebIDL source text
}

export interface ParsedDictionaryMember {
  name: string;
  type: ParsedType;
  required: boolean;
  default?: string;
}

export interface ParsedEnum {
  name: string;
  values: string[];
  idlSource?: string; // Original WebIDL source text
}

export interface ParsedCallback {
  name: string;
  params: ParsedParam[];
  returnType: ParsedType;
  idlSource?: string; // Original WebIDL source text
}

export interface ParsedTypedef {
  name: string;
  type: ParsedType;
  idlSource?: string; // Original WebIDL source text
}

export interface ParsedIdl {
  interfaces: Map<string, ParsedInterface>;
  dictionaries: Map<string, ParsedDictionary>;
  enums: Map<string, ParsedEnum>;
  callbacks: Map<string, ParsedCallback>;
  typedefs: Map<string, ParsedTypedef>;
  includes: Array<{ target: string; mixin: string }>;
}

/**
 * Unwrap a nullable type to get the underlying type
 * Example: nullable String -> String
 */
export function unwrapNullableType(type: ParsedType): ParsedType {
  if (type.type === "nullable" && type.elementType) {
    return type.elementType;
  }
  return type;
}

/**
 * Get the reference type name if this is a reference type
 */
export function getReferenceTypeName(type: ParsedType): string | undefined {
  if (type.type === "reference" && type.name) {
    return type.name;
  }
  return undefined;
}
