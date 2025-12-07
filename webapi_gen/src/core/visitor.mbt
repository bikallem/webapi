///|
/// Visitor trait for WebIDL AST
pub trait Visitor {
  visit_definition(Self, @webidl_parser.Definition) -> Unit
  visit_interface(Self, @webidl_parser.InterfaceDefinition) -> Unit
  visit_partial_interface(Self, @webidl_parser.PartialInterfaceDefinition) -> Unit
  visit_mixin(Self, @webidl_parser.MixinDefinition) -> Unit
  visit_partial_mixin(Self, @webidl_parser.PartialMixinDefinition) -> Unit
  visit_namespace(Self, @webidl_parser.NamespaceDefinition) -> Unit
  visit_partial_namespace(Self, @webidl_parser.PartialNamespaceDefinition) -> Unit
  visit_dictionary(Self, @webidl_parser.DictionaryDefinition) -> Unit
  visit_partial_dictionary(Self, @webidl_parser.PartialDictionaryDefinition) -> Unit
  visit_enum(Self, @webidl_parser.EnumDefinition) -> Unit
  visit_typedef(Self, @webidl_parser.TypedefDefinition) -> Unit
  visit_callback_function(Self, @webidl_parser.CallbackFunctionDefinition) -> Unit
  visit_callback_interface(Self, @webidl_parser.CallbackInterfaceDefinition) -> Unit
  visit_includes(Self, @webidl_parser.IncludesStatement) -> Unit
}

///|
/// Default implementation for Visitor (does nothing)
pub impl Visitor for Unit with visit_definition(self, def) {
  match def {
    Interface(d) => self.visit_interface(d)
    PartialInterface(d) => self.visit_partial_interface(d)
    Mixin(d) => self.visit_mixin(d)
    PartialMixin(d) => self.visit_partial_mixin(d)
    Namespace(d) => self.visit_namespace(d)
    PartialNamespace(d) => self.visit_partial_namespace(d)
    Dictionary(d) => self.visit_dictionary(d)
    PartialDictionary(d) => self.visit_partial_dictionary(d)
    Enum_(d) => self.visit_enum(d)
    Typedef(d) => self.visit_typedef(d)
    CallbackFunction(d) => self.visit_callback_function(d)
    CallbackInterface(d) => self.visit_callback_interface(d)
    Includes(d) => self.visit_includes(d)
  }
}

///|
pub impl Visitor for Unit with visit_interface(self, def) {

}

///|
pub impl Visitor for Unit with visit_partial_interface(self, def) {

}

///|
pub impl Visitor for Unit with visit_mixin(self, def) {

}

///|
pub impl Visitor for Unit with visit_partial_mixin(self, def) {

}

///|
pub impl Visitor for Unit with visit_namespace(self, def) {

}

///|
pub impl Visitor for Unit with visit_partial_namespace(self, def) {

}

///|
pub impl Visitor for Unit with visit_dictionary(self, def) {

}

///|
pub impl Visitor for Unit with visit_partial_dictionary(self, def) {

}

///|
pub impl Visitor for Unit with visit_enum(self, def) {

}

///|
pub impl Visitor for Unit with visit_typedef(self, def) {

}

///|
pub impl Visitor for Unit with visit_callback_function(self, def) {

}

///|
pub impl Visitor for Unit with visit_callback_interface(self, def) {

}

///|
pub impl Visitor for Unit with visit_includes(self, def) {

}
