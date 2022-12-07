import 'package:flutter/material.dart';
import 'global_values.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  String candidateAnswer1 = candidateAnswers[0];
  String correctAnswer1 = correctAnswers[0];

  Widget getResult( ){

    return (candidateAnswer1 == correctAnswer1)
        ?
    const Text(' Congrajulations!', style: TextStyle(fontSize: 35),)
        :
    const Text(' Better Luck Next Time', style: TextStyle(fontSize: 35),);

  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch:Colors.cyan),
      title: 'welcome page',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: const Text('Result'),),
          body: Center(
            child: Column(
              children: [
                getResult(),
                ElevatedButton(onPressed: (){
                  Navigator.maybePop(context);
                },
                  child: const Text('Go back'),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
