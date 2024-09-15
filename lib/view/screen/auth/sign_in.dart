import 'package:flutter/material.dart';
import 'package:laundry/view/common_widget/common_text.dart';
import 'package:laundry/view/screen/auth/widget/email_text_field.dart';
import 'package:laundry/view/screen/auth/widget/password_text_field.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             // SizedBox(height: 30),
              CommonText(titel: "Sign In",fSize: 20,fColor: Colors.white),
              SizedBox(height: 50),
             // EmailTextField(emailController: ,),
              SizedBox(height: 20),
             // PasswordTextField(passController: passController),
            ],
          ),
        ),
      ),
    );
  }
}
