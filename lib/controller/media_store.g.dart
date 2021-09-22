// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MediaStore on _MediaStore, Store {
  final _$matriculaAtom = Atom(name: '_MediaStore.matricula');

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

  final _$disciplinaAtom = Atom(name: '_MediaStore.disciplina');

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

  final _$periodoAtom = Atom(name: '_MediaStore.periodo');

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

  final _$errorAtom = Atom(name: '_MediaStore.error');

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

  final _$_MediaStoreActionController = ActionController(name: '_MediaStore');

  @override
  void setMatricula(String value) {
    final _$actionInfo = _$_MediaStoreActionController.startAction(
        name: '_MediaStore.setMatricula');
    try {
      return super.setMatricula(value);
    } finally {
      _$_MediaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDisciplina(String value) {
    final _$actionInfo = _$_MediaStoreActionController.startAction(
        name: '_MediaStore.setDisciplina');
    try {
      return super.setDisciplina(value);
    } finally {
      _$_MediaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPeriodo(String value) {
    final _$actionInfo = _$_MediaStoreActionController.startAction(
        name: '_MediaStore.setPeriodo');
    try {
      return super.setPeriodo(value);
    } finally {
      _$_MediaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setMedias(List<Media> medias) {
    final _$actionInfo = _$_MediaStoreActionController.startAction(
        name: '_MediaStore.setMedias');
    try {
      return super.setMedias(medias);
    } finally {
      _$_MediaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(String value) {
    final _$actionInfo =
        _$_MediaStoreActionController.startAction(name: '_MediaStore.setError');
    try {
      return super.setError(value);
    } finally {
      _$_MediaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
matricula: ${matricula},
disciplina: ${disciplina},
periodo: ${periodo},
error: ${error}
    ''';
  }
}
