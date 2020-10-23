import 'package:flutter/material.dart';

class SecondRoute extends StatefulWidget {
  // List values;
  final int value;
  SecondRoute({Key key, @required this.value}) : super(key: key);

  @override
  _SecondRouteState createState() => _SecondRouteState(value);
}

class _SecondRouteState extends State<SecondRoute> {
  int value;
  _SecondRouteState(this.value);

  final String str2 = 'お客さん！お釜で炊きますよ♬';

  String str3 = '';
  int onigiri = 0;

  void changedata3() {
    setState(() {
      if (value > 0) {
        value -= 1;
        onigiri += 50;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("茶屋の巻"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              color: Colors.brown,
              width: 300,
              height: 70,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    '$str2',
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.all(10.0),
                // constraints: BoxConstraints.expand(),
                width: 250,
                height: 60,
                alignment: Alignment.center,
                // transform: Matrix4.rotationZ(0.5),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.brown,
                    width: 5.0,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.brown,
                      blurRadius: 4.0,
                      spreadRadius: 3.0,
                    )
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.blue, Colors.lightBlue[200]]),
                ),
                child: Text(
                  '俵:$value おにぎり:$onigiri',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                )),
            Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: RaisedButton.icon(
                onPressed: (changedata3),
                icon: Icon(Icons.thumb_up),
                label: Text(
                  '俵からおにぎりを！',
                  style: TextStyle(fontSize: 22, color: Colors.brown),
                ),
              ),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  // Navigate back to first route when tapped.
                },
                child: Text('Go back!'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
