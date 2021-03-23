import 'package:flutter/material.dart';

import 'package:sha_prime_flutter/size_config.dart';
import 'package:sha_prime_flutter/screens/spalsh/components/body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}