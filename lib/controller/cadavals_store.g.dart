// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadavals_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CadAvalsStore on _CadAvalsStore, Store {
  final _$anoLetivoAtom = Atom(name: '_CadAvalsStore.anoLetivo');

  @override
  String get anoLetivo {
    _$anoLetivoAtom.reportRead();
    return super.anoLetivo;
  }

  @override
  set anoLetivo(String value) {
    _$anoLetivoAtom.reportWrite(value, super.anoLetivo, () {
      super.anoLetivo = value;
    });
  }

  final _$cursoAtom = Atom(name: '_CadAvalsStore.curso');

  @override
  String get curso {
    _$cursoAtom.reportRead();
    return super.curso;
  }

  @override
  set curso(String value) {
    _$cursoAtom.reportWrite(value, super.curso, () {
      super.curso = value;
    });
  }

  final _$turmaAtom = Atom(name: '_CadAvalsStore.turma');

  @override
  String get turma {
    _$turmaAtom.reportRead();
    return super.turma;
  }

  @override
  set turma(String value) {
    _$turmaAtom.reportWrite(value, super.turma, () {
      super.turma = value;
    });
  }

  final _$disciplinaAtom = Atom(name: '_CadAvalsStore.disciplina');

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

  final _$periodoAtom = Atom(name: '_CadAvalsStore.periodo');

  @override
  String get periodo {
    _$periodoAtom.reportRead();
    return super.periodo;
  }

  @override
  set periodo(String value) {
    _$periodoAtom.reportWrite(value, super.periodo, () {
      super.periodo = value;
    });
  }

  final _$errorAtom = Atom(name: '_CadAvalsStore.error');

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

  final _$_CadAvalsStoreActionController =
      ActionController(name: '_CadAvalsStore');

  @override
  void setAnoLetivo(String value) {
    final _$actionInfo = _$_CadAvalsStoreActionController.startAction(
        name: '_CadAvalsStore.setAnoLetivo');
    try {
      return super.setAnoLetivo(value);
    } finally {
      _$_CadAvalsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCurso(String value) {
    final _$actionInfo = _$_CadAvalsStoreActionController.startAction(
        name: '_CadAvalsStore.setCurso');
    try {
      return super.setCurso(value);
    } finally {
      _$_CadAvalsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTurma(String value) {
    final _$actionInfo = _$_CadAvalsStoreActionController.startAction(
        name: '_CadAvalsStore.setTurma');
    try {
      return super.setTurma(value);
    } finally {
      _$_CadAvalsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDisciplina(String value) {
    final _$actionInfo = _$_CadAvalsStoreActionController.startAction(
        name: '_CadAvalsStore.setDisciplina');
    try {
      return super.setDisciplina(value);
    } finally {
      _$_CadAvalsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPeriodo(String value) {
    final _$actionInfo = _$_CadAvalsStoreActionController.startAction(
        name: '_CadAvalsStore.setPeriodo');
    try {
      return super.setPeriodo(value);
    } finally {
      _$_CadAvalsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCadAvals(List<CadAvals> cadAvals) {
    final _$actionInfo = _$_CadAvalsStoreActionController.startAction(
        name: '_CadAvalsStore.setCadAvals');
    try {
      return super.setCadAvals(cadAvals);
    } finally {
      _$_CadAvalsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(String value) {
    final _$actionInfo = _$_CadAvalsStoreActionController.startAction(
        name: '_CadAvalsStore.setError');
    try {
      return super.setError(value);
    } finally {
      _$_CadAvalsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
anoLetivo: ${anoLetivo},
curso: ${curso},
turma: ${turma},
disciplina: ${disciplina},
periodo: ${periodo},
error: ${error}
    ''';
  }
}
