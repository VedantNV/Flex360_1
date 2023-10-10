import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 600, maxWidth: 300
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: LinearGradient(
          colors: [Colors.blue.shade900, Colors.purple],
          begin: Alignment.topCenter, end: Alignment.bottomCenter
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.02, top: MediaQuery.of(context).size.height*0.3),
                child: Text('Flex360',style: TextStyle(color: Colors.pink[700],fontSize: 40, fontWeight: FontWeight.w500),),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(15, 100, 15, 100),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'First Name',
                                labelStyle: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 20),
                                alignLabelWithHint: true,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white
                                  ),
                                ),
                              ),
                              validator: (value){
                                if(value!.isEmpty){
                                  return 'Please enter First Name';
                                }
                              },
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Last Name',
                              labelStyle: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 20),
                              alignLabelWithHint: true,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white
                                ),
                              ),
                            ),
                            validator: (value){
                              if(value!.isEmpty){
                                return 'Please enter Last Name';
                              }
                            },
                          ),),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 20),
                              alignLabelWithHint: true,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white
                                ),
                              ),
                            ),
                            validator: (value){
                              if(value!.isEmpty){
                                return 'Please enter email id';
                              }
                            },
                          ),),
                          SizedBox(width: 15),
                          Expanded(child: TextFormField(
                            decoration: InputDecoration(
                            labelText: 'Username',
                            labelStyle: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 20),
                            alignLabelWithHint: true,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white
                              ),
                            ),
                            ),
                            validator: (value){
                              if(value!.isEmpty){
                                return 'Please enter Username';
                              }
                            },
                          ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 20),
                              alignLabelWithHint: true,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white
                                ),
                              ),
                            ),
                            validator: (value){
                              if(value!.isEmpty){
                                return 'Please enter Password';
                              }
                            },
                          ),),
                          SizedBox(width: 15),
                          Expanded(child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Confirm Password',
                              labelStyle: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 20),
                              alignLabelWithHint: true,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white
                                ),
                              ),
                            ),
                            validator: (value){
                              if(value!.isEmpty){
                                return 'Please confirm password';
                              }
                            },
                          ),),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(onPressed: (){},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(17),
                                ),padding: EdgeInsets.fromLTRB(60, 10, 60, 10)
                            ),
                            child: Text('Register',style: TextStyle(fontSize: 20),),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(onPressed: () {
                            Navigator.pushNamed(context, 'login');
                          },
                              child: Text('<< Back to Login',
                              style: TextStyle(color: Colors.white, decoration: TextDecoration.underline, fontSize: 15),),),
                        ],
                      )
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
