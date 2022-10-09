import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);


  signIn() async
  {

  }



Future userLogin   ({
  required String email,
  required String password,
}) async
{
  print('hi there');
  emit(LoginLoadingState());

  await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email, password: password
  )
      .then((value){emit(LoginSuccessState());})
      .catchError((error){emit(LoginErrorState());});
}

// change password visibilty
bool isPassword = true;
Icon suffix = Icon(Icons.visibility_outlined);
void changePasswordVisibility()
{
  isPassword = !isPassword;
  suffix = isPassword ? Icon(Icons.visibility_outlined ): Icon(Icons.visibility_off_outlined);

  emit (LoginChangePasswordVisibilityState());
}




}
