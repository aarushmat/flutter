import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final Function resethandlder;

  Result(this.resultscore, this.resethandlder);

  String get resultphrase {
    String resulttext;
    if (resultscore <= 5) {
      resulttext = "You are awesome";
    } else if (resultscore <= 8) {
      resulttext = "You are awesome ee";
    } else {
      resulttext = "You are best";
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: <Widget>[
            Text(
              resultphrase,
              // "ss",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            FlatButton(
              onPressed: resethandlder,
              child: Text("Restart quiz"),
              textColor: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
