import 'dart:math';
import 'package:flutter/material.dart';
import 'bmi_calc.dart';

class BMI extends StatefulWidget {
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMIState();
}

double height = 180;
bool isMale = true;

class _BMIState extends State<BMI> {
  int weight = 60;
  int age = 28;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A101E),
      appBar: AppBar(
        backgroundColor: const Color(0xff0A101E),
        title: const Text(
          "BMI CALCULATOR",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                        color: isMale
                            ? const Color(0xff15357F)
                            : const Color(0xff0D1321),
                        borderRadius: BorderRadius.circular(25)),
                    child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.male, size: 80, color: Colors.white),
                          Text(
                            "MALE",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ]),
                  ),
                )),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                        color: isMale
                            ? const Color(0xff0D1321)
                            : const Color(0xff15357F),
                        borderRadius: BorderRadius.circular(25)),
                    child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.female, size: 80, color: Colors.white),
                          Text(
                            "FEMALE",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ]),
                  ),
                ))
              ]),
            ),
          )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xff1A1B2F),
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "HEIGHT",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "${height.round()}",
                            style: const TextStyle(
                              fontSize: 55,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "cm",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        thumbColor: const Color(0xff15357F),
                        activeColor: const Color.fromARGB(205, 24, 62, 151),
                        inactiveColor: Colors.white,
                        max: 220,
                        min: 60,
                        value: height,
                        onChanged: (value) {
                          height = value;
                          setState(() {});
                        },
                      )
                    ]),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                color: const Color(0xff0A101E),
                child: Row(children: [
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xff1A1B2F)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "WEIGHT",
                            style: TextStyle(color: Colors.grey, fontSize: 22),
                          ),
                          Text(
                            weight.toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: const Color(0xff404654),
                                child: IconButton(
                                    onPressed: () {
                                      weight++;
                                      setState(() {});
                                    },
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    )),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              CircleAvatar(
                                backgroundColor: const Color(0xff404654),
                                child: IconButton(
                                    onPressed: () {
                                      weight--;
                                      setState(() {});
                                    },
                                    icon: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    )),
                              )
                            ],
                          )
                        ]),
                  )),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xff1A1B2F)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "AGE",
                            style: TextStyle(color: Colors.grey, fontSize: 22),
                          ),
                          Text(
                            age.toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: const Color(0xff404654),
                                child: IconButton(
                                    onPressed: () {
                                      age++;
                                      setState(() {});
                                    },
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    )),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              CircleAvatar(
                                backgroundColor: const Color(0xff404654),
                                child: IconButton(
                                    onPressed: () {
                                      age--;
                                      setState(() {});
                                    },
                                    icon: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    )),
                              )
                            ],
                          )
                        ]),
                  )),
                  const SizedBox(
                    width: 20,
                  ),
                ]),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 65,
            color: const Color.fromARGB(205, 24, 62, 151),
            child: GestureDetector(
              onTap: () {
                var result = weight / pow(height / 100, 2);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          BmiCalc(age: age, result: result, gender: isMale),
                    ));
              },
              child: const Center(
                child: Text(
                  "CALCULATE",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
