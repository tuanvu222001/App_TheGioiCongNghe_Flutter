import 'package:flutter/material.dart';
import 'package:stylish/screens/Login_Screen/forgot_password_screen/components/body.dart';



class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quên Mật Khẩu"),
      ),
      body: Body(),
    );
  }
}
