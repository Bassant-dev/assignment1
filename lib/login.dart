import 'package:course1/component.dart';
import 'package:course1/list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class login  extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  var emailcontroller =TextEditingController();
  var formKey = GlobalKey<FormState>();

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordController1 = TextEditingController();
  var phoneController = TextEditingController();




  bool ispasswordshow=true;
  bool ispasswordshow2=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(

          children: [
            ClipPath(
              clipper: WaveClipperTwo(),
              child: Container(
                height: 200,
                color: Colors.purple,
                child: Center(child: Text("Register",style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formKey,
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const SizedBox(
                      height: 40,
                    ),
                    defaultFormField(
                        controller:emailController,
                        label: 'full name',
                        prifex: Icons.person,
                        type: TextInputType.name,

                      validate: (String ?value) {
                        if (value!.isEmpty) {
                          return 'please enter your name';
                        }
                        return null;
                      },


                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    defaultFormField(
                        controller: emailcontroller,
                        label: 'Email',
                        prifex: Icons.email,
                        type: TextInputType.emailAddress,
                      validate: (String ?value) {
                        if (value!.isEmpty) {
                          return 'please enter your email';
                        }
                        return null;
                      },



                    ),
                    SizedBox(
                      height: 15,
                    ),
                    defaultFormField(
                        controller: passwordController,
                      validate: (String ?value) {
                        if (value!.isEmpty) {
                          return 'please enter your password';
                        }
                        return null;
                      },

                      suffixpressed: (){
                          setState(() {
                            ispasswordshow=!ispasswordshow;
                          });
                        },
                        label: 'password',
                        prifex: Icons.lock,
                        type: TextInputType.visiblePassword,
                        suffix:ispasswordshow? Icons.visibility: Icons.visibility_off,
                        isPassword: ispasswordshow,



                    ),
                    SizedBox(
                      height: 15,
                    ),
                    defaultFormField(
                        controller: passwordController1,
                        suffixpressed: (){
                          setState(() {
                            ispasswordshow2=!ispasswordshow2;
                          });
                        },
                        label: 'confirm password',
                        prifex: Icons.lock,
                        type: TextInputType.visiblePassword,
                        suffix:ispasswordshow2? Icons.visibility: Icons.visibility_off,
                        isPassword: ispasswordshow2,
                      validate: (String ?value) {
                        if (value!.isEmpty) {
                          return 'please enter your password';
                        }

                        return null;
                      },



                    ),
                    SizedBox(
                      height: 15,
                    ),
                    defaultFormField(
                        controller: phoneController,

                        label: 'phone number',
                        prifex: Icons.phone,
                        type: TextInputType.phone,
                      validate: (String ?value) {
                        if (value!.isEmpty) {
                          return 'please enter your phone';
                        }
                        return null;
                      },


                    ),


                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Container(
                        height: 50.0,
                        width: 350,
                        color:Colors.purple,

                        child: MaterialButton(
                            onPressed: (){
                              if(formKey.currentState!.validate()){

                                    name: nameController.text;
                                    email: emailController.text;
                                    password: passwordController.text;
                                    phone: phoneController.text;

                              }





                            },

                          textColor:Colors.white ,
                          child: Text(
                           'register',

                          ),



                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Container(
                        height: 50.0,
                        width:350,
                        color:Colors.white,
                        child: MaterialButton(
                          onPressed: (){
                            navigateto(context, AnimatedListView());
                          },
                          textColor:Colors.purple ,
                          child: Text(
                            'login',

                          ),

                        ),
                      ),
                    ),


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
