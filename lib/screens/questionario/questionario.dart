import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Questionario extends StatefulWidget {
  const Questionario({Key? key}) : super(key: key);

  @override
  State<Questionario> createState() => _QuestionarioState();
}

class _QuestionarioState extends State<Questionario> {
  var perguntas;

  @override
  void initState() {
    super.initState();
    fetch();
  }

  Future<List> fetch() async {
    var url = Uri.parse('http://z62ze.mocklab.io/json');
    final res = await http.get(url);
    perguntas = jsonDecode(res.body);
    setState(() {});
    return perguntas;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Quiz"),
        ),
        body: perguntas != null
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: perguntas[0]['descricao'],
                          labelText: perguntas[0]['titulo']),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: perguntas[1]['descricao'],
                          labelText: perguntas[1]['titulo']),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: perguntas[2]['descricao'],
                          labelText: perguntas[2]['titulo']),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Salvar"),
                    )
                  ],
                ),
              )
            : const Center(
                child: CircularProgressIndicator(),
              ));
  }
}
