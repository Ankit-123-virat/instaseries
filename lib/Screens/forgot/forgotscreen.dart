import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instaseries/Widgets/uihelper.dart';

class Forgotscreen extends StatefulWidget {
  const Forgotscreen({super.key});

  @override
  State<Forgotscreen> createState() => _ForgotscreenState();
}

class _ForgotscreenState extends State<Forgotscreen> {

  TextEditingController emailController = TextEditingController();

  // ✅ RESET FUNCTION
  reset() async {
    await FirebaseAuth.instance.sendPasswordResetEmail(
      email: emailController.text.trim(),
    );

   // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Reset link sent to you email")),);
  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Reset link has been sent to your email")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forgot Password"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Uihelper.CustomTextField(
                controller: emailController,
                text: "Enter Email",
                tohide: false,
                textinputtype: TextInputType.emailAddress,
              ),

              const SizedBox(height: 20),

              Uihelper.CustomButton(
                callback: reset,
                buttonname: "Send Reset Link",
              ),
            ],
          ),
        ),
      ),
    );
  }
}