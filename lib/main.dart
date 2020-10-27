import 'package:flutter/material.dart';
import 'package:mobility_app00/pages/chaya_shop.dart';
import 'package:mobility_app00/pages/mobility_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/second': (context) => SecondRoute(value: 1),
        '/third': (context) => ThirdRoute(value: 2),
      },
      title: 'Container',
      theme: ThemeData(primarySwatch: Colors.brown),
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
  int tp = 1;
  String str = 'いろいろなイベントが起きるよ';

  void changedata() {
    setState(() {
      mp += 10;

      if (tp > 3) {
        tp = 0;
        mp = 0;
        str = '置き引きに遭い俵を失いました！';
        
      } else if (3 >= tp && tp > 0) {
        tp -= 1;
        str = 'トンビに俵をつつかれました！';
      } else if (tp == 0) {
        str = '出がらし茶を飲んで休憩';
      }
    });
  }

  void changedata2() {
    setState(() {
      if (mp > 10) {
        mp -= 20;
        tp += 2;
        str = '町人から俵を貰いました！';
      } else if (mp == 10) {
        mp = 0;
        tp += 1;
        str = '元気なくなって来ました...';
      } else if (mp == 0) {
        str = '宿に行って休んでください';
      }
    });
  }

  Alignment _alg = Alignment.topLeft;
  
  void _onTap() => setState(() => _alg = Alignment.bottomRight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text('モビリティの巻'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
              child: Text('行動変容',
                  style: TextStyle(fontSize: 15, color: Colors.blue[800])),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              // constraints: BoxConstraints.expand(),
              width: 300,
              height: 130,
              alignment: Alignment.center,
              // transform: Matrix4.rotationZ(0.5),
              decoration: BoxDecoration(
                color: Colors.white,
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
                
              ),
              child: AnimatedAlign(
                alignment: _alg,
                duration: Duration(seconds: 1),
                child: Container(
                  child: Image.asset(
                    '/Users/jinsuzuki/Development/Flutter_project/mobility_app00/assets/IMG_3838.jpeg',
                  ),
                  width: 108,
                  height: 120,
                  color: Colors.blueAccent,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              color: Colors.brown,
              width: 300,
              height: 40,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    '$str',
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
                  '体力:$mp 俵:$tp',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                )),
            Container(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: RaisedButton.icon(
                onPressed: changedata,
                icon: Icon(Icons.accessibility_new_rounded),
                label: Text(
                  '楽したけど、密です！',
                  style: TextStyle(fontSize: 22, color: Colors.brown),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: RaisedButton.icon(
                onPressed: changedata2,
                icon: Icon(Icons.thumb_up),
                label: Text(
                  'がんばったね！',
                  style: TextStyle(fontSize: 22, color: Colors.brown),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: RaisedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondRoute(value: tp),
                      ));
                  // Navigator.pushNamed(context, '/second');
                },
                icon: Icon(Icons.home),
                label: Text(
                  '茶屋出現!!',
                  style: TextStyle(fontSize: 22, color: Colors.brown),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: RaisedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ThirdRoute(value: mp),
                      ));
                },
                icon: Icon(Icons.access_alarm),
                label: Text(
                  '疫病にかかってしまった🤢',
                  style: TextStyle(fontSize: 22, color: Colors.brown),
                ),
              ),
            ),
            Image.asset(
              '/Users/jinsuzuki/Development/Flutter_project/mobility_app00/assets/IMG_3773.jpeg',
              width: 200,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _onTap),
    );
  }
}
