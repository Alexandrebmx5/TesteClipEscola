import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobx/mobx.dart';
import 'package:teste_clipescola/models/nota.dart';

part 'nota_store.g.dart';

class NotaStore = _NotaStore with _$NotaStore;

abstract class _NotaStore with Store {

  _NotaStore(){
    reaction((_) => disciplina != null && avaliacao != null, (_) {
      _loadNotas();
    });
  }

  @observable
  String matricula;

  @action
  void setMatricula(String value) => matricula = value;

  @observable
  String disciplina;

  @action
  void setDisciplina(String value) => disciplina = value;

  @observable
  String avaliacao;

  @action
  void setAvaliacao(String value) => avaliacao = value;

  @observable
  num peso;

  @action
  void setPeso(num value) => peso = value;

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  ObservableList<Nota> notaList = ObservableList<Nota>();

  @action
  void setNotas(List<Nota> notas) {
    notaList.clear();
    notaList.addAll(notas);
  }

  @observable
  String error;

  @action
  void setError(String value) => error = value;

  Future<void> _loadNotas() async {

    try {
      final queryBuilder = firestore
          .collection('nota')
          .where('matricula', isEqualTo: matricula)
          .where('disciplina', isEqualTo: disciplina)
          .where('avaliacao', isEqualTo: avaliacao)
          .get();

      final response = await queryBuilder;

      final notas = response.docs.map((e) =>
          Nota.fromDocument(e)).toList();

      setNotas(notas);
    } catch (e){
      setError(e);
    }
  }



}