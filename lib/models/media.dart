import 'package:cloud_firestore/cloud_firestore.dart';

class Media {

  String id;
  String  matricula;
  String disciplina;
  String periodo;
  num media;

  Media({this.matricula, this.disciplina, this.periodo, this.media});

  Media.fromDocument(DocumentSnapshot doc){
    id = doc.id;
    matricula = doc.get('matricula');
    disciplina = doc.get('disciplina');
    periodo = doc.get('periodo');
    media = doc.get('media');
  }

  @override
  String toString() {
    return 'Media{matricula: $matricula, disciplina: $disciplina, periodo: $periodo, media: $media}';
  }
}
