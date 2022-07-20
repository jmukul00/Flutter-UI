import 'dart:ui';

import 'package:flutter/material.dart';

class AppointmentItem extends StatelessWidget {
  const AppointmentItem({Key? key, required this.backColor}) : super(key: key);

  final Color backColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: 110,
      width: 300,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
              BorderRadius.circular(20.0),),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(2),
            height: 110,
            width: 75,
            decoration: BoxDecoration(
              color: backColor,
              borderRadius:
              BorderRadius.circular(20.0),),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: const [
                Text("2020",style: TextStyle(color: Colors.white24),),
                Text("24",style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),),
                Text("JAN",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("ID: 383737",style: TextStyle(color: Colors.black45),),
                Text("03:00 PM",style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
                Text("Remain Time: 03:44:22",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),)
              ],
            ),
          )
        ],
      ),

    );
  }


  Widget appointmentDate(){
    return Container();
  }
}
