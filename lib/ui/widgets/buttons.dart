import 'package:app_01/config/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// TODO MY BUTTON
myButton({
  required onTap,
  required String buttonText,
  buttonWidth: double.maxFinite,
  buttonHeight: 50.0,
  buttonIcon: null, //FontAwesomeIcons.google,
}) =>
    GestureDetector(
        onTap: () {},
        child: Container(
            padding: EdgeInsets.all(8),
            width: buttonWidth,
            height: buttonHeight,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppTheme.mainColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  buttonIcon,
                  color: Colors.white,
                ),
                Text(
                  buttonText,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white),
                ),
              ],
            )));

// TODO MY DefultButton

myDefultButton({
  required onPressed,
  required String? TextButton,
  buttonWidth: double.maxFinite,
  buttonHeight: 50.0,
  //buttonIcon: null,
}) =>
    ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppTheme.mainColor,
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0),
          ),
          fixedSize: Size(buttonWidth, buttonHeight),
          elevation: 5.0,
        ),
        child: Text(TextButton!,style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.white),));
// TODO MY FIELD

myField({
  bool suf = false,
  bool isObscure = false,
  String? hintText,
  String? preText = '',
  Icon? sufIcon,
  Icon? preIcon,
  void Function(String?)? isSubmitted,
  TextEditingController? Controller,
  TextInputType type = TextInputType.text,
  String? Function(String?)? validate,
}) =>
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: type,
        validator: validate,
        onFieldSubmitted: isSubmitted,
        obscureText: isObscure,
        controller: Controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: AppTheme.sectextColor),
          //labelText: ('Email'),
          prefixText: preText,
          prefixStyle: TextStyle(color: AppTheme.secColor),
          prefixIcon: preIcon,
          suffixIcon: suf ? sufIcon : null,
          //labelStyle: TextStyle(color: AppTheme.mainColor),
          filled: true,
          fillColor: AppTheme.acecntColor,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppTheme.acecntColor, width: 2),
              borderRadius: BorderRadius.circular(15)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: AppTheme.acecntColor, width: 2),
              borderRadius: BorderRadius.circular(15)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppTheme.acecntColor, width: 2),
              borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
