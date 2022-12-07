import 'package:flutter/material.dart';
import 'package:mcq_app/first_question_page.dart';
import 'package:mcq_app/result_page.dart';
import 'package:mcq_app/second_question_page.dart';
import 'package:mcq_app/welcome_page.dart';
import 'global_values.dart';



void main(){
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch:Colors.cyan),
    title: 'question and answer app',
    initialRoute: '/loginPage',
    routes: <String, WidgetBuilder> {
      '/loginPage' : (BuildContext context) =>  const LoginPage(),
      '/welcomePage' : (BuildContext context) => const WelcomePage(),
      '/firstQuestionPage' : (BuildContext context) =>
          FirstQuestionPage(question1: question[0], option1q1: options[0]['option1'],option2q1:options[0]['option2'],
                                                   option3q1: options[0]['option3'], option4q1:options[0]['option4'], ),
      '/secondQuestionPage' : (BuildContext context) => SecondQuestionPage(question2: question[1],),
      '/resultPage' : (BuildContext context) => const ResultPage(),
    },
  ),
  );
}


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Login Page'),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,

              children:  const [
                SizedBox(height: 200,),
                Text('Login',
                  style: TextStyle(
                   fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Colors.cyan,
                ),
                ),
                  SizedBox(height: 30,),
                SizedBox(
                  height: 60,
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.person),
                      hintText: 'User Id',
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,

                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.lock),
                      hintText: 'Password',
                    ),
                  ),
                ),
              ],
            ),
              ElevatedButton(onPressed: (){
                 Navigator.pushReplacementNamed(context, '/welcomePage');
              },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0)),
                  alignment: Alignment.center,
                ),
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
