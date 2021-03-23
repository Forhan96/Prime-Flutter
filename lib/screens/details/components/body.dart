import 'package:flutter/material.dart';
import 'package:sha_prime_flutter/components/default_button.dart';
import 'package:sha_prime_flutter/models/Product.dart';
import 'package:sha_prime_flutter/screens/details/components/overview_tab.dart';
import 'package:sha_prime_flutter/screens/details/components/policies_tab.dart';
import 'package:sha_prime_flutter/screens/details/components/reservation_tab.dart';
import 'package:sha_prime_flutter/size_config.dart';


class Body extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      ReservationScreen(),
      OverviewScreen(),
      PoliciesScreen(),
    ],
    );
  }
}