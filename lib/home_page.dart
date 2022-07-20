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
        body: Stack(
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
            topBar(),
            appointmentItemsList(),
            const TreatmentPlan(),
            const Schedule(),
            todaysExerciseList()
          ],
        ),
      ],
    ));
  }

  Widget topBar() {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text(
                    "Namaskar ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text("Ashok Ji!",
                      style: TextStyle(color: Colors.white70, fontSize: 25))
                ],
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: const EdgeInsets.only(left: 20, top: 25),
            child: const Text("Today's Exercise",
                style: TextStyle(color: Colors.black87, fontSize: 18))),
        SizedBox(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const <Widget>[
              Exercise(
                startColor: Color(0xFF9D25D3),
                endColor: Color(0xFF215DCE),
              ),
              Exercise(
                startColor: Color(0xFFD32575),
                endColor: Color(0xFFCEAD21),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
