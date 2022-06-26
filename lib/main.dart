import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double rvalue = 120;
  double gvalue = 120;
  double bvalue = 120;
  double avalue = 120;

  double positionValue = -300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: Image.asset(
                    'images/bg.jpg',
                    color: Color.fromARGB(avalue.round(), rvalue.round(),
                        gvalue.round(), bvalue.round()),
                    fit: BoxFit.fitHeight,
                    colorBlendMode: BlendMode.hardLight,
                  ),
                ),
                AnimatedPositioned(
                    bottom: positionValue,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.blue.withOpacity(0.5),
                      height: MediaQuery.of(context).size.height * .5,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Filter',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (positionValue == -300) {
                                          positionValue = 0;
                                        } else {
                                          positionValue = -300;
                                        }
                                      });
                                    },
                                    child: positionValue == -300
                                        ? Icon(
                                            Icons.keyboard_arrow_up,
                                            size: 20,
                                            color: Colors.white,
                                          )
                                        : Icon(
                                            Icons.keyboard_arrow_down,
                                            size: 20,
                                            color: Colors.white,
                                          ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 12,
                              child: Column(
                                children: [
                                  Text(
                                    'Red',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Slider(
                                      activeColor: Colors.white,
                                      inactiveColor:
                                          Colors.blue.withOpacity(.5),
                                      value: rvalue,
                                      label: '$rvalue',
                                      min: 0,
                                      max: 255,
                                      divisions: 255,
                                      onChanged: (value) {
                                        setState(() {
                                          rvalue = value;
                                        });
                                      }),
                                  Text(
                                    'Blue',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Slider(
                                      activeColor: Colors.white,
                                      inactiveColor:
                                          Colors.blue.withOpacity(.5),
                                      value: bvalue,
                                      label: '$bvalue',
                                      min: 0,
                                      max: 255,
                                      divisions: 255,
                                      onChanged: (value) {
                                        setState(() {
                                          bvalue = value;
                                        });
                                      }),
                                  Text(
                                    'Green',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Slider(
                                      activeColor: Colors.white,
                                      inactiveColor:
                                          Colors.blue.withOpacity(.5),
                                      value: gvalue,
                                      label: '$gvalue',
                                      min: 0,
                                      max: 255,
                                      divisions: 255,
                                      onChanged: (value) {
                                        setState(() {
                                          gvalue = value;
                                        });
                                      }),
                                  Text(
                                    'Alpha',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Slider(
                                      activeColor: Colors.white,
                                      inactiveColor:
                                          Colors.blue.withOpacity(.5),
                                      value: avalue,
                                      label: '$avalue',
                                      min: 0,
                                      max: 255,
                                      divisions: 255,
                                      onChanged: (value) {
                                        setState(() {
                                          avalue = value;
                                        });
                                      }),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    duration: Duration(seconds: 1)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
