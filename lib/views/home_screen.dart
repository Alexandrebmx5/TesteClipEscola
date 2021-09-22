import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teste_clipescola/views/calculo_media_screen.dart';

class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String matricula = '';
  String anoLetivo = '';
  String curso = '';
  String turma = '';
  String disciplina = '';
  String periodo = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculo Média'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text('Informe os dados abaixo:', style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextFormField(
                  onChanged: (value){
                    setState(() {
                      matricula = value;
                    });
                  },
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(16, 16, 32, 16),
                      hintText: "Matricula",
                      filled: true,
                      hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withAlpha(125)),
                      fillColor: Colors.grey.withAlpha(50),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextFormField(
                  onChanged: (value){
                    setState(() {
                      anoLetivo = value;
                    });
                  },
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(16, 16, 32, 16),
                      hintText: "Ano letivo",
                      filled: true,
                      hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withAlpha(125)),
                      fillColor: Colors.grey.withAlpha(50),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextFormField(
                  onChanged: (value){
                    setState(() {
                      curso = value;
                    });
                  },
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(16, 16, 32, 16),
                      hintText: "Curso",
                      filled: true,
                      hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withAlpha(125)),
                      fillColor: Colors.grey.withAlpha(50),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextFormField(
                  onChanged: (value){
                    setState(() {
                      turma = value;
                    });
                  },
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(16, 16, 32, 16),
                      hintText: "Turma",
                      filled: true,
                      hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withAlpha(125)),
                      fillColor: Colors.grey.withAlpha(50),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextFormField(
                  onChanged: (value){
                    setState(() {
                      disciplina  = value;
                    });
                  },
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(16, 16, 32, 16),
                      hintText: "Disciplina",
                      filled: true,
                      hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withAlpha(125)),
                      fillColor: Colors.grey.withAlpha(50),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: TextFormField(
                  onChanged: (value){
                    setState(() {
                      periodo = value;
                    });
                  },
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(16, 16, 32, 16),
                      hintText: "Periodo",
                      filled: true,
                      hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withAlpha(125)),
                      fillColor: Colors.grey.withAlpha(50),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: 44,
                width: 200,
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (_) => CalculoMediaScreen(matricula, anoLetivo, curso, turma, disciplina, periodo)));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    child: Text('Calcular')
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
