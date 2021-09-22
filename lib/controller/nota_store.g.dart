// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nota_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NotaStore on _NotaStore, Store {
  final _$matriculaAtom = Atom(name: '_NotaStore.matricula');

  @override
  String get matricula {
    _$matriculaAtom.reportRead();
    return super.matricula;
  }

  @override
  set matricula(String value) {
    _$matriculaAtom.reportWrite(value, super.matricula, () {
      super.matricula = value;
    });
  }

  final _$disciplinaAtom = Atom(name: '_NotaStore.disciplina');

  @override
  String get disciplina {
    _$disciplinaAtom.reportRead();
    return super.disciplina;
  }

  @override
  set disciplina(String value) {
    _$disciplinaAtom.reportWrite(value, super.disciplina, () {
      super.disciplina = value;
    });
  }

  final _$avaliacaoAtom = Atom(name: '_NotaStore.avaliacao');

  @override
  String get avaliacao {
    _$avaliacaoAtom.reportRead();
    return super.avaliacao;
  }

  @override
  set avaliacao(String value) {
    _$avaliacaoAtom.reportWrite(value, super.avaliacao, () {
      super.avaliacao = value;
    });
  }

  final _$pesoAtom = Atom(name: '_NotaStore.peso');

  @override
  num get peso {
    _$pesoAtom.reportRead();
    return super.peso;
  }

  @override
  set peso(num value) {
    _$pesoAtom.reportWrite(value, super.peso, () {
      super.peso = value;
    });
  }

  final _$errorAtom = Atom(name: '_NotaStore.error');

  @override
  String get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(String value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  final _$_NotaStoreActionController = ActionController(name: '_NotaStore');

  @override
  void setMatricula(String value) {
    final _$actionInfo = _$_NotaStoreActionController.startAction(
        name: '_NotaStore.setMatricula');
    try {
      return super.setMatricula(value);
    } finally {
      _$_NotaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDisciplina(String value) {
    final _$actionInfo = _$_NotaStoreActionController.startAction(
        name: '_NotaStore.setDisciplina');
    try {
      return super.setDisciplina(value);
    } finally {
      _$_NotaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAvaliacao(String value) {
    final _$actionInfo = _$_NotaStoreActionController.startAction(
        name: '_NotaStore.setAvaliacao');
    try {
      return super.setAvaliacao(value);
    } finally {
      _$_NotaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPeso(num value) {
    final _$actionInfo =
        _$_NotaStoreActionController.startAction(name: '_NotaStore.setPeso');
    try {
      return super.setPeso(value);
    } finally {
      _$_NotaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNotas(List<Nota> notas) {
    final _$actionInfo =
        _$_NotaStoreActionController.startAction(name: '_NotaStore.setNotas');
    try {
      return super.setNotas(notas);
    } finally {
      _$_NotaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(String value) {
    final _$actionInfo =
        _$_NotaStoreActionController.startAction(name: '_NotaStore.setError');
    try {
      return super.setError(value);
    } finally {
      _$_NotaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
matricula: ${matricula},
disciplina: ${disciplina},
avaliacao: ${avaliacao},
peso: ${peso},
error: ${error}
    ''';
  }
}
