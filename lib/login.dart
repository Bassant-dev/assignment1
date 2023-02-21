import 'package:course1/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class login  extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  var emailcontroller =TextEditingController();

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
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const SizedBox(
                    height: 40,
                  ),
                  defaultFormField(
                      controller:nameController,
                      label: 'full name',
                      prifex: Icons.person,
                      type: TextInputType.name,

                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  defaultFormField(
                      controller: emailcontroller,
                      label: 'Email',
                      prifex: Icons.email,
                      type: TextInputType.emailAddress,


                  ),
                  SizedBox(
                    height: 15,
                  ),
                  defaultFormField(
                      controller: passwordController,
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


                  ),
                  SizedBox(
                    height: 15,
                  ),
                  defaultFormField(
                      controller: phoneController,

                      label: 'phone number',
                      prifex: Icons.phone,
                      type: TextInputType.phone,


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
                          onPressed: (){},

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
                        onPressed: (){},
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
          ],
        ),
      ),
    );
  }
}
