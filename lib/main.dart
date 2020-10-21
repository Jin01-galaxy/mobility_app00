import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int mp = 100;
  int tp = 100;

  void changedata() {
    setState(() {
      mp -= 10;
      tp += 20;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobility App'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
              child: Text('俵獲得イベント',
                  style: TextStyle(fontSize: 30, color: Colors.blue[800])),
            ),
            Container(
                padding: EdgeInsets.all(10.0),
                // constraints: BoxConstraints.expand(),
                width: 300,
                height: 170,
                alignment: Alignment.center,
                // transform: Matrix4.rotationZ(0.5),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.blueGrey,
                    width: 5.0,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
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
              margin: EdgeInsets.all(20.0),
              color: Colors.grey,
              width: 300,
              height: 100,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    '移動に応じて\n俵を獲得したり失ったり',
                    style: TextStyle(fontSize: 20, color: Colors.white),
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
                    color: Colors.blueGrey,
                    width: 5.0,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
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
                  'MP:$mp TP:$tp',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                )),
            // Container(
            //     padding: EdgeInsets.fromLTRB(0, 20, 0, 5),
            //     child: Column(
            //       children: <Widget>[
            //         FlutterLogo(size: 40),
            //       ],
            //     )),
            Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                child: RaisedButton.icon(
                  onPressed: changedata,
                  icon: Icon(Icons.accessibility_new_rounded),
                  label: Text('Move'),
                )),
            Image.asset(
              '/Users/jinsuzuki/Development/Flutter_project/mobility_app00/images/IMG_3773.jpeg',
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}
