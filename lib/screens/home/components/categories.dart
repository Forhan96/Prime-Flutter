import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sha_prime_flutter/screens/hotels/hotels_screen.dart';

import 'package:sha_prime_flutter/size_config.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          new FlatButton(
            child: SizedBox(
              width: getProportionateScreenWidth(55),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                    height: getProportionateScreenWidth(55),
                    width: getProportionateScreenWidth(55),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFECDF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // child: SvgPicture.asset(icon),
                  ),
                  SizedBox(height: 5),
                  Text("Hotels\n", textAlign: TextAlign.center)
                ],
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(
                context,
                HotelsScreen.routeName,
              );
            },
          ),

          new FlatButton(
            child: SizedBox(
              width: getProportionateScreenWidth(55),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                    height: getProportionateScreenWidth(55),
                    width: getProportionateScreenWidth(55),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFECDF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // child: SvgPicture.asset(icon),
                  ),
                  SizedBox(height: 5),
                  Text("Foods\n", textAlign: TextAlign.center)
                ],
              ),
            ),
            onPressed: null,
          ),

          new FlatButton(
            child: SizedBox(
              width: getProportionateScreenWidth(55),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                    height: getProportionateScreenWidth(55),
                    width: getProportionateScreenWidth(55),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFECDF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // child: SvgPicture.asset(icon),
                  ),
                  SizedBox(height: 5),
                  Text("Rent-A-Car", textAlign: TextAlign.center)
                ],
              ),
            ),
            onPressed: null,
          ),

          new FlatButton(
            child: SizedBox(
              width: getProportionateScreenWidth(55),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                    height: getProportionateScreenWidth(55),
                    width: getProportionateScreenWidth(55),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFECDF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // child: SvgPicture.asset(icon),
                  ),
                  SizedBox(height: 5),
                  Text("Health & Beauty", textAlign: TextAlign.center)
                ],
              ),
            ),
            onPressed: null,
          ),

          new FlatButton(
            child: SizedBox(
              width: getProportionateScreenWidth(55),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                    height: getProportionateScreenWidth(55),
                    width: getProportionateScreenWidth(55),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFECDF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // child: SvgPicture.asset(icon),
                  ),
                  SizedBox(height: 5),
                  Text("Training\n", textAlign: TextAlign.center)
                ],
              ),
            ),
            onPressed: null,
          ),
          new FlatButton(
            child: SizedBox(
              width: getProportionateScreenWidth(55),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                    height: getProportionateScreenWidth(55),
                    width: getProportionateScreenWidth(55),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFECDF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // child: SvgPicture.asset(icon),
                  ),
                  SizedBox(height: 5),
                  Text("Tours\n", textAlign: TextAlign.center)
                ],
              ),
            ),
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
