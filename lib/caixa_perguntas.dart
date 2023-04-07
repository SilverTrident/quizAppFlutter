import 'package:flutter/material.dart';

class CaixaPerguntas extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final int _index;
  // ignore: prefer_typing_uninitialized_variables
  final _perguntas;

  final Function proximaPergunta;

  CaixaPerguntas(this._index, this._perguntas, this.proximaPergunta);

  @override
  Widget build(BuildContext context) {
    return Column(
     
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Row(
          
      mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text("Selecione a afirmação correta:"),
            )
          ],
        ),
        Row(
          
      mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.green,
                  backgroundColor: Colors.white,
                  shadowColor: Colors.greenAccent,
                  textStyle: const TextStyle(color: Colors.white),
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                ),
                onPressed: () =>
                    this.proximaPergunta(_perguntas[_index][_index][0].acerto),
                child: Text(_perguntas[_index][_index][0].pergunta),
              ),
            )
          ],
        ),
        const Row(
          
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text("OU"),
            )
          ],
        ),
        Row(
          
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.green,
                  backgroundColor: Colors.white,
                  shadowColor: Colors.greenAccent,
                  textStyle: const TextStyle(color: Colors.white),
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                ),
                onPressed: () =>
                    this.proximaPergunta(_perguntas[_index][_index][1].acerto),
                child: Text(_perguntas[_index][_index][1].pergunta),
              ),
            )
          ],
        ),
      ],
    );
  }
}
