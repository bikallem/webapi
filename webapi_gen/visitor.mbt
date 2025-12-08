///|
/// Base visitor trait for traversing WebIDL definitions.
pub(open) trait DefinitionVisitor {
  visit_definitions(Self, Array[Definition]) -> Unit = _
  visit_definition(Self, Definition) -> Unit = _

  // InterfaceDefinition visitors
  visit_interface(Self, InterfaceDefinition) -> Unit = _
  visit_partial_interface(Self, PartialInterfaceDefinition) -> Unit = _
  visit_mixin(Self, MixinDefinition) -> Unit = _
  visit_partial_mixin(Self, PartialMixinDefinition) -> Unit = _
  visit_dictionary(Self, DictionaryDefinition) -> Unit = _
  visit_partial_dictionary(Self, PartialDictionaryDefinition) -> Unit = _
  visit_enum(Self, EnumDefinition) -> Unit = _
  visit_typedef(Self, TypedefDefinition) -> Unit = _
  visit_callback_function(Self, CallbackFunctionDefinition) -> Unit = _
  visit_callback_interface(Self, CallbackInterfaceDefinition) -> Unit = _
  visit_includes(Self, IncludesStatement) -> Unit = _
  visit_interface_member(Self, InterfaceMember) -> Unit = _
  visit_dictionary_member(Self, DictionaryMember) -> Unit = _

  // Type visitors
  visit_type(Self, Type) -> Unit = _

  // StringType visitor
  visit_string_type(Self, StringType) -> Unit = _

  // Argument visitor
  visit_argument(Self, Argument) -> Unit = _

  // InterfaceMember visitors
  visit_const(Self, ConstMember) -> Unit = _
  visit_attribute(Self, AttributeMember) -> Unit = _
  visit_operation(Self, OperationMember) -> Unit = _
  visit_constructor(Self, ConstructorMember) -> Unit = _
  visit_iterable(Self, IterableMember) -> Unit = _
  visit_async_iterable(Self, AsyncIterableMember) -> Unit = _
  visit_maplike(Self, MaplikeMember) -> Unit = _
  visit_setlike(Self, SetlikeMember) -> Unit = _
  visit_stringifier(Self, StringifierMember) -> Unit = _
}

///|
impl DefinitionVisitor with visit_definitions(self, defs) -> Unit {
  for def in defs {
    self.visit_definition(def)
  }
}

///|
impl DefinitionVisitor with visit_definition(self, def) -> Unit {
  match def {
    Interface(iface) => self.visit_interface(iface)
    PartialInterface(piface) => self.visit_partial_interface(piface)
    Mixin(mxn) => self.visit_mixin(mxn)
    PartialMixin(pmxn) => self.visit_partial_mixin(pmxn)
    Namespace(_) => () // namespaces support is disabled for now
    PartialNamespace(_) => () // namespaces support is disabled for now
    Dictionary(dict) => self.visit_dictionary(dict)
    PartialDictionary(pdict) => self.visit_partial_dictionary(pdict)
    Enum(e) => self.visit_enum(e)
    Typedef(td) => self.visit_typedef(td)
    CallbackFunction(cbf) => self.visit_callback_function(cbf)
    CallbackInterface(cbi) => self.visit_callback_interface(cbi)
    Includes(inc) => self.visit_includes(inc)
  }
}

///|
impl DefinitionVisitor with visit_interface(self, iface) -> Unit {
  for memb in iface.members {
    self.visit_interface_member(memb)
  }
}

///|
impl DefinitionVisitor with visit_partial_interface(self, piface) -> Unit {
  for memb in piface.members {
    self.visit_interface_member(memb)
  }
}

///|
impl DefinitionVisitor with visit_mixin(self, mxn) -> Unit {
  for memb in mxn.members {
    self.visit_interface_member(memb)
  }
}

///|
impl DefinitionVisitor with visit_partial_mixin(self, pmxn) -> Unit {
  for memb in pmxn.members {
    self.visit_interface_member(memb)
  }
}

///|
impl DefinitionVisitor with visit_dictionary(self, dict) -> Unit {
  for memb in dict.members {
    self.visit_dictionary_member(memb)
  }
}

///|
impl DefinitionVisitor with visit_partial_dictionary(self, pdict) -> Unit {
  for memb in pdict.members {
    self.visit_dictionary_member(memb)
  }
}

///|
impl DefinitionVisitor with visit_enum(_self, _e) -> Unit {

}

///|
impl DefinitionVisitor with visit_typedef(self, td) -> Unit {
  self.visit_type(td.type_)
}

///|
impl DefinitionVisitor with visit_callback_function(self, cbf) -> Unit {
  self.visit_type(cbf.return_type)
  for arg in cbf.arguments {
    self.visit_argument(arg)
  }
}

///|
impl DefinitionVisitor with visit_callback_interface(self, cbi) -> Unit {
  for memb in cbi.members {
    self.visit_interface_member(memb)
  }
}

///|
impl DefinitionVisitor with visit_includes(_self, _inc) -> Unit {

}

///|
impl DefinitionVisitor with visit_interface_member(self, memb) -> Unit {
  match memb {
    Const(c) => self.visit_const(c)
    Attribute(a) => self.visit_attribute(a)
    Operation(o) => self.visit_operation(o)
    Constructor(cnstr) => self.visit_constructor(cnstr)
    Iterable(it) => self.visit_iterable(it)
    AsyncIterable(ait) => self.visit_async_iterable(ait)
    Maplike(ml) => self.visit_maplike(ml)
    Setlike(sl) => self.visit_setlike(sl)
    Stringifier(strg) => self.visit_stringifier(strg)
  }
}

///|
impl DefinitionVisitor with visit_dictionary_member(_self, _memb) -> Unit {

}

///|
impl DefinitionVisitor with visit_type(self, typ) -> Unit {
  match typ {
    Union(types) =>
      for t in types {
        self.visit_type(t)
      }
    Record(key, val) => {
      self.visit_string_type(key)
      self.visit_type(val)
    }
    Promise(typ)
    | ObservableArray(typ)
    | FrozenArray(typ)
    | Sequence(typ)
    | Nullable(typ) => self.visit_type(typ)
    _ => () // Primitive types
  }
}

///|
impl DefinitionVisitor with visit_string_type(_self, _str_type) -> Unit {

}

///|
impl DefinitionVisitor with visit_argument(self, arg) -> Unit {
  self.visit_type(arg.type_)
}

///|
impl DefinitionVisitor with visit_const(_self, _c) -> Unit {

}

///|
impl DefinitionVisitor with visit_attribute(self, attr) -> Unit {
  self.visit_type(attr.type_)
}

///|
impl DefinitionVisitor with visit_operation(self, op) -> Unit {
  self.visit_type(op.return_type)
  for arg in op.arguments {
    self.visit_argument(arg)
  }
}

///|
impl DefinitionVisitor with visit_constructor(self, cnstr) -> Unit {
  for arg in cnstr.arguments {
    self.visit_argument(arg)
  }
}

///|
impl DefinitionVisitor with visit_iterable(self, it) -> Unit {
  self.visit_type(it.value_type)
}

///|
impl DefinitionVisitor with visit_async_iterable(self, ait) -> Unit {
  self.visit_type(ait.value_type)
}

///|
impl DefinitionVisitor with visit_maplike(self, ml) -> Unit {
  self.visit_type(ml.key_type)
  self.visit_type(ml.value_type)
}

///|
impl DefinitionVisitor with visit_setlike(self, sl) -> Unit {
  self.visit_type(sl.value_type)
}

///|
impl DefinitionVisitor with visit_stringifier(_self, _strg) -> Unit {

}
