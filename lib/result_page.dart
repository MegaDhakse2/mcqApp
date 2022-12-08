import 'package:flutter/material.dart';
import 'package:mcq_app/global_values.dart';

List<dynamic> result = [];
dynamic resultValue;

class ResultPage extends StatefulWidget {

  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {

 dynamic getResult(){
   result.clear();
   if( candidateAnswers[0] == correctAnswers[0]){
     result.add(1);
   }
   if( candidateAnswers[1] == correctAnswers[1]){
     result.add(1);
   }
   if( candidateAnswers[2] == correctAnswers[2]){
     result.add(1);
   }
   dynamic sum=0;

   for(int i=0; i<result.length; i++){
     sum= sum+ result[i];
     resultValue = sum/3 * 100 ;
   }
   print('sum is $sum');
   print('your score resultValue is ${resultValue?.toStringAsFixed(2)} %');
   return resultValue?.toStringAsFixed(2);

 }
 dynamic displayResult(){
   getResult();
   if( resultValue != null && resultValue < 35){
     return Text('Better Luck Next Time, your score is  ${resultValue.toStringAsFixed(2)} %',
       style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w400, ),);
   }
   else if( resultValue != null && resultValue > 35 && resultValue < 75){
     return Text('Keep it up you are passed, your score is  ${resultValue.toStringAsFixed(2)} %',
       style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w400, ),);
   }
   else if ( resultValue != null &&  resultValue > 75 && resultValue < 90 ){
     return Text('Congrajulations you are passed, your score is  ${resultValue.toStringAsFixed(2)} %',
       style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w400, ),);
   }
   else if ( resultValue != null && resultValue > 90 ){
     return Text('Wonderful you are great, you scored  ${resultValue.toStringAsFixed(2)} %',
       style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w400, ),);
   }
   else if (resultValue == 0)
     {
       return const Text(' You didn\'t attempted any question..',
         style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400, ),);
     }
   else
     {
       return const Text('You answered all incorrect',
         style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400, ),);
     }

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
                const SizedBox(height: 150,),

                displayResult(),
                ElevatedButton(onPressed: (){
                  Navigator.pushNamedAndRemoveUntil(context, '/loginPage', (routes)=>false );
                  correctAnswers.clear();
                  candidateAnswers.clear();
                  resultValue = 0;
                },
                  child: const Text('Finish'),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
