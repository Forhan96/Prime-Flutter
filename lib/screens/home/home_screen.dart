import 'package:flutter/material.dart';
import 'package:sha_prime_flutter/components/coustom_bottom_nav_bar.dart';
import 'package:sha_prime_flutter/enums.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}