import 'package:flutter/material.dart';

class ThirdRoute extends StatefulWidget {
  final int value;
  ThirdRoute({Key key, @required this.value}) : super(key: key);
  @override
  _ThirdRouteState createState() => _ThirdRouteState(value);
}

class _ThirdRouteState extends State<ThirdRoute> {
  int value;
  _ThirdRouteState(this.value);
  int counter = 0;
  String str4 = '';
  String str5 = '';

  void changedata4() {
    setState(() {
      if (value >= 0) {
        value += 1;

        str4 = 'Mobility';
      } else if (counter < 4) {
        str5 = '(+_+)';
        counter += 1;
      } else {
        str5 = 'Jin';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("宿屋の巻"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
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
                    'Mobility Point:$value ',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  )),
            ),
                 Container(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: RaisedButton.icon(
                onPressed: changedata4,
                icon: Icon(Icons.accessibility_new_rounded),
                label: Text(
                  '甘酒を飲む',
                  style: TextStyle(fontSize: 22, color: Colors.brown),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
