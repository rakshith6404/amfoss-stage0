import 'package:flutter/materia'
    'l.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        title: const Text("Welcome"),
        backgroundColor: Colors.transparent
      ),

      body: Column(
        children: <Widget>[
          Image.asset(
              'assets/welcome.png',
            width: 1000,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text("Heyy!!!! I am Rakshith From S1 ECE (completed S1) \n\n I Love to Code \n\n I am a hard-working and driven individual who isn't afraid to face a challenge.\n\nI'm passionate about my work and I know how to get the job done. I would describe myself as an open and honest person who doesn't believe in misleading other people and tries to be fair in everything I do.😊😊 "),
          )
        ],
      )
    );
  }
}
