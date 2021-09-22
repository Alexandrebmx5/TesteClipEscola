import 'package:cloud_firestore/cloud_firestore.dart';

class Nota {

  String id;
  String matricula, disciplina, avaliacao;
  num nota;

  Nota({this.matricula, this.disciplina, this.avaliacao, this.nota});

  Nota.fromDocument(DocumentSnapshot doc){
    id = doc.id;
    matricula = doc.get('matricula');
    disciplina = doc.get('disciplina');
    avaliacao = doc.get('avaliacao');
    nota = doc.get('nota');
  }

  @override
  String toString() {
    return 'Nota{matricula: $matricula, disciplina: $disciplina, avaliacao: $avaliacao, nota: $nota}';
  }
}