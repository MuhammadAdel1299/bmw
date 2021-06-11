import 'package:flutter/material.dart';
import 'package:flutter_app1/modules/login_screen.dart';
import 'package:flutter_app1/modules/register_screen.dart';
import 'package:flutter_app1/shared/componants.dart';
import 'package:flutter_app1/shared/constanse.dart';

class HomeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: defaultColor,
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: Image(
                image: AssetImage('assets/images/bmw.png'),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Welcome',
              style: TextStyle(color: Colors.white, fontSize: 25.0),
            ),
            SizedBox(
              height: 50,
            ),
            outlinedButton(
                text: 'Log In',
                borderColor: blueBorder,
                onPressed: () {
                  navigateTo(context, LoginScreen());
                }),
            SizedBox(
              height: 20,
            ),
            outlinedButton(
              text: 'Register',
              borderColor: blueBorder,
              onPressed: () {
                navigateTo(context, RegisterScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
