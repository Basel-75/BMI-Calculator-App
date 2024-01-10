import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/Result.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Variables
  Color genderColorOnPressed = Colors.white;
  Color genderColorM = Colors.blue;
  Color genderColorF = Colors.purple;
  String gender = 'None';
  double heightValue = 165;
  int weightValue = 55;
  int age = 18;
  double result = 0;
  String range = '';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(
          child: Text(
            'BMI \n (Body mass index)',
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 150,
                      width: 200,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            gender = 'Male';
                          });
                        },
                        icon: Icon(
                          Icons.male,
                          size: 100,
                          color: gender == 'Female'
                              ? genderColorOnPressed
                              : genderColorM,
                        ),
                      ),
                    ),
                    Text(
                      'Male',
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 150,
                      width: 200,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            gender = 'Female';
                          });
                        },
                        icon: Icon(
                          Icons.female,
                          size: 100,
                          color: gender == 'Male'
                              ? genderColorOnPressed
                              : genderColorF,
                        ),
                      ),
                    ),
                    Text(
                      'Female',
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45),
              child: Container(
                padding: const EdgeInsets.all(35),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 24, 156, 196),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Text(
                      'Height',
                      style: GoogleFonts.roboto(
                        color: Colors.amber,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${heightValue.round()} cm',
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SliderTheme(
                      data: const SliderThemeData(
                        valueIndicatorColor: Colors.green,
                      ),
                      child: Slider(
                        min: 0,
                        max: 260,
                        divisions: 260,
                        activeColor: Colors.red,
                        inactiveColor: Colors.amber.shade100,
                        label: heightValue.round().toString(),
                        value: heightValue,
                        onChanged: (value) => setState(() {
                          heightValue = value;
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                          top: 60,
                          left: 30,
                          right: 30,
                          bottom: 80,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 24, 156, 196),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Weight',
                              style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '$weightValue',
                              style: GoogleFonts.roboto(
                                color: Colors.orange,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                FloatingActionButton(
                                  mini: true,
                                  onPressed: () {
                                    setState(() {
                                      weightValue--;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.remove,
                                  ),
                                ),
                                FloatingActionButton(
                                  mini: true,
                                  onPressed: () {
                                    setState(() {
                                      weightValue++;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.add,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          top: 60,
                          left: 30,
                          right: 30,
                          bottom: 80,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 24, 156, 196),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Age',
                              style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '$age',
                              style: GoogleFonts.roboto(
                                color: Colors.orange,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                FloatingActionButton(
                                  mini: true,
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.remove,
                                  ),
                                ),
                                FloatingActionButton(
                                  mini: true,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.add,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: Colors.teal,
              width: screenWidth,
              child: TextButton(
                onPressed: () {
                  _sendDataToSecondScreen(context);
                },
                child: Text(
                  'Calculate',
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _sendDataToSecondScreen(BuildContext context) {
    result = weightValue / pow((heightValue / 100), 2);
    if (result < 18.5) {
      range = 'UnderWeight';
    } else if (result >= 18.5 && result < 25) {
      range = 'Normal';
    } else if (result >= 25 && result < 30) {
      range = 'OverWeight';
    } else {
      range = 'Obese';
    }

    Set valuesToSend = {
      gender,
      heightValue,
      weightValue,
      age,
      result.toStringAsFixed(1),
      range,
    };
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultPage(
          values: valuesToSend,
        ),
      ),
    );
  }
}
