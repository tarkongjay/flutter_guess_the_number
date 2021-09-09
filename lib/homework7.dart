
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homework7 extends StatefulWidget {
  const homework7({Key? key}) : super(key: key);

  @override
  _homework7State createState() => _homework7State();
}

class _homework7State extends State<homework7> {
  int p = 0;
bool player = true;

_checkplayer(){
  player = !player;
}

  Widget _bottomred(int e) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              p+=e;
              player = !player;
            });
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
          ),
          child: Text(
            '$e',
            style: TextStyle(fontSize: 40.0),
          ),
        ),
      ),
    );
  }
  Widget _bottomredout(int e) {
    return Expanded(
      child: Opacity(
        opacity: 0.5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: null,
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
            ),
            child: Text(
              '$e',
              style: TextStyle(fontSize: 40.0),
            ),
          ),
        ),
      ),
    );
  }

  Widget _bottomblue(int e) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              p+=e;
              player = !player;
            });
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
          ),
          child: Text(
            '$e',
            style: TextStyle(fontSize: 40.0),
          ),
        ),
      ),
    );
  }

  Widget _bottomblueout(int e) {
    return Expanded(
      child: Opacity(
        opacity: 0.5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: null,
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            ),
            child: Text(
              '$e',
              style: TextStyle(fontSize: 40.0),
            ),
          ),
        ),
      ),
    );
  }

  Widget _textred() {
    return Container(
          child: Text(
            'RED\nwin !',
            style: TextStyle(fontSize: 40.0),
          ),

    );
  }

  Widget _textblue() {
    return Container(
      child: Text(
        'BLUE\nwin !',
        style: TextStyle(fontSize: 40.0),
      ),

    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: const DecorationImage(
              image: const AssetImage("assets/images/bg.jpg"),
              fit: BoxFit
                  .fill, // ยืดเต็มพื้นที่โดยไม่สนใจสัดส่วนของภาพ หรือใช้ BoxFit.cover เพื่อยืดให้เต็มและคงสัดส่วนของภาพไว้ แต่บางส่วนของภาพอาจถูก crop
            ),
          ),
          child: SafeArea(
            // ไม่ให้ layout ไปอยู่ตรงส่วน status bar หรือ notch
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          if(p < 20 && p!=0)
                          for(int i = 3 ; i>0 ; --i)
                           player ? _bottomredout(i) : _bottomred(i),
                          if(p >= 20 || p==0)
                            for(int i = 3 ; i>0 ; --i)
                            _bottomredout(i),
                        ],
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Center(
                        child: Column(
                          children: [
                            if(player == true && p <20)
                            Opacity(
                              opacity: 0.1,
                              child: Icon(
                                Icons.keyboard_arrow_up, // รูปไอคอน
                                size: 80.0, // ขนาดไอคอน
                                color: Colors.black, // สีไอคอน
                              ),
                            ),
                            if(player == false && p <20)
                            Icon(
                              Icons.keyboard_arrow_up, // รูปไอคอน
                              size: 80.0, // ขนาดไอคอน
                              color: Colors.black // สีไอคอน
                            ),
                            if(p >=20)
                             Container(
                             ),
                            if(p <20)
                            Text(
                              '$p',
                              style: TextStyle(fontSize: 80.0),
                            ),
                            if(p >=20 && player == false)
                            _textblue(),
                              if(p >=20 && player == true)
                            _textred()
                            ,
                            if(p >=20)
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  p =0;
                                  player = true;
                                });
                              },
                              child: Text(
                                'NEW GAME',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                            if(player == false && p<20)
                            Opacity(
                              opacity: 0.1,
                              child: Icon(
                                Icons.keyboard_arrow_down, // รูปไอคอน
                                size: 80.0, // ขนาดไอคอน
                                color: Colors.black, // สีไอคอน
                              ),
                            ),
                            if(player == true && p<20)
                              Icon(
                                  Icons.keyboard_arrow_down, // รูปไอคอน
                                  size: 80.0, // ขนาดไอคอน
                                  color: Colors.black // สีไอคอน
                              ),
                            if(p>=20)
                              Container()
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            if(p<20)
                            for (int i = 0; i < p; ++i)
                              Icon(
                                Icons.star, // รูปไอคอน
                                size: 20.0, // ขนาดไอคอน
                                color: Colors.brown, // สีไอคอน
                              ),
                            for(int i = 0 ; i < 20-p ; ++i)
                              if(p<20)
                            Icon(
                              Icons.star_border, // รูปไอคอน
                              size: 20.0, // ขนาดไอคอน
                              color: Colors.brown, // สีไอคอน
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          if(p<20)
                            for(int i = 1 ; i<4 ; ++i)
                             player ?  _bottomblue(i) :  _bottomblueout(i),
                          if(p>=20)
                            for(int i = 1 ; i<4 ; ++i)
                              _bottomblueout(i),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ), // Your widget tree
          )),
    );
  }
}
