import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class homework8 extends StatefulWidget {
  const homework8({Key? key}) : super(key: key);

  @override
  _homework8State createState() => _homework8State();
}

class _homework8State extends State<homework8> {
  String s = "Prompt";
  String e = "การเดินทางขากลับคงจะเหงาหน้าดู";
  int c = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('THAI FONT VIEWER'),
        backgroundColor: Colors.teal
      ),
        body: Container(
          color: Colors.tealAccent,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(),
               Column(
                 children: [
                   if(c==1)
                   Text('$e',style: GoogleFonts.prompt(fontSize: 50.0),textAlign: TextAlign.center,),

                   if(c==2)
                     Text('$e',style: GoogleFonts.kanit(fontSize: 50.0),textAlign: TextAlign.center,),

                   if(c==3)
                   Text('$e',style: GoogleFonts.sarabun(fontSize: 50.0),textAlign: TextAlign.center,),

                   if(c==4)
                   Text('$e',style: GoogleFonts.mitr(fontSize: 50.0),textAlign: TextAlign.center,),

                   if(c==5)
                  Text('$e',style: GoogleFonts.taviraj(fontSize: 50.0),textAlign: TextAlign.center,),

                   if(c==6)
                  Text('$e',style: GoogleFonts.mali(fontSize: 50.0),textAlign: TextAlign.center,),
                 ],
               ),
               Column(
                 children: [
                   Text('Font: $s',style: TextStyle(fontSize: 20.0),),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Card(
                         elevation: 10.0, //การยกตัวของการ์ด ซึ่งทำให้เกิดเงา
                         child: Wrap(
                             alignment: WrapAlignment.center,
                             children: [
                                 Padding(
                                   padding: const EdgeInsets.all(11.0),
                                   child: ElevatedButton( style: ElevatedButton.styleFrom(
                                     primary: Colors.teal
                                   ),
                                       onPressed: (){
                                     setState(() {
                                       s ="Prompt";
                                       c = 1;
                                     });
                                       },
                                       child: Text('Prompt')),
                                 ),
                               Padding(
                                 padding: const EdgeInsets.all(11.0),
                                 child: ElevatedButton( style: ElevatedButton.styleFrom(
                                     primary: Colors.teal
                                 ),
                                     onPressed: (){
                                       setState(() {
                                         s ="Kanit";
                                         c = 2;
                                       });
                                     },
                                     child: Text('Kanit')),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(11.0),
                                 child: ElevatedButton( style: ElevatedButton.styleFrom(
                                     primary: Colors.teal
                                 ),
                                     onPressed: (){
                                       setState(() {
                                         s ="Sarabun";
                                         c = 3;
                                       });
                                     },
                                     child: Text('Sarabun')),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(11.0),
                                 child: ElevatedButton( style: ElevatedButton.styleFrom(
                                     primary: Colors.teal
                                 ),
                                     onPressed: (){
                                       setState(() {
                                         s ="Mitr";
                                         c = 4;
                                       });
                                     },
                                     child: Text('Mitr')),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(11.0),
                                 child: ElevatedButton( style: ElevatedButton.styleFrom(
                                     primary: Colors.teal
                                 ),
                                     onPressed: (){
                                       setState(() {
                                         s ="Taviraj";
                                         c = 5;
                                       });
                                     },
                                     child: Text('Taviraj')),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(11.0),
                                 child: ElevatedButton( style: ElevatedButton.styleFrom(
                                     primary: Colors.teal
                                 ),
                                     onPressed: (){
                                       setState(() {
                                         s ="Mali";
                                         c = 6;
                                       });
                                     },
                                     child: Text('Mali')),
                               ),
                             ]
                         )
                       ,
                     ),
                   ),
                 ],
               )


             ],
           ),
        ),
    );
  }
}
