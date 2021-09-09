import 'package:flutter/material.dart';

class homework6 extends StatelessWidget {
  const homework6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _buildButton0(int i) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 75.0,
          height: 75.0,
          //color: Colors.white, // ห้ามกำหนด color ตรงนี้ ถ้าหากกำหนดใน BoxDecoration แล้ว
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey, width: 4.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2), // สีเงา
                offset: Offset(2, 4), // ทิศทางของเงาในแนวนอนและแนวตั้ง ตามลำดับ
                blurRadius: 4.0,
                spreadRadius: 2.0,
              )
            ],
          ),
          child: Center(
            child: Text(
              '$i',
              style: TextStyle(
                  color: Colors.grey, decoration: TextDecoration.none),
            ),
          ),
        ),
      );
    }

    Widget _buildButton1() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 75.0,
          height: 75.0,
         child:
           Icon(
             Icons.backspace, // รูปไอคอน
             size: 40.0, // ขนาดไอคอน
             color: Colors.grey, // สีไอคอน
           ),
         ),
        );
    }
    Widget _buildButton3() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 75.0,
          height: 75.0,
        ),
      );
    }

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock, // รูปไอคอน
                  size: 60.0, // ขนาดไอคอน
                  color: Colors.grey, // สีไอคอน
                ),
                Text(
                  'กรุณาใส่รหัสผ่าน',
                  style: TextStyle(
                      color: Colors.grey, decoration: TextDecoration.none),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (int i = 1; i < 4; ++i) _buildButton0(i),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  for (int i = 4; i < 7; ++i) _buildButton0(i),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  for (int i = 7; i < 10; ++i) _buildButton0(i),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildButton3(),
                  _buildButton0(0),
                  _buildButton1(),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {},
              child: Text('ลืมรหัสผ่าน'),
            ),
          )
        ],
      ),
    );
  }
}
