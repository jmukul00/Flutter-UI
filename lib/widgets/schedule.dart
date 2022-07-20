import 'package:flutter/material.dart';

class Schedule extends StatelessWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 5),
      decoration: BoxDecoration(
          color: Color(0xFFED9A47),
          borderRadius: BorderRadius.circular(20.0),
        ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Schedule", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22),),
              Text("15 more sessions", style: TextStyle(color: Colors.white70, fontSize: 17),)
            ],
          )
        ],
      ),
    );
  }
}
