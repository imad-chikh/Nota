import 'package:app_01/cubits/register_cubit/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:app_01/config/app_theme.dart';
import 'package:app_01/cubits/login_cubit/login_cubit.dart';
import 'package:app_01/ui/pages/auth/auth_page.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/buttons.dart';
import 'login_page.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);

  var formkey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterState>(
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
                        'Sign Up !',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: AppTheme.mainColor),
                      ),
                      SizedBox(height: 15,),
                      Text(
                        'Create an acount now so you can \n start writing down those notes!',
                        textAlign: TextAlign.left,
                        style:
                        TextStyle(fontSize: 16, color: AppTheme.secColor),
                      ),
                      myField(
                        Controller: usernameController,
                        hintText: 'Choose your username here!',
                        preText: 'UserName  ',
                        type: TextInputType.text,
                        validate: (String? value) {
                          if (value!.isEmpty) {
                            return 'username musnt be empty';
                          }
                          ;
                        },
                        preIcon: Icon(
                          Icons.person,
                          color: AppTheme.mainColor,
                          size: 29,
                        ),
                      ),
                      //SizedBox(height: 15,),
                      myField(
                        Controller: emailController,
                        hintText: '     Enter your Email here!',
                        preText: 'Email     ',
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
                        preText: 'Password    ',
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
                        sufIcon: RegisterCubit
                            .get(context)
                            .suffix, //Icon(Icons.remove_red_eye, color: AppTheme.mainColor, size: 29,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '  your password must be 8 or more charecters long & contain\n a mix of upper & lower case letters',
                        style: TextStyle( fontSize: 12,color: AppTheme.sectextColor),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ConditionalBuilder(
                        condition: state is! RegisterLoadingState,
                        builder: (BuildContext context) =>
                            myDefultButton(
                                onPressed: () {
                                  if (formkey.currentState!.validate()) {
                                    RegisterCubit.get(context).userRegister(
                                        email: emailController.text,
                                        password: passwordController.text
                                    );
                                    Navigator.of(context).pushReplacementNamed("Login");
                                  }
                                  //emailController.clear();
                                  //usernameController.clear();
                                  //passwordController.clear();
                                },
                                TextButton: 'Create an account'),
                        fallback: (BuildContext context) =>
                            Center(child: CircularProgressIndicator()),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('By signing up , youre agree to out \n Terms Of Use and Privacy Policy.',textAlign: TextAlign.center,style: TextStyle( fontSize: 16,color: AppTheme.secColor),),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account ?', style: TextStyle(fontSize: 16,color: AppTheme.secColor)),
                          TextButton(onPressed: ()
                          {
                            Navigator.of(context).pushReplacementNamed("Login");
                          },
                            child: Text(
                              '  Sign In !',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16,color: AppTheme.mainColor),
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
