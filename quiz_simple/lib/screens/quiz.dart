import 'package:flutter/material.dart';
import 'package:quiz_simple/screens/intro_screen.dart';
import 'package:quiz_simple/screens/question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    // TODO: implement initState
    activeScreen = IntroPage(switchScreen);
    super.initState();
  }

  void switchScreen(){
    setState(() {
      activeScreen  = const QuestionScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: activeScreen,
    );
  }
}