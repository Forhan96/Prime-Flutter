import 'package:flutter/material.dart';
import 'package:sha_prime_flutter/models/Product.dart';
import 'package:sha_prime_flutter/size_config.dart';

class OverviewScreen extends StatelessWidget {
  // final Product product;

  //const ReservationScreen({Key key, @required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(

      child: Column(children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Text("The package includes the following facilities:")
      ]),
    );
  }
}
