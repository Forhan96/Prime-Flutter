import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sha_prime_flutter/models/Product.dart';
import 'package:sha_prime_flutter/screens/details/details_screen.dart';
import 'package:sha_prime_flutter/screens/hotels/hotels_screen.dart';

import '../constants.dart';
import '../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.width = 160,
    this.aspectRetio = 1.02,
    @required this.product,
  }) : super(key: key);

  final double width, aspectRetio;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 0.2,
          child: Padding(
            padding: EdgeInsets.all(getProportionateScreenWidth(10)),
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(
                context,
                DetailsScreen.routeName,
                arguments: ProductDetailsArguments(product: product),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AspectRatio(
                    aspectRatio: 1.02,
                    child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                      decoration: BoxDecoration(
                        color: kSecondaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Hero(
                        tag: product.id.toString(),
                        child: Image.asset(product.images[0]),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    product.title,
                    style: TextStyle(
                      color: Color(0xFF454F63),
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "BDT ${product.price}",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(10),
                          fontWeight: FontWeight.w600,
                          color: product.price < 60 ? kPrimaryColor : null,
                          decoration: product.price > 60
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                        ),
                      ),
                      Container(
                        width: getProportionateScreenWidth(43),
                        height: getProportionateScreenWidth(18),
                        child: Center(
                            child: Text(
                          '-100%',
                          style: TextStyle(
                              fontSize: getProportionateScreenWidth(10),
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                        decoration: BoxDecoration(
                          color: Color(0xFF092A3C),
                          borderRadius: BorderRadius.circular(50),

                          // border: Border.all(width: 1, color: Colors.white)
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "BDT ${product.price}",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(10),
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
