import 'package:flutter/material.dart';
import 'package:flutter_app1/layout/home_layout.dart';
import 'package:flutter_app1/modules/login_screen.dart';
import 'package:flutter_app1/modules/welcome_screen.dart';
import 'package:flutter_app1/shared/componants.dart';
import 'package:flutter_app1/shared/constanse.dart';

class RegisterScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: double.infinity,
          color: defaultColor,
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80.0, bottom: 30.0),
                  child: Image(
                    image: AssetImage('assets/images/bmw.png'),
                  ),
                ),
                Text(
                  'Registration',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    outlinedButton(
                      text: 'Facebook',
                      onPressed: () {},
                      borderColor: yellowBorder,
                    ),
                    outlinedButton(
                      text: 'Google',
                      onPressed: () {},
                      borderColor: yellowBorder,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'or',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          defaultFormField(
                            controller: emailController,
                            labelText: 'Email',
                            prefixIcon: Icons.account_circle_outlined,
                            validate: (String value) {
                              if (value.isEmpty) {
                                return 'please enter valid email';
                              }
                              return null;
                            },
                            onSubmit: (value) {
                              if (formKey.currentState.validate()) {
                              }
                            },
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          defaultFormField(
                            controller: passwordController,
                            labelText: 'Password',
                            prefixIcon: Icons.lock,
                            isPassword: true,
                            validate: (String value) {
                              if (value.isEmpty) {
                                return 'please enter password';
                              }
                              return null;
                            },
                            onSubmit: (value) {
                              if (formKey.currentState.validate()) {
                              }
                            },
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          defaultFormField(
                            controller: confirmPasswordController,
                            labelText: 'Confirm Password',
                            prefixIcon: Icons.lock,
                            isPassword: true,
                            validate: (String value) {
                              if (value.isEmpty) {
                                return 'please confirm your password';
                              }
                              else if (passwordController.text != confirmPasswordController.text){
                                return 'password not matches';
                              }
                              return null;
                            },
                            onSubmit: (value) {

                            },
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          outlinedButton(
                            text: 'Register',
                            borderColor: blueBorder,
                            onPressed: () {
                              if(formKey.currentState.validate() && passwordController.text == confirmPasswordController.text){
                                navigateTo(context, WelcomeScreen());
                              }
                              else {
                                print('password not matches');
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        navigateTo(context, LoginScreen());
                      },
                      child: Text(
                        'Log In',
                        style: TextStyle(color: yellowBorder, fontSize: 15.0),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        navigateTo(context, HomeLayout());
                      },
                      child: Text(
                        'Skip',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
