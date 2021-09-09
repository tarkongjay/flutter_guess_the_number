import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GamePage2 extends StatelessWidget {
  const GamePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _buildButton0(int str) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            width: 75.0,
            height: 75.0,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey, width: 4.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1), // สีเงา
                    offset:
                    Offset(2, 4), // ทิศทางของเงาในแนวนอนและแนวตั้ง ตามลำดับ
                    blurRadius: 4.0,
                    spreadRadius: 2.0,
                  )
                ]),
            child: Center(
              child: Text(
                '$str',
                style: TextStyle(fontSize: 25.0, color: Colors.grey),
              ),
            )),
      );
    }

    Widget _buildButton1() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 75.0,
          height: 75.0,
        ),
      );
    }

    Widget _buildButton2() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 75.0,
          height: 75.0,
          child: Icon(
            Icons.backspace_outlined,
            color: Colors.grey,
            size: 35.0,
          ),
        ),
      );
    }

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.lock_outline, // รูปไอคอน
                    size: 80.0, // ขนาดไอคอน
                    color: Colors.grey, // สีไอคอน
                  ),
                  Text(
                    'กรุณาใส่รหัสผ่าน',
                    style: TextStyle(fontSize: 30.0, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [1, 2, 3].map((item){
                    return _buildButton0(item);
                  }).toList(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var i = 3; i < 6; i++)
                      _buildButton0(i),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var i = 6; i < 9; i++)
                      _buildButton0(i),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildButton1(),
                    _buildButton0(0),
                    _buildButton2(),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'ลืมรหัสผ่าน',
                        style: TextStyle(fontSize: 20.0),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}