import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class midterm extends StatefulWidget {
  const midterm({Key? key}) : super(key: key);

  @override
  _midtermState createState() => _midtermState();
}


class _midtermState extends State<midterm> {
  int bluet = 0;
  int redt = 0;
  int r =0;
  int countr = 0;
  int countb =0;
  int scorer = 0;
  int scoreb = 0;
  bool chenk = true;
  int bluett = 0;
  int redtt = 0;

  Widget _bottomred9() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              redt += 9;
              r++;
              bluett=10;
              redtt = 9;
              countr += redt;
              chenk = false;
            });
          },
          style: ElevatedButton.styleFrom(
            primary: Color(0xFFA00000),
            padding: EdgeInsets.symmetric(
                horizontal: 70.0, vertical: 10.0),
          ),
          child: Icon(
            Icons.person, // รูปไอคอน
            size: 50.0, // ขนาดไอคอน
            color: Colors.white, // สีไอคอน
          ),
        ),
      ),
    );
  }

  Widget _bottomblue9() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              bluet+=9;
              r++;
              redt+=10;
              bluett=9;
              redtt = 10;
              countb += bluet;
              chenk = true;
            });
          },
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF0000A0),
            padding: EdgeInsets.symmetric(
                horizontal: 70.0, vertical: 10.0),
          ),
          child: Icon(
            Icons.person, // รูปไอคอน
            size: 50.0, // ขนาดไอคอน
            color: Colors.white, // สีไอคอน
          ),
        ),
      ),
    );
  }

  Widget _bottomred10() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              redt+=10;
              r++;
              bluett=9;
              redtt = 10;
              redt+=9;
              chenk = true;
            });
          },
          style: ElevatedButton.styleFrom(
            primary: Color(0xFFA00000),
            padding: EdgeInsets.symmetric(
                horizontal: 70.0, vertical: 10.0),
          ),
          child: Icon(
            Icons.person, // รูปไอคอน
            size: 50.0, // ขนาดไอคอน
            color: Colors.white, // สีไอคอน
          ),
        ),
      ),
    );
  }

  Widget _bottomblue10() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              bluet+=10;
              redt+=9;
              bluett=10;
              redtt = 9;
              chenk = false;
              r++;
            });
          },
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF0000A0),
            padding: EdgeInsets.symmetric(
                horizontal: 70.0, vertical: 10.0),
          ),
          child: Icon(
            Icons.person, // รูปไอคอน
            size: 50.0, // ขนาดไอคอน
            color: Colors.white, // สีไอคอน
          ),
        ),
      ),
    );
  }

  Widget botom() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              r=0;
            });
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            padding: EdgeInsets.symmetric(
                horizontal: 70.0, vertical: 10.0),
          ),
          child: Icon(
            Icons.clear, // รูปไอคอน
            size: 50.0, // ขนาดไอคอน
            color: Colors.white, // สีไอคอน
          ),
        ),
      ),
    );
  }

  _R1(){
    return (Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text("ROUND 1", style: TextStyle(color: Colors.grey)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("10", style: TextStyle(fontSize: 20.0)),
              Text("9", style: TextStyle(fontSize: 20.0)),
            ],
          ),
          Divider(thickness: 2),
        ],
      ),
    )
    );
  }
  _R2(){
    return (Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text("ROUND 2", style: TextStyle(color: Colors.grey)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("9", style: TextStyle(fontSize: 20.0)),
              Text("10", style: TextStyle(fontSize: 20.0)),
            ],
          ),
          Divider(thickness: 2),
        ],
      ),
    )
    );
  }
  _R3(){
    return (Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text("ROUND 3", style: TextStyle(color: Colors.grey)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("9", style: TextStyle(fontSize: 20.0)),
              Text("10", style: TextStyle(fontSize: 20.0)),
            ],
          ),
          Divider(thickness: 2),
        ],
      ),
    )
    );
  }
  _total(){
    return (Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text("TOTAL", style: TextStyle(color: Colors.grey)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("", style: TextStyle(fontSize: 20.0)),
              Text("", style: TextStyle(fontSize: 20.0)),
            ],
          ),
          Divider(thickness: 1),
        ],
      ),
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('OLYMPIC BOXING SCORING',),backgroundColor: Colors.brown,),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(image: const AssetImage("assets/images/logo.png"),height: 40.0,),
            ),
            Container(
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Wowen's Light (57-60kg)",style: TextStyle(color: Colors.white,fontSize: 17.0),)
                ],
              ),
            ),

            Row(
              children: [
                Icon(
                  Icons.person, // รูปไอคอน
                  size: 60.0, // ขนาดไอคอน
                  color: Color(0xFFA00000), // สีไอคอน
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image(image: const AssetImage("assets/images/flag_ireland.png"),width: 25.0,height: 25.0,),
                        Text(' IRELAND',style: TextStyle(fontSize: 20.0),),
                      ],
                    ),
                    Text('HARRINGTON KEllie Anne'),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.person, // รูปไอคอน
                  size: 60.0, // ขนาดไอคอน
                  color: Color(0xFF0000A0), // สีไอคอน
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image(image: const AssetImage("assets/images/flag_thailand.png"),width: 25.0,height: 25.0,),
                        Text(' THAILAND',style: TextStyle(fontSize: 20.0),),
                      ],
                    ),
                    Text('SEESONDEE Sudaporn'),
                  ],
                ),
              ],
            ),
            Container(
              height: 5.0,
              child: Row(
                children: [
                  Expanded(child: Container(
                    color:  Color(0xFFA00000),
                  )
                  ),
                  Expanded(child: Container(
                    color:  Color(0xFF0000A0),
                  )
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  if(r>=1)
                    _R1(),
                  Column(
                    children: [
                      if(r>=2)
                        _R2()
                    ],
                  ),
                  Column(
                    children: [
                      if(r==3)
                        _R3(),
                      if(r==3)
                        _total(),
                    ],
                  ),
                ],
              ),
            ),

            Expanded(
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if(r<3)
                      _bottomred10(),
                    _bottomblue10(),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}