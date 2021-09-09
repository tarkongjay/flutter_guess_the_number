import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homework5 extends StatelessWidget {
  const homework5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var i = Random();
    var answer = i.nextInt(100);
    Widget _star(int e) {
      return Icon(
        Icons.grade, // รูปไอคอน
        size: 20.0, // ขนาดไอคอน
        color: Colors.orangeAccent, // สีไอคอน
      );
    }

    List<int> list = [1, 1, 1, 1];

    return Scaffold(
      appBar: AppBar(
        title: Text('GUESS THE NUMBER'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Icon(
                  Icons.person, // รูปไอคอน
                  size: 80.0, // ขนาดไอคอน
                  color: Colors.blue, // สีไอคอน
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('พชรพล กองจาย'),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (int i in list) _star(i),
                        Icon(
                          Icons.star_outline, // รูปไอคอน
                          size: 20.0, // ขนาดไอคอน
                          color: Colors.orangeAccent, // สีไอคอน
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Center(
              child: Text(
                '$answer',
                style: TextStyle(fontSize: 180.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                },
                child: Text('RANDOM'),
              ),
            )

          ],
        ),
      ),
    );
  }
}
