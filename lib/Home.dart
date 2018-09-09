import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MakeItRainState();
  }
}

class MakeItRainState extends State<MakeItRain> {
  int _moneyCounter = 0;
  double _moneySize = 100.0;
  String _topTitle = "Money Make Money";

  void _rainMoney() {
    // setState is responsible for the updating process
    setState(() {
      _moneyCounter += 10000;
      if (_moneyCounter == 1000000) {
        _topTitle = "Horray One Million \$";
      }
      if (_moneyCounter == 100000) {
        _moneySize = 70.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Make It Rain"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            // title
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: Text(
                  _topTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.teal.shade900,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  _moneyCounter.toString() + "\$",
                  style: TextStyle(
                      fontSize: _moneySize,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: FlatButton(
                  color: Theme.of(context).accentColor,
                  onPressed: _rainMoney,
                  child: Text(
                    "Hit Me",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
