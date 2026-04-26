import 'package:flutter/material.dart';
import 'package:instaseries/Screens/signup/signupscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:instaseries/Screens/bottomnavscreen/bottomnav.dart';
import 'package:instaseries/Widgets/uihelper.dart';
import 'package:instaseries/Screens/forgot/forgotscreen.dart';

class Loginscreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override

   void goToHome(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Bottomnav()),
    );
  }



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.CustomImages(imgurl: "image2.png"),
            SizedBox(height: 20),

            Uihelper.CustomTextField(

              controller: emailController,
              text: "Email",
              tohide: false,
              textinputtype: TextInputType.emailAddress,
            ),

            SizedBox(height: 10),

            Uihelper.CustomTextField(
              controller: passwordController,
              text: "Password",
              tohide: true,
              textinputtype: TextInputType.visiblePassword,
            ),

            SizedBox(height: 10),

            // ✅ Fixed Forgot Password alignment
            Container(
              width: double.infinity,
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 20),
              child: Center(
                child: Uihelper.CustomTextButton(
                  callback: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Forgotscreen()),
                    );
                  },
                  text: "Forgot password",
                ),
              ),
            ),

            SizedBox(height: 20),

            Uihelper.CustomButton(
              callback: () async {
                await FirebaseAuth.instance.signInWithEmailAndPassword(
                  email: emailController.text,
                  password: passwordController.text,
                );

                goToHome(context);
              },
              buttonname: "Login",
            ),

            SizedBox(height: 20),

         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Uihelper.CustomImages(imgurl: "Icon.png"),
             Uihelper.CustomTextButton(callback: (){}, text: "Login with Facebook"),
           ],
         ),

            SizedBox(height: 20),

            Text("or", style: TextStyle(fontSize: 16)),


            SizedBox(height: 10),

            SizedBox(
              height: 30,
              width: 230,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account ?",
                    style: TextStyle(fontSize: 12),
                  ),
                  Uihelper.CustomTextButton(
                    callback: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Signupscreen()),
                      );
                    },
                    text: "Signup Here",
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