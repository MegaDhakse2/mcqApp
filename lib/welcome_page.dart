import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch:Colors.cyan),
      title: 'Welcome Page',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: const Text('welcome'),),
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [

                const Text('Thank you for your interest',
                  style: TextStyle(fontSize: 17, fontWeight:FontWeight.w600, ),
                ),
                const Text('\n Read the below Instructions carefully: ',
                  style: TextStyle(fontSize: 17, fontWeight:FontWeight.w400, ),
                ),
                const Text.rich(
                  TextSpan(
                    style: TextStyle(fontSize: 17, fontWeight:FontWeight.w400, ),

                    children: [
                      TextSpan(
                          text: '\n 1. You will have 5 questions. Each carries 2 marks. '
                      ),
                      TextSpan(
                          text: '\n 2.Make sure you have selected the option before moving to next question. '
                      ),
                      TextSpan(
                          text: '\n 3. At the end of the exam don\'t forgot to submit. '
                      ),
                      TextSpan(
                          text: '\n 3. Finally you will get your result after submission. '
                      )
                    ],

                  ),
                ),
                const SizedBox(height: 70,),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, '/firstQuestionPage');
                  },
                      child: const Text('Start Exam'),),
                ),

                const Text('All the best \n    Do Well'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
