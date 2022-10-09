import 'package:app_01/config/app_theme.dart';
import 'package:app_01/cubits/login_cubit/login_cubit.dart';
import 'package:app_01/ui/pages/auth/auth_page.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/buttons.dart';

class LoginPage extends StatelessWidget {
  var formkey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.questionCircle,
                      color: AppTheme.mainColor,
                    ))
              ],
              leading: IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.arrowLeft,
                  color: AppTheme.mainColor,
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed("Auth");
                },
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Form(
                  key: formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Welcome back !',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: AppTheme.mainColor),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Sign in to your account !',
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 20, color: AppTheme.secColor),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      myField(
                        Controller: emailController,
                        hintText: 'Enter your Email here!',
                        preText: 'Email  ',
                        type: TextInputType.emailAddress,
                        validate: (String? value) {
                          if (value!.isEmpty) {
                            return 'email musnt be empty';
                          }
                          ;
                        },
                        preIcon: Icon(
                          Icons.mail_outline_rounded,
                          color: AppTheme.mainColor,
                          size: 29,
                        ),
                      ),
                      myField(
                        Controller: passwordController,
                        hintText: 'Enter your password here !',
                        preText: 'Password',
                        type: TextInputType.visiblePassword,
                        isObscure: true,
                        suf: true,
                        validate: (String? value) {
                          if (value!.isEmpty) {
                            return 'Password is too short';
                          }
                          ;
                        },
                        //  preIcon: FaIcon(FontAwesomeIcons.lock,color: AppTheme.mainColor,),
                        preIcon: Icon(
                          Icons.lock,
                          color: AppTheme.mainColor,
                          size: 29,
                        ),
                        sufIcon: LoginCubit.get(context)
                            .suffix, //Icon(Icons.remove_red_eye, color: AppTheme.mainColor, size: 29,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Forgot password?',
                            style: TextStyle(
                                color: AppTheme.mainColor,
                                fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      ConditionalBuilder(
                        condition: state is! LoginLoadingState,
                        builder: (BuildContext context) => myDefultButton(
                            onPressed: () {
                              if (formkey.currentState!.validate()) {
                                LoginCubit.get(context).userLogin(
                                    email: emailController.text,
                                    password: passwordController.text
                                );

                              }
                              if(formkey.currentState!.validate()) {
                                Navigator.of(context).pushReplacementNamed(
                                    "HomePage");
                              }
                            },
                            TextButton: 'Continue'),
                        fallback: (BuildContext context) =>
                            Center(child: CircularProgressIndicator()),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('New to Nota ?', style: TextStyle(fontSize: 16)),
                          TextButton(onPressed: ()
                            {
                              Navigator.of(context).pushReplacementNamed("Register");
                            },
                            child: Text(
                              '  Sign Up !',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            backgroundColor: Colors.white,
          );
        },
      ),
    );
  }
}
