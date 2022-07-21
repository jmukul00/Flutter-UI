import 'package:flutter/material.dart';
import 'package:ui/widgets/appointment_item.dart';
import 'package:ui/widgets/background_clip_path.dart';
import 'package:ui/widgets/exercise.dart';
import 'package:ui/widgets/schedule.dart';
import 'package:ui/widgets/treatment_plan.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          ClipPath(
            clipper: BackgroundClipPath(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              decoration: (const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFF25BDD3), Color(0xFF7F7CE8)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight))),
            ),
          ),
          Column(
            children: [
              topBar(context),
              appointmentItemsList(),
              const TreatmentPlan(),
              const Schedule(),
              todaysExerciseList(),
            ],
          ),
        ],
      ),
    ));
  }

  Widget topBar(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width-40,
                child: Row(
                  children: [
                    const Text(
                      "Namaskar ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text("Ashok Ji!",
                        style: TextStyle(color: Colors.white70, fontSize: 25)),
                     Expanded(
                       child: Container(
                         alignment: Alignment.centerRight,

                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                              ),
                              Image.asset("assets/images/bell.png",
                                  height: 24, width: 24),
                              Positioned(
                                right: 20,
                                  bottom: 13,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Image.asset("assets/images/rect.png",
                                          height: 15, width: 15),
                                      const Text("03", style: TextStyle(fontSize: 10,color: Color(0xFFD54B4B), fontWeight: FontWeight.w800),)
                                    ],
                                  )),
                            ],
                          ),
                    ),
                     ),
                  ],
                ),
              ),
              const Text("Here is your recent updates",
                  style: TextStyle(color: Colors.white54, fontSize: 16))
            ],
          ),
          //Image(image: image)
        ],
      ),
    );
  }

  Widget appointmentItemsList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: const EdgeInsets.only(left: 20, top: 25),
            child: const Text("Today's Appointment",
                style: TextStyle(color: Colors.white70, fontSize: 20))),
        SizedBox(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const <Widget>[
              AppointmentItem(
                backColor: Color(0xFF377FF0),
              ),
              AppointmentItem(backColor: Color(0xFFE85252)),
            ],
          ),
        ),
      ],
    );
  }

  Widget todaysExerciseList() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: const EdgeInsets.only(left: 20, top: 25),
              child: const Text("Today's Exercise",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                      fontWeight: FontWeight.w500))),
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const <Widget>[
                Exercise(
                  startColor: Color(0xB39D25D3),
                  endColor: Color(0xB3215DCE),
                ),
                Exercise(
                  startColor: Color(0xB3D32575),
                  endColor: Color(0xB3CEAD21),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
