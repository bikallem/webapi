/**
 * Union Type Utilities
 *
 * Shared functions for handling union type processing and generation
 */

import { ParsedType } from "../types.js";
import { mapIdlType } from "../mapping.js";

/**
 * Types that should be skipped in union trait implementations
 * These are types that are not commonly used or not defined in our bindings
 */
export const SKIP_UNION_TYPES = new Set([
  "TrustedType",
  "TrustedHTML",
  "TrustedScript",
  "TrustedScriptURL",
]);

/**
 * Get the MoonBit type representation of a union member
 */
export function getUnionMemberMoonbitType(memberType: ParsedType): string {
  let type = memberType;
  if (type.type === "nullable" && type.elementType) {
    type = type.elementType;
  }
  const mapped = mapIdlType(type);
  return mapped.moonbitType;
}

/**
 * Filter union members, removing duplicates, Unit, and skipped types
 * @param unionType The union type to filter
 * @param skipTypes Optional set of type names to skip (defaults to SKIP_UNION_TYPES)
 */
export function getFilteredUnionMembers(
  unionType: ParsedType,
  skipTypes: Set<string> = SKIP_UNION_TYPES,
): ParsedType[] {
  if (unionType.type !== "union" || !unionType.memberTypes) {
    return [unionType];
  }

  const seen = new Set<string>();
  const members: ParsedType[] = [];

  for (const member of unionType.memberTypes) {
    const moonbitType = getUnionMemberMoonbitType(member);
    if (
      moonbitType !== "Unit" &&
      !skipTypes.has(moonbitType) &&
      !seen.has(moonbitType)
    ) {
      seen.add(moonbitType);
      members.push(member);
    }
  }

  return members;
}

/**
 * Get the collapsed union type string if it can be simplified
 * Returns undefined if union cannot be collapsed
 */
export function getCollapsedUnionType(
  unionType: ParsedType,
): string | undefined {
  const members = getFilteredUnionMembers(unionType);

  if (members.length === 1) {
    return getUnionMemberMoonbitType(members[0]);
  }

  if (members.length === 2) {
    const moonbitTypes = members.map((m) => getUnionMemberMoonbitType(m));
    if (
      (moonbitTypes.includes("String") &&
        moonbitTypes.includes("ArrayBuffer")) ||
      (moonbitTypes.includes("ArrayBuffer") && moonbitTypes.includes("String"))
    ) {
      return `Result[String, ArrayBuffer]`;
    }
  }

  return undefined;
}
