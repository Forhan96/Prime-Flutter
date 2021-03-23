import 'package:flutter/widgets.dart';
import 'package:sha_prime_flutter/screens/hotels/hotels_screen.dart';

import 'package:sha_prime_flutter/screens/spalsh/splash_screen.dart';
import 'package:sha_prime_flutter/screens/sign_in/sign_in_screen.dart';
import 'package:sha_prime_flutter/screens/login_success/login_success_screen.dart';
import 'package:sha_prime_flutter/screens/home/home_screen.dart';
import 'package:sha_prime_flutter/screens/details/details_screen.dart';


// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  // ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  // SignUpScreen.routeName: (context) => SignUpScreen(),
  // CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  // OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  HotelsScreen.routeName: (context) => HotelsScreen(),
  // CartScreen.routeName: (context) => CartScreen(),
  // ProfileScreen.routeName: (context) => ProfileScreen(),

  // HotelsScreen.routeName: (context) => HotelsScreen(),
};