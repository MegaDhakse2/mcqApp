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
      title: 'welcome page',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: const Text('welcome'),),
          body: Center(
            child: Column(
              children: [

                Text('jkfdk'),
                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, '/firstQuestionPage');
                },
                    child: const Text('Start Exam'),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
