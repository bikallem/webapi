///|
/// Base visitor trait for traversing WebIDL definitions.
pub(open) trait WebIdlVisitor {
  visit(Self, Array[Definition]) -> Unit = _
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
  visit_include_statements(Self, IncludesStatement) -> Unit = _
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

  // CallbackInterfaceMember visitors
  visit_callback_interface_member(Self, CallbackInterfaceMember) -> Unit = _
}

///|
fn[T : WebIdlVisitor] default_visit_definitions(
  visitor : T,
  defs : Array[Definition],
) -> Unit {
  for def in defs {
    visitor.visit_definition(def)
  }
}

///|
impl WebIdlVisitor with visit(self, defs) -> Unit {
  default_visit_definitions(self, defs)
}

///|
fn[T : WebIdlVisitor] default_visit_definition(
  visitor : T,
  def : Definition,
) -> Unit {
  match def {
    Interface(iface) => visitor.visit_interface(iface)
    PartialInterface(piface) => visitor.visit_partial_interface(piface)
    Mixin(mxn) => visitor.visit_mixin(mxn)
    PartialMixin(pmxn) => visitor.visit_partial_mixin(pmxn)
    Namespace(_) => abort("namespaces support is disabled for now")
    PartialNamespace(_) => abort("namespaces support is disabled for now")
    Dictionary(dict) => visitor.visit_dictionary(dict)
    PartialDictionary(pdict) => visitor.visit_partial_dictionary(pdict)
    Enum(e) => visitor.visit_enum(e)
    Typedef(td) => visitor.visit_typedef(td)
    CallbackFunction(cbf) => visitor.visit_callback_function(cbf)
    CallbackInterface(cbi) => visitor.visit_callback_interface(cbi)
    Includes(inc) => visitor.visit_include_statements(inc)
  }
}

///|
impl WebIdlVisitor with visit_definition(self, def) -> Unit {
  default_visit_definition(self, def)
}

///|
fn[T : WebIdlVisitor] default_visit_interface(
  visitor : T,
  iface : InterfaceDefinition,
) -> Unit {
  for memb in iface.members {
    visitor.visit_interface_member(memb)
  }
}

///|
impl WebIdlVisitor with visit_interface(self, iface) -> Unit {
  default_visit_interface(self, iface)
}

///|
fn[T : WebIdlVisitor] default_visit_partial_interface(
  visitor : T,
  piface : PartialInterfaceDefinition,
) -> Unit {
  for memb in piface.members {
    visitor.visit_interface_member(memb)
  }
}

///|
impl WebIdlVisitor with visit_partial_interface(self, piface) -> Unit {
  default_visit_partial_interface(self, piface)
}

///|
fn[T : WebIdlVisitor] default_visit_mixin(
  visitor : T,
  mxn : MixinDefinition,
) -> Unit {
  for memb in mxn.members {
    visitor.visit_interface_member(memb)
  }
}

///|
impl WebIdlVisitor with visit_mixin(self, mxn) -> Unit {
  default_visit_mixin(self, mxn)
}

///|
fn[T : WebIdlVisitor] default_visit_partial_mixin(
  visitor : T,
  pmxn : PartialMixinDefinition,
) -> Unit {
  for memb in pmxn.members {
    visitor.visit_interface_member(memb)
  }
}

///|
impl WebIdlVisitor with visit_partial_mixin(self, pmxn) -> Unit {
  default_visit_partial_mixin(self, pmxn)
}

///|
fn[T : WebIdlVisitor] default_visit_dictionary(
  visitor : T,
  dict : DictionaryDefinition,
) -> Unit {
  for memb in dict.members {
    visitor.visit_dictionary_member(memb)
  }
}

///|
impl WebIdlVisitor with visit_dictionary(self, dict) -> Unit {
  default_visit_dictionary(self, dict)
}

///|
fn[T : WebIdlVisitor] default_visit_partial_dictionary(
  visitor : T,
  pdict : PartialDictionaryDefinition,
) -> Unit {
  for memb in pdict.members {
    visitor.visit_dictionary_member(memb)
  }
}

///|
impl WebIdlVisitor with visit_partial_dictionary(self, pdict) -> Unit {
  default_visit_partial_dictionary(self, pdict)
}

///|
impl WebIdlVisitor with visit_enum(_self, _e) -> Unit {

}

///|
impl WebIdlVisitor with visit_typedef(self, td) -> Unit {
  self.visit_type(td.type_)
}

///|
fn[T : WebIdlVisitor] default_visit_callback_function(
  visitor : T,
  cbf : CallbackFunctionDefinition,
) -> Unit {
  visitor.visit_type(cbf.return_type)
  for arg in cbf.arguments {
    visitor.visit_argument(arg)
  }
}

///|
impl WebIdlVisitor with visit_callback_function(self, cbf) -> Unit {
  default_visit_callback_function(self, cbf)
}

///|
fn[T : WebIdlVisitor] default_visit_callback_interface(
  visitor : T,
  cbi : CallbackInterfaceDefinition,
) -> Unit {
  for memb in cbi.members {
    visitor.visit_callback_interface_member(memb)
  }
}

///|
impl WebIdlVisitor with visit_callback_interface(self, cbi) -> Unit {
  default_visit_callback_interface(self, cbi)
}

///|
impl WebIdlVisitor with visit_include_statements(_self, _inc) -> Unit {

}

///|
fn[T : WebIdlVisitor] default_visit_interface_member(
  visitor : T,
  memb : InterfaceMember,
) -> Unit {
  match memb {
    Const(c) => visitor.visit_const(c)
    Attribute(a) => visitor.visit_attribute(a)
    Operation(o) => visitor.visit_operation(o)
    Constructor(cnstr) => visitor.visit_constructor(cnstr)
    Iterable(it) => visitor.visit_iterable(it)
    AsyncIterable(ait) => visitor.visit_async_iterable(ait)
    Maplike(ml) => visitor.visit_maplike(ml)
    Setlike(sl) => visitor.visit_setlike(sl)
    Stringifier(strg) => visitor.visit_stringifier(strg)
  }
}

///|
impl WebIdlVisitor with visit_interface_member(self, memb) -> Unit {
  default_visit_interface_member(self, memb)
}

///|
impl WebIdlVisitor with visit_dictionary_member(_self, _memb) -> Unit {

}

///|
fn[T : WebIdlVisitor] default_visit_type(visitor : T, typ : Type) -> Unit {
  match typ {
    Union(types) =>
      for t in types {
        visitor.visit_type(t)
      }
    Record(key, val) => {
      visitor.visit_string_type(key)
      visitor.visit_type(val)
    }
    Promise(typ)
    | ObservableArray(typ)
    | FrozenArray(typ)
    | Sequence(typ)
    | Nullable(typ) => visitor.visit_type(typ)
    t => visitor.visit_type(t) // Primitive types
  }
}

///|
impl WebIdlVisitor with visit_type(self, typ) -> Unit {
  default_visit_type(self, typ)
}

///|
impl WebIdlVisitor with visit_string_type(_self, _str_type) -> Unit {

}

///|
impl WebIdlVisitor with visit_argument(self, arg) -> Unit {
  self.visit_type(arg.type_)
}

///|
impl WebIdlVisitor with visit_const(_self, _c) -> Unit {

}

///|
impl WebIdlVisitor with visit_attribute(self, attr) -> Unit {
  self.visit_type(attr.type_)
}

///|
fn[T : WebIdlVisitor] default_visit_operation(
  visitor : T,
  op : OperationMember,
) -> Unit {
  visitor.visit_type(op.return_type)
  for arg in op.arguments {
    visitor.visit_argument(arg)
  }
}

///|
impl WebIdlVisitor with visit_operation(self, op) -> Unit {
  default_visit_operation(self, op)
}

///|
fn[T : WebIdlVisitor] default_visit_constructor(
  visitor : T,
  cnstr : ConstructorMember,
) -> Unit {
  for arg in cnstr.arguments {
    visitor.visit_argument(arg)
  }
}

///|
impl WebIdlVisitor with visit_constructor(self, cnstr) -> Unit {
  default_visit_constructor(self, cnstr)
}

///|
impl WebIdlVisitor with visit_iterable(self, it) -> Unit {
  self.visit_type(it.value_type)
}

///|
impl WebIdlVisitor with visit_async_iterable(self, ait) -> Unit {
  self.visit_type(ait.value_type)
}

///|
fn[T : WebIdlVisitor] default_visit_maplike(
  visitor : T,
  ml : MaplikeMember,
) -> Unit {
  visitor.visit_type(ml.key_type)
  visitor.visit_type(ml.value_type)
}

///|
impl WebIdlVisitor with visit_maplike(self, ml) -> Unit {
  default_visit_maplike(self, ml)
}

///|
impl WebIdlVisitor with visit_setlike(self, sl) -> Unit {
  self.visit_type(sl.value_type)
}

///|
impl WebIdlVisitor with visit_stringifier(_self, _strg) -> Unit {

}

///|
impl WebIdlVisitor with visit_callback_interface_member(
  self,
  memb : CallbackInterfaceMember,
) -> Unit {
  match memb {
    Const(c) => self.visit_const(c)
    Operation(o) => self.visit_operation(o)
  }
}
