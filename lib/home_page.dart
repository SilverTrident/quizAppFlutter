import 'package:app_quiz/models/pergunta.dart';
import 'package:app_quiz/resultado_quiz.dart';
import 'package:flutter/material.dart';

import 'caixa_perguntas.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  final _perguntas = [
    {
      0: [
        Pergunta(
             "O  encantamento Lumos fornece Levitação",  1),
        Pergunta( "O  encantamento Lumos fornece luz",  0)
      ]
    },
    {
      1: [
        Pergunta(
             "Se usa o feitiço Alohomora para brir uma porta",
             1),
        Pergunta(
             "Se usa o feitiço Alohomora para encantar o alvo",
             0)
      ],
    },
    {
      2: [
        Pergunta(
            "O feitiço é Filipendo serve para boa sorte",  0),
        Pergunta(
            "O feitiço é Filipendo serve para azaração",  1)
      ],
    },
    {
      3: [
        Pergunta(
            "o contra-feitiço para Colloportus é Protego",  0),
         Pergunta(
            "o contra-feitiço para Colloportus é Alohomora",  1),    
      ]
    },
  ];

  int _index = 0;
  int acertos = 0;


  void proximaPergunta(int reposta){
      setState(() {
        _index ++;
        acertos = acertos + reposta;
      });
  }

  void resetPerguntas(){
    setState(() {
      _index = 0;
      acertos = 0;
    });
  }

  String retonarQuantidadeAccertos(){
    if (acertos < 2 ) {
      return "Ops ... tente novamente";
    }else if(acertos == 2 ){
      return "Você quase acertou todas! vamos lá você consegue";
    }else{
      return "Parabéns Você manja do asusnto!";
    }
  }

  String titulo(){
    if(_index < _perguntas.length){
       int numeroPergunta = _index +1;
     return "Pergunta $numeroPergunta";
    }else {
      return "Resultado";
    }

    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Center(child: Text(titulo())),
      ),
      body: _index < _perguntas.length ? CaixaPerguntas(_index, _perguntas, proximaPergunta) : ResultadoQuiz(retonarQuantidadeAccertos(), resetPerguntas),
    );
  }
}
