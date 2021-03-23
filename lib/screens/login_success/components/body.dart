import 'package:flutter/material.dart';
import 'package:sha_prime_flutter/components/default_button.dart';
import 'package:sha_prime_flutter/screens/login_success/login_success_screen.dart';
import 'package:sha_prime_flutter/screens/home/home_screen.dart';
import 'package:sha_prime_flutter/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          Image.asset(
            "assets/images/success.png",
            height: SizeConfig.screenHeight * 0.4, //40%
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.08),
          Text(
            "Login Success",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: DefaultButton(
              text: "Back to home",
              press: () {
                Navigator.pushNamed(context, HomeScreen.routeName);

              },
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}