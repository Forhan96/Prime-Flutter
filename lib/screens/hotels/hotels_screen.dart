import 'package:flutter/material.dart';
import 'package:sha_prime_flutter/screens/hotels/components/body.dart';
import 'dart:async';

class HotelsScreen extends StatefulWidget {
  HotelsScreen() : super();

  static String routeName = "/hotels";

  final String title = "Photos";

  @override
  HotelsScreenState createState() => HotelsScreenState();
}


class HotelsScreenState extends State<HotelsScreen> {
  //
  StreamController<int> streamController = new StreamController<int>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: StreamBuilder(
            initialData: 0,
            stream: streamController.stream,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              return Text('${widget.title} ${snapshot.data}');
            },
          )),
      body: Body(),
    );
  }

  @override
  void dispose() {
    streamController.close();
    super.dispose();
  }
}

// import 'package:flutter/material.dart';
// import 'package:sha_prime_flutter/components/coustom_bottom_nav_bar.dart';
// import 'package:sha_prime_flutter/enums.dart';
//
// import 'components/body.dart';
//
// class HotelsScreen extends StatelessWidget {
//   static String routeName = "/hotels";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[50],
//       body: Body(),
//       bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
//     );
//   }
// }