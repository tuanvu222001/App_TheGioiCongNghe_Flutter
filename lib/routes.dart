import 'package:flutter/widgets.dart';
import 'package:stylish/screens/Login_Screen/Login/login_screen.dart';
import 'package:stylish/screens/Login_Screen/Signup/signup_screen.dart';
import 'package:stylish/screens/Login_Screen/forgot_password_screen/forgot_password.dart';
import 'package:stylish/screens/My_home/cart/cart_screen.dart';
import 'package:stylish/screens/My_home/complete_profile/complete_profile_screen.dart';
import 'package:stylish/screens/My_home/details/details_screen.dart';
import 'package:stylish/screens/My_home/favourite/favourite_home.dart';
import 'package:stylish/screens/My_home/home/home_screen.dart';
import 'package:stylish/screens/My_home/login_success/login_success_screen.dart';
import 'package:stylish/screens/My_home/otp/otp_screen.dart';
import 'package:stylish/screens/My_home/profile/profile_screen.dart';

final Map<String, WidgetBuilder> routes = {
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  Favourite.routeName:(context) => Favourite(),
};
