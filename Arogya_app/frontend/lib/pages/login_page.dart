import "package:flutter/material.dart";
import "package:frontend/pages/homepage.dart";




class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController usernameController =  TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color.fromARGB(255, 66, 201, 71),const Color.fromARGB(255, 111, 255, 116)],
              begin:Alignment.topLeft,
              end:Alignment.bottomRight
            ),
          ),
          child:Padding(
            padding: const EdgeInsets.all(26.0),
            child: Center(
              child:SingleChildScrollView(
                key:_formkey,
                child:Column(
                  children: [
                    Text("AROGYA",
                      style:TextStyle(
                        color:const Color.fromARGB(255, 255, 255, 255),
                        fontSize:38,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 2,
                        shadows: [
                          Shadow(
                            blurRadius: 20.0, // how blurry the shadow is
                            color: const Color.fromARGB(255, 113, 113, 113), // shadow color
                            offset: Offset(3, 3), // position (x,y)
                          ),
                        ],
                      )
                    ),
                    const SizedBox(height:40),
                    Card(
                      elevation:10,
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      color:Colors.white,
                      child:Padding(
                        padding: const EdgeInsets.only(left:10,top:20,right:10,bottom:20),
                        child: Column(
                          children:[
                            Text("Login",
                              style:TextStyle(
                                fontSize:26,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 1
                              )
                            ),
                            const SizedBox(height:30),
                    
                            TextFormField(
                              controller:usernameController,
                              decoration: InputDecoration(
                                labelText:"Username",
                                border:OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(20),
                                )
                              ),
                              style:TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18
                              )
                            ),
                            const SizedBox(height:17),
                    
                            TextFormField(
                              controller:passwordController,
                              decoration: InputDecoration(
                                labelText:"Password",
                                border:OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(20),
                                )
                              ),
                              style:TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18
                              )
                            ),
                            const SizedBox(height:17),
                            InkWell(
                              onTap:(){
                                Navigator.pushNamed(context,'/signup');
                              },
                              child:Text(
                                "Don't Have an Account ? Sign Up",
                                
                              )
                            )
                          ]
                        ),
                      )
                    ),
                  ],
                )
              )
            ),
      )
      )
    );
  }
}