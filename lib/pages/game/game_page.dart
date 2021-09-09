import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var answer = Random().nextInt(100);

    return Scaffold(
      appBar: AppBar(
        title: Text('GUESS THE NUMBER'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.person, // รูปไอคอน
                  size: 80.0, // ขนาดไอคอน
                  color: Colors.blue, // สีไอคอน
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'พชรพล กองจาย',
                      style: TextStyle(fontSize: 18),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.grade, // รูปไอคอน
                          size: 20.0, // ขนาดไอคอน
                          color: Colors.orangeAccent, // สีไอคอน
                        ),
                        Icon(
                          Icons.grade, // รูปไอคอน
                          size: 20.0, // ขนาดไอคอน
                          color: Colors.orangeAccent, // สีไอคอน
                        ),
                        Icon(
                          Icons.grade, // รูปไอคอน
                          size: 20.0, // ขนาดไอคอน
                          color: Colors.orangeAccent, // สีไอคอน
                        ),
                        Icon(
                          Icons.grade, // รูปไอคอน
                          size: 20.0, // ขนาดไอคอน
                          color: Colors.orangeAccent, // สีไอคอน
                        ),
                        Icon(
                          Icons.star_border, // รูปไอคอน
                          size: 20.0, // ขนาดไอคอน
                          color: Colors.orangeAccent, // สีไอคอน
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),

            Center(
              child: Text(
                '$answer',
                style: TextStyle(fontSize: 169),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(1.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('RANDOM'),
                ))
          ],
        ),
      ),
    );
  }
}
