import "package:flutter/material.dart";
import "package:frontend/pages/homepage.dart";




class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  TextEditingController usernameController =  TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  bool onpressed = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [const Color.fromARGB(255, 66, 201, 71),const Color.fromARGB(255, 111, 255, 116)],
            begin:Alignment.topLeft,
            end:Alignment.bottomRight
          ),
          ),
          child:Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child:SingleChildScrollView(
                key:_formkey,
                child:Card(
                  elevation:10,
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  color:Colors.white,
                  child:Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children:[

                        Icon(Icons.person_2,size:50,color:Color.fromARGB(255, 93, 155, 255)),
                        const SizedBox(height:10),

                        Text("Paitent SignUp",
                          style:TextStyle(
                            fontSize:21,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 1
                          )
                        ),
                        const SizedBox(height:30),

                        TextFormField(
                          controller:nameController,
                          decoration: InputDecoration(
                            labelText:"Name",
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
                          controller:emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText:"Email",
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
                          controller:phoneNoController,
                          decoration: InputDecoration(
                            labelText:"Phone No",
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
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            style:ElevatedButton.styleFrom(
                              shape:RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(20),
                              ),
                              backgroundColor: Colors.green,
                            ),
                            onPressed:()async{
                              setState((){
                                  onpressed=true;
                                }
                              );
                              await Future.delayed(Duration(seconds:2));
                              Navigator.pushReplacementNamed(context, '/frontpage');
                            },
                            child: onpressed
                              ? SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                  strokeWidth: 2,
                                ),
                              ) : Text("SUBMIT",
                                style:TextStyle(
                                  color:Colors.white,
                                  fontWeight: FontWeight.w600
                                )
                              ),
                          
                          ),
                        )

                        ]
                        )

                        ),

                      
                    ),
                  )
                )
              )
            ),
          
        

    );
  }
}