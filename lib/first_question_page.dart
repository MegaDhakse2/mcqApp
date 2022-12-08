import 'package:flutter/material.dart';
import 'global_values.dart';



class FirstQuestionPage extends StatefulWidget {
  // final String question1;
  // final String option1q1;
  // final String option2q1;
  // final String option3q1;
  // final String option4q1;
   const FirstQuestionPage({Key? key,}) : super(key: key);

  @override
  State<FirstQuestionPage> createState() => _FirstQuestionPageState();
}

class _FirstQuestionPageState extends State<FirstQuestionPage> {
  String? answer1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch:Colors.cyan),
      title: 'First Page',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: const Text('Question 1'),),
          body: Column(
            children: [
              const SizedBox(height: 70,),

              Text('Q:   ${questions[0]}', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w400, ),),

              RadioListTile(
                title: Text(optionsList[0]['option1']),
                  value: optionsList[0]['option1'].toString(),
                  groupValue: answer1,
                  onChanged: (String? value){
                    setState(() {
                      if(candidateAnswers.isNotEmpty){
                        candidateAnswers.removeLast();
                      }
                      answer1 = value;
                      print('candidateAnswers list before adding option1 ${candidateAnswers.toString()}');
                      candidateAnswers.insert(0, answer1.toString());
                      print('candidate selected option is $answer1');
                      print('candidateAnswers list after adding option1 ${candidateAnswers.toString()}');

                    });
                  }
              ),
              RadioListTile(
                title: Text(optionsList[0]['option2']),
                  value: optionsList[0]['option2'].toString(),
                  groupValue: answer1,
                  onChanged: (String? value){
                    setState(() {
                      if(candidateAnswers.isNotEmpty){
                        candidateAnswers.removeLast();
                      }
                      answer1 = value;
                      print('candidateAnswers list before adding option1 ${candidateAnswers.toString()}');
                      candidateAnswers.insert(0, answer1.toString());
                      print('candidate selected option is $answer1');
                      print(' candidateAnswers list after adding option2 ${candidateAnswers.toString()}');

                    });
                  }
              ),
              RadioListTile(
                title: Text(optionsList[0]['option3']),
                  value: optionsList[0]['option3'].toString(),
                  groupValue: answer1,
                  onChanged: (String? value){
                    setState(() {
                      if(candidateAnswers.isNotEmpty){
                        candidateAnswers.removeLast();
                      }
                      answer1 = value;
                      print('candidateAnswers list before adding option1 ${candidateAnswers.toString()}');
                      candidateAnswers.insert(0, answer1.toString());
                      print('candidate selected option is $answer1');
                      print('candidateAnswers list after adding option2 ${candidateAnswers.toString()}');

                    });
                  }
              ),
              RadioListTile(
                title: Text(optionsList[0]['option4']),
                  value: optionsList[0]['option4'].toString(),
                  groupValue: answer1,
                  onChanged: (String? value){

                    setState(() {
                      if(candidateAnswers.isNotEmpty){
                        candidateAnswers.removeLast();
                      }
                      answer1 = value;
                      print('candidateAnswers list before adding option1 ${candidateAnswers.toString()}');
                      candidateAnswers.insert(0, answer1.toString());
                      print('candidate selected option is $answer1');
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
                      print('candidateAnswers list is $candidateAnswers');
                      print('correctAnswers list is $correctAnswers');
                    },

                      child: const Text('Go to welcome page'),),
                  ),
                  SizedBox(width: 100,),

                  Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context,  '/secondQuestionPage');
                      correctAnswers.add(option1q1);
                      if(candidateAnswers.isEmpty){
                        candidateAnswers.add('');
                        print('candidateAnswers is empty ${candidateAnswers[0]}');
                      }
                      print('candidateAnswers list is $candidateAnswers');
                      print('correctAnswers list is $correctAnswers');                    },

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
