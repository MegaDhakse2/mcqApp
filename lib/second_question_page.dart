import 'package:flutter/material.dart';

class SecondQuestionPage extends StatefulWidget {
  final String question2;
  const SecondQuestionPage({Key? key, required this.question2}) : super(key: key);

  @override
  State<SecondQuestionPage> createState() => _SecondQuestionPageState();
}

class _SecondQuestionPageState extends State<SecondQuestionPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch:Colors.cyan),
      title: 'welcome page',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: const Text('Question 2'),),
          body: Column(
            children: [
               Text('Q:   ${widget.question2}', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w400, ),),
              Align(
                alignment: Alignment.bottomLeft,
                child: TextButton(onPressed: () {
                  Navigator.maybePop(context);
                },

                  child: const Text('Previous Question'),),
              )
            ],
          ),
        ),
      ),
    );
  }
}

