import 'package:flutter/material.dart';

class BmiCalc extends StatelessWidget {
  const BmiCalc(
      {super.key,
      required this.age,
      required this.gender,
      required this.result});
  final double result;
  final bool gender;
  final int age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff0A101E),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color(0xff0A101E),
          title: const Text(
            "BMI RESULT",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Gender : ${gender ? "Male" : "Female"}",
                style: const TextStyle(fontSize: 25, color: Colors.white),
              ),
              Text(
                "Result : ${result.round()}",
                style: const TextStyle(fontSize: 25, color: Colors.white),
              ),
              Text(
                "Age : $age",
                style: const TextStyle(fontSize: 25, color: Colors.white),
              ),
              const SizedBox(
                height: 25,
              ),
              Image.asset(
                "assets/images/BMI.jpg",
              )
            ],
          ),
        ));
  }
}
