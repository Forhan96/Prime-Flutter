import 'package:flutter/material.dart';
import 'package:sha_prime_flutter/constants.dart';

import 'package:sha_prime_flutter/models/Product.dart';
import 'components/body.dart';


class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: kPrimaryColor),
            ),
            bottom: TabBar(
              labelColor: kPrimaryColor,
              labelStyle: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: 14.0,
              ),
              unselectedLabelColor: Colors.blueGrey,
              indicatorColor: kPrimaryColor,
              // indicatorSize: TabBarIndicatorSize.tab,
              // indicator: BoxDecoration(
              //     borderRadius: BorderRadius.circular(50),
              //     color: Colors.redAccent
              // ),

              tabs: [
                // Tab(icon: Icon(Icons.directions_car)),
                // Tab(icon: Icon(Icons.directions_railway)),
                // Tab(icon: Icon(Icons.directions_bike)),
                Tab(child: Text("Reservation")),
                Tab(child: Text("Overview")),
                Tab(child: Text("Policies")),
              ],
            ),
            title: Text(
              "Details",
              style: TextStyle(fontSize: 24.0, color: kPrimaryColor),
            ),
            centerTitle: true,
          ),

          body: Body(),
        ),
      ),
    );
  }
}


class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({@required this.product});
}
