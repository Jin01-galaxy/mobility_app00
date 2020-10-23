import 'package:flutter/material.dart';

class SecondRoute extends StatefulWidget {
  final int value;
  SecondRoute({Key key, @required this.value}) : super(key: key);

  @override
  _SecondRouteState createState() => _SecondRouteState(value);
}

class _SecondRouteState extends State<SecondRoute> {
  int value;
  _SecondRouteState(this.value);

  String str2 = 'お客さん！お釜で炊きますよ♬';
  String str3 = '俵からおにぎりを！';
  int onigiri = 0;
  int counter = 0;

  void changedata3() {
    setState(() {
      if (value > 0) {
        value -= 1;
        onigiri += 50;
        str2 = 'おにぎりは現実世界で寄付されます';
      } else if (counter < 4) {
        str3 = 'もうお米が無いよ！';
        str2 = 'もう、帰っておくれ(+_+)';
        counter += 1;
      } else {
        str2 = 'とっとと帰れ〜〜！！';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text("茶屋の巻"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
              child: Text('企業スポンサーのお釜',
                  style: TextStyle(fontSize: 15, color: Colors.white)),
            ),
            Container(
                padding: EdgeInsets.all(10.0),
                // constraints: BoxConstraints.expand(),
                width: 300,
                height: 130,
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
                  'Event Animation',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                )),
            Container(
              margin: EdgeInsets.all(10.0),
              color: Colors.brown,
              width: 300,
              height: 50,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    '$str2',
                    style: TextStyle(fontSize: 17, color: Colors.white),
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
                  str3,
                  style: TextStyle(fontSize: 22, color: Colors.brown),
                ),
              ),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  // Navigate back to first route when tapped.
                  Navigator.pop(context);
                },
                child: Text('Home Screen!'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
