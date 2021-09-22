import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:teste_clipescola/controller/cadavals_store.dart';
import 'package:teste_clipescola/controller/media_store.dart';
import 'package:teste_clipescola/controller/nota_store.dart';

class CalculoMediaScreen extends StatefulWidget {

  CalculoMediaScreen(this.matricula, this.anoLetivo, this.curso, this.turma, this.disciplina, this.periodo);

  final String matricula;
  final String anoLetivo;
  final String curso;
  final String turma;
  final String disciplina;
  final String periodo;

  @override
  _CalculoMediaScreenState createState() => _CalculoMediaScreenState();
}

class _CalculoMediaScreenState extends State<CalculoMediaScreen> {

  final MediaStore mediaStore = MediaStore();
  final CadAvalsStore cadAvalsStore = CadAvalsStore();
  final NotaStore notaStore = NotaStore();
  num media1;
  num media;

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);


  }

  @override
  Widget build(BuildContext context) {

    mediaStore.setMatricula(widget.matricula);
    mediaStore.setDisciplina(widget.disciplina);
    mediaStore.setPeriodo(widget.periodo);

    cadAvalsStore.setAnoLetivo(widget.anoLetivo);
    cadAvalsStore.setPeriodo(widget.periodo);
    cadAvalsStore.setDisciplina(widget.disciplina);
    cadAvalsStore.setTurma(widget.turma);
    cadAvalsStore.setCurso(widget.curso);

    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado'),
        centerTitle: true,
      ),
      body: Observer(builder: (_){
        if(cadAvalsStore.cadAvalsList.isEmpty){
          return Center(
            child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.blue),),
          );
        } if(notaStore.notaList.isEmpty){
          for (int i = 0; i < cadAvalsStore.cadAvalsList.length; i++) {
            final cadAvals = cadAvalsStore.cadAvalsList[i];
            notaStore.setAvaliacao(cadAvals.codigo);
            notaStore.setMatricula(widget.matricula);
            notaStore.setDisciplina(cadAvalsStore.disciplina);
            notaStore.setPeso(cadAvals.peso);
          }
          return Container();
        }
        else {
          for (int i = 0; i < cadAvalsStore.cadAvalsList.length; i++){
            final cadAvals = cadAvalsStore.cadAvalsList[i];
            final notas = notaStore.notaList[i];

            media1 = notas.nota * cadAvals.peso;

            if(cadAvals.tipo == 0){
              media1 = notas.nota * cadAvals.peso;
            } else if(cadAvals.tipo == 1){
              if(notas.nota != -1){
                media1 = notas.nota * cadAvals.peso;
              } else {
                media1 = 0;
              }
            } else {
              if(notas.nota == -1){
                media1 = 0*1;
              } else {
                media1 = notas.nota * cadAvals.peso;
              }
            }
          }

          int div = cadAvalsStore.cadAvalsList.length;

          media = (media1++) / div;

          return Center(child: Text('A Média total foi: $media', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)));
        }
      }),
    );
  }
}
