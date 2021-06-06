import 'package:flutter/material.dart';
import 'package:signin_signup_neumorphism/sign_up.dart';
import 'package:signin_signup_neumorphism/widgets.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome'),
                Text(
                  'SignIn',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Colors.blueAccent),
                ),
                SizedBox(
                  height: 40,
                ),
                TextField3D(
                  hintText: 'navi@suvidha.com',
                  label: 'Email',
                ),
                SizedBox(
                  height: 30,
                ),
                TextField3D(
                  hintText: '********',
                  label: 'Password',
                ),
                SizedBox(
                  height: 30,
                ),
                Center(child: Text('Forgot Password?')),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w900),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                      //color: Colors.blue,
                      gradient: LinearGradient(
                        colors: [Colors.blueAccent, Colors.blue],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.blue,
                            offset: Offset(6, 2),
                            blurRadius: 6,
                            spreadRadius: 3),
                        BoxShadow(
                            //color: Color.fromRGBO(255, 255, 255, 0.9),
                            color: Colors.white,
                            offset: Offset(-6, -2),
                            blurRadius: 6,
                            spreadRadius: 3)
                      ],
                      borderRadius: BorderRadius.circular(100)),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account '),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUp()));
                        },
                        child: Text(
                          'SignUp',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
