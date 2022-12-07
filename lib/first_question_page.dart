import 'package:flutter/material.dart';
import 'global_values.dart';



class FirstQuestionPage extends StatefulWidget {
  final String question1;
  final String option1q1;
  final String option2q1;
  final String option3q1;
  final String option4q1;
   const FirstQuestionPage({Key? key, required this.question1, required this.option1q1, required this.option2q1, required this.option3q1, required this.option4q1}) : super(key: key);

  @override
  State<FirstQuestionPage> createState() => _FirstQuestionPageState();
}

class _FirstQuestionPageState extends State<FirstQuestionPage> {
  String? answer1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch:Colors.cyan),
      title: 'welcome page',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: const Text('Question 1'),),
          body: Column(
            children: [
              Text('Q:   ${widget.question1}', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w400, ),),

              RadioListTile(
                title: Text(widget.option1q1),
                  value: widget.option1q1,
                  groupValue: answer1,
                  onChanged: (String? value){
                    setState(() {
                      if(candidateAnswers.isNotEmpty){
                        candidateAnswers.removeLast();
                      }
                      answer1 = value;
                      print('answers list before adding option1 ${candidateAnswers.toString()}');
                      candidateAnswers.add(answer1.toString());
                      print('candidate selected option is $answer1');
                      print('answers list after adding option1 ${candidateAnswers.toString()}');

                    });
                  }
              ),
              RadioListTile(
                title: Text(widget.option2q1),
                  value: widget.option2q1,
                  groupValue: answer1,
                  onChanged: (String? value){
                    setState(() {
                      if(candidateAnswers.isNotEmpty){
                        candidateAnswers.removeLast();
                      }
                      answer1 = value;
                      print('answers list before adding option1 ${candidateAnswers.toString()}');
                      candidateAnswers.add(answer1.toString());
                      print('candidate selected option is $answer1');
                      print('answers list after adding option2 ${candidateAnswers.toString()}');

                    });
                  }
              ),
              RadioListTile(
                title: Text(widget.option3q1),
                  value: widget.option3q1,
                  groupValue: answer1,
                  onChanged: (String? value){
                    setState(() {
                      if(candidateAnswers.isNotEmpty){
                        candidateAnswers.removeLast();
                      }
                      answer1 = value;
                      print('answers list before adding option1 ${candidateAnswers.toString()}');
                      candidateAnswers.add(answer1.toString());
                      print('candidate selected option is $answer1');
                      print('answers list after adding option2 ${candidateAnswers.toString()}');

                    });
                  }
              ),
              RadioListTile(
                title: Text(widget.option4q1),
                  value: widget.option4q1,
                  groupValue: answer1,
                  onChanged: (String? value){
                    setState(() {
                      if(candidateAnswers.isNotEmpty){
                        candidateAnswers.removeLast();
                      }
                      answer1 = value;
                      print('answers list before adding option1 ${candidateAnswers.toString()}');
                      candidateAnswers.add(answer1.toString());
                      print('candidate selected option is $answer1');
                      print('answers list after adding option2 ${candidateAnswers.toString()}');

                    });
                  }
              ),
              Row(
                children: [

                  Align(
                    alignment: Alignment.bottomLeft,
                    child: TextButton(onPressed: () {
                      Navigator.maybePop(context);
                    },

                      child: const Text('Go to welcome page'),),
                  ),
                  SizedBox(width: 100,),

                  Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context,  '/resultPage');
                    },

                      child: const Text('Next Question'),),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
