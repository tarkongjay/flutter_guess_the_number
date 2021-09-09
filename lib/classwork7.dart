import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class classwork7 extends StatefulWidget {
  const classwork7({Key? key}) : super(key: key);

  @override
  _classwork7State createState() => _classwork7State();
}

class _classwork7State extends State<classwork7> {
  List<int> list = [1, 2, 3];
  int i = 0;
  bool showNumber = true;

  _handleClickButtom() {
    setState(() {
      i+=1;
    });
  }

  _handleClickButtom2() {
    setState(() {
      showNumber = !showNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('$i')
                      ],
                    )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: _handleClickButtom, child: Text('TEST')),
                SizedBox(
                  width: 20.0,
                ),
                TextButton(
                    onPressed: _handleClickButtom2, child: Text('TEST2')),
              ],
            ),
            Image(image: AssetImage(
                showNumber ? 'assets/images/op.png' : 'assets/images/p.png'),
              width: 100.0,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
