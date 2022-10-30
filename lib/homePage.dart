// ignore: file_names
// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'resultPage.dart';
import 'dart:math';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isMale = true;
  double height = 50.0;
  int weight = 70;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Body Mass Index',
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: (SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width / 2.5,
                      margin: const EdgeInsets.fromLTRB(0, 20, 0, 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isMale ? Colors.teal : Colors.blueGrey),
                      child: Column(
                        children: const [
                          Icon(
                            Icons.male,
                            size: 120,
                            color: Colors.white,
                          ),
                          Text(
                            'Male',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 20, 0, 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isMale ? Colors.blueGrey : Colors.teal),
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: Column(
                        children: const [
                          Icon(
                            Icons.female,
                            size: 120,
                            color: Colors.white,
                          ),
                          Text(
                            'Female',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.all(5),
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.19,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Height',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toStringAsFixed(1),
                          style: const TextStyle(
                              fontSize: 70, color: Colors.white),
                        ),
                        const Text(
                          'CM',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    Slider(
                      value: height,
                      onChanged: (newValue) {
                        setState(() => height = newValue);
                      },
                      min: 50,
                      max: 200,
                      divisions: 300,
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Spacer(
                    flex: 2,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: MediaQuery.of(context).size.height / 4,
                    margin: const EdgeInsets.fromLTRB(5, 5, 2, 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueGrey),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Weight',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '$weight',
                          style: const TextStyle(
                              fontSize: 70, fontWeight: FontWeight.w700),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton(
                              heroTag: 'weight++',
                              child: const Icon(
                                Icons.add,
                                size: 35,
                              ),
                              onPressed: (() {
                                setState(() {
                                  weight++;
                                });
                              }),
                              backgroundColor: Colors.teal,
                              foregroundColor: Colors.white,
                            ),
                            FloatingActionButton(
                              heroTag: 'weight--',
                              child: const Icon(
                                Icons.remove,
                                size: 35,
                              ),
                              onPressed: (() {
                                setState(() {
                                  weight--;
                                });
                              }),
                              backgroundColor: Colors.teal,
                              foregroundColor: Colors.white,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: MediaQuery.of(context).size.height / 4,
                    margin: const EdgeInsets.fromLTRB(2, 5, 5, 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueGrey),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Age',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '$age',
                          style: const TextStyle(
                              fontSize: 70, fontWeight: FontWeight.w700),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton(
                              heroTag: 'age++',
                              child: const Icon(
                                Icons.add,
                                size: 35,
                              ),
                              onPressed: (() {
                                setState(() {
                                  age++;
                                });
                              }),
                              backgroundColor: Colors.teal,
                              foregroundColor: Colors.white,
                            ),
                            FloatingActionButton(
                              heroTag: 'age--',
                              child: const Icon(
                                Icons.remove,
                                size: 35,
                              ),
                              onPressed: (() {
                                setState(() {
                                  age--;
                                });
                              }),
                              backgroundColor: Colors.teal,
                              foregroundColor: Colors.white,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  )
                ],
              ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: MediaQuery.of(context).size.height / 17,
                  width: MediaQuery.of(context).size.width / 1.19,
                  child: ElevatedButton(
                      onPressed: (() {
                        var result = weight / pow(height / 100, 2);
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return ResultPage(
                            age: age,
                            isMale: isMale,
                            result: result,
                          );
                        })));
                      }),
                      child: const Text(
                        'Calculate',
                        style: TextStyle(fontSize: 25),
                      )))
            ],
          ),
        )));
  }
}
