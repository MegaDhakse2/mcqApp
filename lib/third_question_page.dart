import 'package:flutter/material.dart';
import 'package:mcq_app/global_values.dart';

class ThirdQuestionPage extends StatefulWidget {
  const ThirdQuestionPage({Key? key}) : super(key: key);

  @override
  State<ThirdQuestionPage> createState() => _ThirdQuestionPageState();
}

class _ThirdQuestionPageState extends State<ThirdQuestionPage> {
  String? answer3;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch:Colors.cyan),
      title: 'Third Page',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: const Text('Question 3'),),
          body: Column(
            children: [
              const SizedBox(height: 70,),

              Text('Q:   ${questions[2]}', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w400, ),),
              RadioListTile(
                  title: Text(optionsList[2]['option1']),
                  value: optionsList[2]['option1'].toString(),
                  groupValue: answer3,
                  onChanged: (String? value){
                    setState(() {
                      if(candidateAnswers.length == 3){
                        candidateAnswers.removeLast();
                      }
                      answer3 = value;
                      print('candidateAnswers list before adding option1 ${candidateAnswers.toString()}');
                      candidateAnswers.insert(2, answer3.toString());
                      print('candidate selected option is $answer3');
                      print('candidateAnswers list after adding option1 ${candidateAnswers.toString()}');

                    });
                  }
              ),
              RadioListTile(
                  title: Text(optionsList[2]['option2']),
                  value: optionsList[2]['option2'].toString(),
                  groupValue: answer3,
                  onChanged: (String? value){
                    setState(() {
                      if(candidateAnswers.length == 3){
                        candidateAnswers.removeLast();
                      }
                      answer3 = value;
                      print('candidateAnswers list before adding option1 ${candidateAnswers.toString()}');
                      candidateAnswers.insert(2, answer3.toString());
                      print('candidate selected option is $answer3');
                      print('candidateAnswers list after adding option2 ${candidateAnswers.toString()}');

                    });
                  }
              ),
              RadioListTile(
                  title: Text(optionsList[2]['option3']),
                  value: optionsList[2]['option3'].toString(),
                  groupValue: answer3,
                  onChanged: (String? value){
                    setState(() {
                      if(candidateAnswers.length == 3){
                        candidateAnswers.removeLast();
                      }
                      answer3 = value;
                      print('candidateAnswers list before adding option1 ${candidateAnswers.toString()}');
                      candidateAnswers.insert(2, answer3.toString());
                      print('candidate selected option is $answer3');
                      print('candidateAnswers list after adding option2 ${candidateAnswers.toString()}');

                    });
                  }
              ),
              RadioListTile(
                  title: Text(optionsList[1]['option4']),
                  value: optionsList[1]['option4'].toString(),
                  groupValue: answer3,
                  onChanged: (String? value){
                    setState(() {
                      if(candidateAnswers.length == 3){
                        candidateAnswers.removeLast();
                      }
                      answer3 = value;
                      print('candidateAnswers list before adding option1 ${candidateAnswers.toString()}');
                      candidateAnswers.insert(2, answer3.toString());
                      print('candidate selected option is $answer3');
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
                  const SizedBox(width: 100,),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, '/resultPage');
                      correctAnswers.add(option2q3);
                      if(candidateAnswers.length == 2){
                        candidateAnswers.add('  ');
                      }
                      print('candidateAnswers list is $candidateAnswers');
                      print('correctAnswers list is $correctAnswers');
                    },

                      child: const Text('Submit'),),
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
