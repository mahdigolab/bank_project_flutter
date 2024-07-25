import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        // appBar: AppBar(title: Text("خرید شارژ",style: TextStyle(color:const Color.fromARGB(255, 255, 255, 255)),),
        //centerTitle: true,backgroundColor:Color.fromARGB(255, 80, 174, 73),),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 60, 135, 66),
          title: const Row(
          children: [
            Expanded(child: Align(alignment:Alignment.centerLeft ,
            child: Icon(Icons.arrow_back_ios, size: 30, color: Colors.white))),
             Expanded(child: Align(alignment:Alignment.centerLeft ,
             child: Text("خرید شارژ",style: TextStyle(color:Color.fromARGB(255, 255, 255, 255))),)),
            // Text("خرید شارژ",style: TextStyle(color:Color.fromARGB(255, 255, 255, 255))),
            Icon(Icons.home, size: 42, color: Colors.white)
          ],
        )),
        body:  Align(
          alignment: Alignment.topLeft,
          child:Row(
            children: [
              const Padding(padding: EdgeInsets.only(left:12.0,top:1.0,)),
              Container(
                decoration: const BoxDecoration(color: Color.fromARGB(255, 60, 135, 66), shape: BoxShape.circle),
                child: const Padding(padding: EdgeInsets.all(6.0),
              child: Icon(Icons.account_balance_outlined, size: 30, color: Colors.white,)) ,
              ),
              const Padding(padding: EdgeInsets.only(left:6.0,top:50.0)),
              Container(
                decoration: const BoxDecoration(color: Color.fromARGB(255, 60, 135, 66), shape: BoxShape.circle),
                child: const Padding(padding: EdgeInsets.all(6.0),
              child: Icon(Icons.info_outline_rounded, size: 30, color: Colors.white,)) ,
              ),
              const Padding(padding: EdgeInsets.only(left:6.0,top:1.0)),
              Container(
                decoration: const BoxDecoration(color: Color.fromARGB(255, 60, 135, 66), shape: BoxShape.circle),
                child: const Padding(padding: EdgeInsets.all(6.0),
              child: Icon(Icons.phone, size: 30, color: Colors.white,)) ,
              ),
            ],
          )
        ),
      )
    );
  }
}