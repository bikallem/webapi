///|
/// Inheritance resolver - sorts definitions by inheritance order
/// ensuring base types are generated before derived types

///|
/// Get type name from definition
fn get_def_name(def : @idl_parser.Definition) -> String {
  match def {
    @idl_parser.Definition::InterfaceDef(iface) => iface.name
    @idl_parser.Definition::DictionaryDef(dict) => dict.name
    @idl_parser.Definition::EnumDef(enum_def) => enum_def.name
    @idl_parser.Definition::CallbackDef(callback) => callback.name
  }
}

///|
/// Build a dependency graph from definitions
/// Returns Map[String, String?] where key is type name, value is parent (or None)
fn build_dependency_graph(
  definitions : Array[@idl_parser.Definition]
) -> Map[String, String?] {
  let graph : Map[String, String?] = {}
  
  for def in definitions {
    match def {
      @idl_parser.Definition::InterfaceDef(iface) => {
        graph[iface.name] = iface.extends
      }
      @idl_parser.Definition::DictionaryDef(dict) => {
        graph[dict.name] = None
      }
      _ => {
        // Enums and callbacks don't have inheritance
        ()
      }
    }
  }
  
  graph
}

///|
/// Topological sort using DFS with cycle detection
/// Returns sorted definitions (base types before derived types)
pub fn resolve_inheritance_order(
  definitions : Array[@idl_parser.Definition]
) -> Array[@idl_parser.Definition] {
  let graph = build_dependency_graph(definitions)
  let sorted : Array[@idl_parser.Definition] = []
  let visited : Map[String, Bool] = {}
  let rec_stack : Map[String, Bool] = {}
  let has_cycle : Ref[Bool] = Ref::new(false)
  
  // Helper to find definition by name
  fn find_def(
    name : String,
    defs : Array[@idl_parser.Definition]
  ) -> @idl_parser.Definition? {
    for def in defs {
      if get_def_name(def) == name {
        return Some(def)
      }
    }
    None
  }
  
  // DFS visit - processes parent first, then adds node
  fn visit(
    name : String,
    defs : Map[String, String?],
    visited : Map[String, Bool],
    rec_stack : Map[String, Bool],
    sorted : Array[@idl_parser.Definition],
    all_defs : Array[@idl_parser.Definition],
    cycle : Ref[Bool]
  ) -> Unit {
    if cycle.val {
      return
    }
    
    if visited.get(name) is Some(true) {
      return
    }
    
    if rec_stack.get(name) is Some(true) {
      cycle.val = true
      return
    }
    
    rec_stack[name] = true
    
    // Visit parent first
    match defs.get(name) {
      Some(Some(parent)) => {
        if visited.get(parent) is None {
          visit(parent, defs, visited, rec_stack, sorted, all_defs, cycle)
        }
      }
      _ => ()
    }
    
    rec_stack[name] = false
    visited[name] = true
    
    // Add this definition to sorted list
    match find_def(name, all_defs) {
      Some(def) => sorted.push(def)
      None => ()
    }
  }
  
  // Process all definitions
  for def in definitions {
    let name = get_def_name(def)
    if visited.get(name) is None {
      visit(name, graph, visited, rec_stack, sorted, definitions, has_cycle)
    }
  }
  
  // Return sorted order if no cycle, otherwise return original
  if has_cycle.val {
    definitions
  } else {
    sorted
  }
}
