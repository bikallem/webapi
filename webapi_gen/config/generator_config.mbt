///|
/// Generator configuration loaded from 'config.json'.
pub struct GeneratorConfig {
  core_specs : Array[String]
  core_interfaces : Array[String]
  excluded_callbacks : Array[String]
  excluded_typedefs : Array[String]
  excluded_dictionary_prefixes : Array[String]
} derive(Show, Eq, ToJson, FromJson)

///|
pub fn load_config_from_string(content : String) -> GeneratorConfig raise {
  let json = @json.parse(content) catch {
    e => fail("Invalid config json: \{e}")
  }
  @json.from_json(json) catch {
    e => fail("failed to parse config json: \{e}")
  }
}

///|
test "GeneratorConfig roundtrip via JSON" {
  let cfg : GeneratorConfig = {
    core_specs: ["dom", "html"],
    core_interfaces: ["Element", "Node"],
    excluded_callbacks: ["MutationCallback"],
    excluded_typedefs: ["EventHandler"],
    excluded_dictionary_prefixes: ["ElementCreationOptions"],
  }
  let json = cfg.to_json().stringify()
  let parsed : GeneratorConfig = @json.parse(json) |> @json.from_json
  assert_eq(cfg, parsed)
}

///|
test "load_from_string with invalid JSON raises" {
  let invalid_json = "{ invalid json }"
  try {
    let _ : GeneratorConfig = load_config_from_string(invalid_json)
    fail("expected error")
  } catch {
    e => assert_true(e.to_string().contains("Invalid config json"))
  }
}

///|
test "load_from_string with valid JSON" {
  let valid_json =
    #|{
    #| "core_specs": ["dom", "html"],
    #| "core_interfaces": ["Element", "Node"],
    #|  "excluded_callbacks": ["MutationCallback"],
    #|  "excluded_typedefs": ["EventHandler"],
    #|  "excluded_dictionary_prefixes": ["ElementCreationOptions"]
    #|}
  let cfg = load_config_from_string(valid_json)
  assert_eq(cfg, {
    core_specs: ["dom", "html"],
    core_interfaces: ["Element", "Node"],
    excluded_callbacks: ["MutationCallback"],
    excluded_typedefs: ["EventHandler"],
    excluded_dictionary_prefixes: ["ElementCreationOptions"],
  })
}

///|
test "load_from_string with empty value uses defaults" {
  let empty_json =
    #|{
    #| "core_specs": [],
    #| "core_interfaces": [],
    #|  "excluded_callbacks": [],
    #|  "excluded_typedefs": [],
    #|  "excluded_dictionary_prefixes": []
    #|}
  let cfg = load_config_from_string(empty_json)
  assert_eq(cfg, {
    core_specs: [],
    core_interfaces: [],
    excluded_callbacks: [],
    excluded_typedefs: [],
    excluded_dictionary_prefixes: [],
  })
}
