import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobx/mobx.dart';
import 'package:teste_clipescola/models/cadavals.dart';

part 'cadavals_store.g.dart';

class CadAvalsStore = _CadAvalsStore with _$CadAvalsStore;

abstract class _CadAvalsStore with Store {

  _CadAvalsStore(){
    reaction((_) => anoLetivo != null && curso != null && turma != null && disciplina != null && periodo != null, (_) {
      _loadCadAvals();
    });
  }

  @observable
  String anoLetivo;

  @action
  void setAnoLetivo(String value) => anoLetivo = value;

  @observable
  String curso;

  @action
  void setCurso(String value) => curso = value;

  @observable
  String turma;

  @action
  void setTurma(String value) => turma = value;

  @observable
  String disciplina;

  @action
  void setDisciplina(String value) => disciplina = value;

  @observable
  String periodo;

  @action
  void setPeriodo(String value) => periodo = value;

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  ObservableList<CadAvals> cadAvalsList = ObservableList<CadAvals>();

  @action
  void setCadAvals(List<CadAvals> cadAvals) {
    cadAvalsList.clear();
    cadAvalsList.addAll(cadAvals);
  }

  @observable
  String error;

  @action
  void setError(String value) => error = value;

  Future<void> _loadCadAvals() async {

    try {
      final queryBuilder = firestore
          .collection('cadavals')
          .where('anoLetivo', isEqualTo: anoLetivo)
          .where('curso', isEqualTo: curso)
          .where('turma', isEqualTo: turma)
          .where('disciplina', isEqualTo: disciplina)
          .where('periodo', isEqualTo: periodo)
          .get();

      final response = await queryBuilder;

      final cadAvals = response.docs.map((e) =>
          CadAvals.fromDocument(e)).toList();

      setCadAvals(cadAvals);
    } catch (e){
      setError(e);
    }
  }

}