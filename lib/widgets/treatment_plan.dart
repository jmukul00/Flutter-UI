import 'package:flutter/material.dart';

class TreatmentPlan extends StatelessWidget {
  const TreatmentPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  children: const [
                    Text(
                      "40 days",
                      style: TextStyle(
                          color: Color(0xFF3F8CD9),
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Treatment Plan",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Start from: 24 Jan 2020",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              )
            ],
          ),
          treatmentGraph(40, 30),
        ],
      ),
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
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center),
          Container(
            margin: EdgeInsets.only(bottom: 3, top: 3),
            height: 8,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: LinearProgressIndicator(
                backgroundColor: const Color(0xFFE6E6E6),
                valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF2727D1)),
                value: remainingDays.toDouble() / totalDays.toDouble(),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('0', style: TextStyle(color: Colors.black38, fontSize: 12),),
              Text("$totalDays", style: const TextStyle(color: Colors.black38,fontSize: 12))
            ],
          )
        ],
      ),
    );
  }
}
