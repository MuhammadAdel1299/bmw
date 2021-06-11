import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/shared/constanse.dart';

Widget outlinedButton({
  @required String text,
  @required Function onPressed,
  Color borderColor,
}) =>
    Container(
      width: 110,
      child: OutlinedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        style: OutlinedButton.styleFrom(
          backgroundColor: defaultColor,
          shadowColor: borderColor,
          elevation: 6,
          side: BorderSide(color: borderColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );

Widget defaultFormField({
  @required var controller,
  @required String labelText,
  @required IconData prefixIcon,
  @required Function validate,
  Function onSubmit,
  bool isPassword = false,
}) =>
    TextFormField(
      controller: controller,
      validator: validate,
      onFieldSubmitted: onSubmit,
      style: TextStyle(color: Colors.white),
      keyboardType: TextInputType.emailAddress,
      obscureText: isPassword ? true : false,
      decoration: InputDecoration(
          focusColor: Colors.grey,
          fillColor: defaultColor,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.grey),
          prefixIcon: Icon(
            prefixIcon,
            color: Colors.grey,
          )),
    );

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

void signOut(context, widget) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
  );
}
