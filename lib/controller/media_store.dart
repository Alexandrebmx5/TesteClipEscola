import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobx/mobx.dart';
import 'package:teste_clipescola/models/media.dart';

part 'media_store.g.dart';

class MediaStore = _MediaStore with _$MediaStore;

abstract class _MediaStore with Store {

  _MediaStore(){
    reaction((_) => matricula != null && disciplina != null && periodo != null, (_) {
      _loadMedias();
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
  String periodo;

  @action
  void setPeriodo(String value) => periodo = value;

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  ObservableList<Media> mediaList = ObservableList<Media>();

  @action
  void setMedias(List<Media> medias) {
    mediaList.clear();
    mediaList.addAll(medias);
  }

  @observable
  String error;

  @action
  void setError(String value) => error = value;

  Future<void> _loadMedias() async {

    try {
      final queryBuilder = firestore
          .collection('media')
          .where('matricula', isEqualTo: matricula)
          .where('disciplina', isEqualTo: disciplina)
          .where('periodo', isEqualTo: periodo)
          .where('media', isEqualTo: -1)
          .get();

      final response = await queryBuilder;

      final medias = response.docs.map((e) =>
          Media.fromDocument(e)).toList();

      setMedias(medias);
    } catch (e){
      setError(e);
    }
  }

}