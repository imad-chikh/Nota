import 'package:app_01/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Nota_tp.png',
            ),
            Text(
              'Get your thoughts \n under Control ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text('Keep it all in one place',style: TextStyle(
              fontSize: 24,
            ),),
            SizedBox(
              height: 25,
            ),
            myDefultButton(onPressed: ()
            {
              Navigator.of(context).pushNamed("Register");
            },
                TextButton: 'Sign Up With Email'),


            SizedBox(
              height: 25,
            ),
            myButton(onTap: () {}, buttonText: 'Sign Up With Google'),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('already have an account ?',style: TextStyle(fontSize: 16)), TextButton(onPressed: (){
                Navigator.of(context).pushNamed("Login");
              },child: Text('  Sign in !',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),))],
            ),
          ],
        ),
      ),
    );
  }
}
