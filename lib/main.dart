import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0XFF0A0E21),
          scaffoldBackgroundColor: Color(0XFF0A0E21),
          sliderTheme: SliderTheme.of(context).copyWith(
              inactiveTrackColor: Color(0XFF8D8E98),
              activeTrackColor: Colors.white,
              thumbColor: Color(0XFFEB1555),
              overlayColor: Color(0XFF29EB1555),
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 30)),
          textTheme: TextTheme(body1: TextStyle(color: Colors.white))),
      home: InputPage(),
    );
  }
}
