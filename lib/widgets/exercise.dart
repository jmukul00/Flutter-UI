import 'package:flutter/material.dart';

class Exercise extends StatelessWidget {
  const Exercise({Key? key, required this.startColor, required this.endColor}) : super(key: key);

  final Color startColor;
  final Color endColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20, top: 10),
          height: 140,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Image.asset("assets/images/yoga.png"),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, top: 10),
          height: 140,
          width: 300,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [startColor, endColor],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Ankle Pumpin \n Exercise", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.white),),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Image.asset("assets/images/clock.png", height: 20, width: 20,),
                        const SizedBox(width: 5,),
                        const Text('18 min', style: TextStyle(color: Colors.white),),
                      ],
                    ),
                    Image.asset("assets/images/play.png", height: 22, width: 22,),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}


