import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'appBar.dart';


class BuySharg extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar: const CustomAppBar(title: "mahdi"),
        body: Column(
          children: [
             Align(
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
          )
           ,const Padding(padding: EdgeInsets.only(left:12 )
          , child:  Row(
            children: [
              Align(alignment: Alignment.center,), Expanded(child:Text("6037-7015-5128-5122",style: TextStyle(fontSize: 21),)),
              Padding(padding: EdgeInsets.only(top: 24,right: 12,),
              child: Expanded(child:Text("شماره کارت",style: TextStyle(fontSize: 21),)),)
            ],
          )
          ) 
          ,const Padding(padding: EdgeInsets.only(left:12 )
          , child:  Row(
            children: [
              Align(alignment: Alignment.center,), Expanded(child:Text("...",style: TextStyle(fontSize: 21),)),
              Padding(padding: EdgeInsets.only(top: 4,right: 12,),
              child: Expanded(child:Text("عنوان",style: TextStyle(fontSize: 21),)),)
            ],
          )
          ) 
        ]
       )
      )
    );
  }
}
