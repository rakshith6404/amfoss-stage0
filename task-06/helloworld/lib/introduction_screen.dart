import 'package:flutter/material.dart';
import 'package:helloworld/home_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);

  final List<PageViewModel> pages=[
    PageViewModel(
      title: "YOGA SURGE",
      body: "Welcome to yoga World.\n \nInhale the future,Exhale the past.",
      image: Center(
        child: Image.asset('assets/page1.png'),
      ),
      decoration:  const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        )
      )
    ),
    PageViewModel(
        title: "Healthy Freaks Exercises",
        body: "Letting go is the hardest asana.",
        image: Center(
          child: Image.asset('assets/page2.png'),
        ),
        decoration:  const PageDecoration(
            titleTextStyle: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            )
        )
    ),
    PageViewModel(
        title: "Cycling",
        body: "You cannot always control what goes on outside.But you can always control what goes on inside.",
        image: Center(
          child: Image.asset('assets/page3.png'),
        ),
        decoration:  const PageDecoration(
            titleTextStyle: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            )
        )
    ),
    PageViewModel(
        title: "Meditation",
        body: "The longest journey of any person is the journey inward.",
        image: Center(
          child: Image.asset('assets/page4.png'),
        ),
        decoration:  const PageDecoration(
            titleTextStyle: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            )
        )
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: pages,
        dotsDecorator: const DotsDecorator(
          size: Size(5,5),
          color: Colors.grey,
          activeSize: Size.square(15),
          activeColor: Colors.black,
        ),
        showDoneButton: true,
        done: const Text('Get Started',style: TextStyle(fontSize: 20),),
        showSkipButton: true,
        skip: const Text('Skip',style: TextStyle(fontSize: 20),),
        showNextButton: false,
        onDone: () => onDone(context),
      )
    );
  }

  void onDone(context){
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()));
  }
}
