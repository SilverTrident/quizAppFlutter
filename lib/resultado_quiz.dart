import 'package:flutter/material.dart';

class ResultadoQuiz extends StatelessWidget {
  final String msg;
  final Function resetPerguntas;

  ResultadoQuiz(this.msg, this.resetPerguntas);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(msg),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  shadowColor: Colors.blueGrey,
                  textStyle: const TextStyle(color: Colors.white),
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                ),
                onPressed: () => this.resetPerguntas(),
                child: Text("Voltar"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
