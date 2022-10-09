import 'package:app_01/cubits/login_cubit/login_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitialState());

  static RegisterCubit get(context) => BlocProvider.of(context);


  void userRegister({
    required String email,
    required String password,
  })
  {
    emit(RegisterLoadingState());

    FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password)
        .then((value){
          print(value.credential?.signInMethod);
          emit(RegisterSuccessState());
        })
        .catchError((error){emit(RegisterErrorState());});;

  }


// change password visibilty
  bool isPassword = true;
  Icon suffix = Icon(Icons.visibility_outlined);
  void changePasswordVisibility()
  {
    isPassword = !isPassword;
    suffix = isPassword ? Icon(Icons.visibility_outlined ): Icon(Icons.visibility_off_outlined);

    emit (RegisterChangePasswordVisibilityState());
  }


}
