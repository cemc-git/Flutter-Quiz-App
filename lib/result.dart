import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int totalScore;
  Function updateValues;
  Result(this.totalScore, this.updateValues);
  Widget printResult() {
    if (totalScore > 8) {
      return Container(
          width: double.infinity,
          height: 655,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://pbs.twimg.com/media/DjIb-dNXsAAFL69.jpg'),
                  fit: BoxFit.cover)),
          child: Center(
              child: Text('É O FRED ULULULULU',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                      color: Colors.red))));
    } else {
      if (totalScore == 3) {
        return Text('Parabéns, você acertou tudo',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold));
      } else if (totalScore == 0) {
        return Text('Mt burro kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold));
      } else {
        return Text(
            'Você acertou ' +
                totalScore.toString() +
                ' de 4 \n tente novamente',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Center(child: printResult()),
      ElevatedButton(
          onPressed: () => updateValues(), child: Text('Refazer Teste'))
    ]);
  }
}
