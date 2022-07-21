import 'package:flutter/material.dart';

class TreatmentPlan extends StatelessWidget {
  const TreatmentPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 180,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(0.0, 2.0),
                  blurRadius: 6.0,
                )
              ]),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20, top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "40 days",
                          style: TextStyle(
                              color: Color(0xFF3F8CD9),
                              fontSize: 26,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5,),
                        const Text(
                          "Treatment Plan",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 5,),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Image.asset("assets/images/calender.png", height: 20, width: 20,),
                            const SizedBox(width: 5,),
                            const Text('Start from: 24 Jan 2020', style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              treatmentGraph(40, 20),
            ],
          ),
        ),
        Positioned(
            left: MediaQuery.of(context).size.width-150,
            height:120,
            width: 120,child: Image.asset("assets/images/run.png", width: 100, height: 100,))

      ],
     
    );
  }

  Widget treatmentGraph(int totalDays, int remainingDays) {
    print(remainingDays.toDouble() / totalDays.toDouble());
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text("$remainingDays days",
              style:
                  const TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center),
          LayoutBuilder(builder: (ctx, constraint){
            return SizedBox(
              height: 8,
              width: constraint.maxWidth,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFE6E6E6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  FractionallySizedBox(
                   widthFactor: remainingDays>totalDays ? 1:remainingDays.toDouble() / totalDays.toDouble(),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [Color(0xFF9326E3),  Color(0xFF2727D1)]),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('0', style: TextStyle(color: Colors.black38, fontSize: 12, fontWeight: FontWeight.w800),),
              Text("$totalDays", style: const TextStyle(color: Colors.black38,fontSize: 12,fontWeight: FontWeight.w800))
            ],
          )
        ],
      ),
    );
  }
}

