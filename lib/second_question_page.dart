import 'package:flutter/material.dart';
import 'package:mcq_app/global_values.dart';

class SecondQuestionPage extends StatefulWidget {
  const SecondQuestionPage({Key? key}) : super(key: key);

  @override
  State<SecondQuestionPage> createState() => _SecondQuestionPageState();
}

class _SecondQuestionPageState extends State<SecondQuestionPage> {
  String? answer2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch:Colors.cyan),
      title: 'Second Page',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: const Text('Question 2'),),
          body: Column(
            children: [
              const SizedBox(height: 70,),

              Text('Q:   ${questions[1]}', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w400, ),),
              RadioListTile(
                  title: Text(optionsList[1]['option1']),
                  value: optionsList[1]['option1'].toString(),
                  groupValue: answer2,
                  onChanged: (String? value){
                    setState(() {
                      if(candidateAnswers.length == 2){
                        candidateAnswers.removeLast();
                      }
                      answer2 = value;
                      print('candidateAnswers list before adding option1 ${candidateAnswers.toString()}');
                      candidateAnswers.insert(1, answer2.toString());
                      print('candidate selected option is $answer2');
                      print(' candidateAnswers list after adding option1 ${candidateAnswers.toString()}');

                    });
                  }
              ),
              RadioListTile(
                  title: Text(optionsList[1]['option2']),
                  value: optionsList[1]['option2'].toString(),
                  groupValue: answer2,
                  onChanged: (String? value){
                    setState(() {
                      if(candidateAnswers.length == 2){
                        candidateAnswers.removeLast();
                      }
                      answer2 = value;
                      print('candidateAnswers list before adding option1 ${candidateAnswers.toString()}');
                      candidateAnswers.insert(1, answer2.toString());
                      print('candidate selected option is $answer2');
                      print('candidateAnswers list after adding option2 ${candidateAnswers.toString()}');

                    });
                  }
              ),
              RadioListTile(
                  title: Text(optionsList[1]['option3']),
                  value: optionsList[1]['option3'].toString(),
                  groupValue: answer2,
                  onChanged: (String? value){
                    setState(() {
                      if(candidateAnswers.length == 2){
                        candidateAnswers.removeLast();
                      }
                      answer2 = value;
                      print('candidateAnswers list before adding option1 ${candidateAnswers.toString()}');
                      candidateAnswers.insert(1, answer2.toString());
                      print('candidate selected option is $answer2');
                      print('candidateAnswers list after adding option2 ${candidateAnswers.toString()}');

                    });
                  }
              ),
              RadioListTile(
                  title: Text(optionsList[1]['option4']),
                  value: optionsList[1]['option4'].toString(),
                  groupValue: answer2,
                  onChanged: (String? value){
                    setState(() {
                      if(candidateAnswers.length == 2){
                        candidateAnswers.removeLast();
                      }
                      answer2 = value;
                      print('candidateAnswers list before adding option1 ${candidateAnswers.toString()}');
                      candidateAnswers.insert(1, answer2.toString());
                      print('candidate selected option is $answer2');
                      print('candidateAnswers list after adding option2 ${candidateAnswers.toString()}');

                    });
                  }
              ),

              Row(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: TextButton(onPressed: () {
                      Navigator.maybePop(context);
                      if(candidateAnswers.isNotEmpty){
                        candidateAnswers.removeLast();
                      }
                      correctAnswers.removeLast();
                      print('candidateAnswers list is $candidateAnswers');
                      print('correctAnswers list is $correctAnswers');
                    },

                      child: const Text('Previous Question'),),
                  ),
                  SizedBox(width: 100,),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, '/thirdQuestionPage');
                      correctAnswers.add(option3q2);
                      if(candidateAnswers.length == 1){
                        candidateAnswers.add('');
                      }
                      print('candidateAnswers list is $candidateAnswers');
                      print('correctAnswers list is $correctAnswers');
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

