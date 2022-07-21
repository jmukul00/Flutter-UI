import 'package:flutter/material.dart';

class Schedule extends StatelessWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Container(
          height: 70,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 2),
          decoration: BoxDecoration(
            color: Color(0xFFED9A47),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin:EdgeInsets.only(right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Schedule", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22),),
                    Text("15 more sessions", style: TextStyle(color: Colors.white70, fontSize: 17),)
                  ],
                ),
              ),
              Container(margin:EdgeInsets.only(right: 20),child: Image.asset("assets/images/add.png", height: 30, width: 30,)),
            ],
          ),
        ),
        Positioned(left:22, bottom: -20, width: 125,height: 125, child: Image.asset("assets/images/yoga.png", )),
      ],

    );
  }
}
