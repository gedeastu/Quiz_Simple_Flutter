import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  
  const IntroPage(this.startQuiz,{super.key});
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          // height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              const Color.fromARGB(255, 75, 42, 133),
              Color.fromARGB(255, 66, 38, 114)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [  
              Opacity(
                opacity: 0.7,
                child: Image.asset("assets/images/quiz-logo.png",width: 280,height: 280,)
              ),
              SizedBox(height: 70,),
              Text("Learn Flutter the fun way!",style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20),),
              SizedBox(height: 20,),
              OutlinedButton.icon(
              icon: Icon(Icons.arrow_right_alt,color: Colors.white),
              style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              ),
              onPressed: startQuiz, label: Text("Start Quiz",style: TextStyle(color: Colors.white),))
          ]),
        ),
      ),
    );
  }
}