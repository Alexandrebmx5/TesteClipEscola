import 'package:cloud_firestore/cloud_firestore.dart';

class CadAvals {

  String id;
  String codigo;
  String anoLetivo, curso, turma, disciplina, periodo;
  num peso;
  int tipo;

  CadAvals({this.codigo,
      this.anoLetivo,
      this.curso,
      this.turma,
      this.disciplina,
      this.periodo,
      this.peso,
      this.tipo});

  CadAvals.fromDocument(DocumentSnapshot doc){
    id = doc.id;
    codigo = doc.get('codigo');
    anoLetivo = doc.get('anoLetivo');
    curso = doc.get('curso');
    turma = doc.get('turma');
    disciplina = doc.get('disciplina');
    periodo = doc.get('periodo');
    peso = doc.get('peso');
    tipo = doc.get('tipo');
  }

  @override
  String toString() {
    return 'CadAvals{codigo: $codigo, anoLetivo: $anoLetivo, curso: $curso, turma: $turma, disciplina: $disciplina, periodo: $periodo, peso: $peso, tipo: $tipo}';
  }
}