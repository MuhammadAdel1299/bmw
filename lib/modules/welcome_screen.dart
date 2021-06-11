import 'package:flutter/material.dart';
import 'package:flutter_app1/layout/home_layout.dart';
import 'package:flutter_app1/shared/componants.dart';
import 'package:flutter_app1/shared/constanse.dart';

class WelcomeScreen extends StatelessWidget {

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
                text: 'Log out',
                borderColor: blueBorder,
                onPressed: () {
                  signOut(context , HomeLayout());
                }),
          ],
        ),
      ),
    );
  }
}
