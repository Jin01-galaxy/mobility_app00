import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  String str2 = 'お客さん！お釜で炊きますよ♬';


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
              margin: EdgeInsets.all(20.0),
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
