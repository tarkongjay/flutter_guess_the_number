import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  _testState createState() => _testState();
}

class _testState extends State<test> {
  var i = 0;
_handleClickButtom() {
  setState(() {
    i++;
  });
}
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text('$i'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  i+=1;
                });
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue
              ),
              child: Text(
                '1',
                style: TextStyle(fontSize: 40.0),
              ),
            ),
            TextButton(onPressed: _handleClickButtom, child: Text('TEST')),
          ],
        ),
      ),
    );

  }
}
