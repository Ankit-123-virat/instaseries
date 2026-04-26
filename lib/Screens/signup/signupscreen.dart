// signupscreen.dart

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:instaseries/Screens/verify/verifyscreen.dart';
import 'package:instaseries/Widgets/uihelper.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // SIGNUP FUNCTION
  signUp() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );

    // verification mail send
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Signup Screen"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.CustomImages(
              imgurl: "image2.png",
            ),

            const SizedBox(height: 20),

            Uihelper.CustomTextField(
              controller: emailController,
              text: "Email",
              tohide: false,
              textinputtype: TextInputType.emailAddress,
            ),

            const SizedBox(height: 10),

            Uihelper.CustomTextField(
              controller: passwordController,
              text: "Password",
              tohide: true,
              textinputtype: TextInputType.visiblePassword,
            ),

            const SizedBox(height: 20),

            ElevatedButton(onPressed: (){

              Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => Verifyscreen(),));
            }, child: Text("clicked here"))
          ],
        ),
      ),
    );
  }
}