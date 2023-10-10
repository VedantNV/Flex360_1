import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradient(
              colors: [Colors.blue.shade900, Colors.purple],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 300, left: 130),
                  child: Text('Flex360',style: TextStyle(
                    color: Colors.pink[700],
                    fontSize: 40, fontWeight: FontWeight.w500,
                  ),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5,
                    right: 35,
                    left: 35),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'UserName/Email',
                            alignLabelWithHint: true,
                            hintStyle: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 25),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              )
                            )
                          ) ,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                            alignLabelWithHint: true,
                            hintStyle: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 25),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              )
                            )
                          ),
                          obscureText: true,
                        ),
                        SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                            },style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17),
                             ), padding: EdgeInsets.fromLTRB(60, 10, 60, 10)
                            ), child: Text('Login',style: TextStyle(fontSize: 20),),),
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('New to Flex?',
                                style: TextStyle(color: Colors.white, fontSize: 18),),
                            SizedBox(width: 15),
                            TextButton(onPressed: () {
                              Navigator.pushNamed(context, 'register');
                            }, child: Text('Sign Up',
                              style: TextStyle(color: Colors.white, fontSize: 18,
                                  decoration: TextDecoration.underline),),),

                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
  }
}
