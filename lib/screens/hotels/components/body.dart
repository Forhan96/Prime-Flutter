import 'package:flutter/material.dart';
import 'package:sha_prime_flutter/services/hotels/services.dart';
import 'package:sha_prime_flutter/models/hotels/Hotels.dart';
import 'package:sha_prime_flutter/components/hotel_card.dart';
import 'dart:async';

class Body extends StatelessWidget {

  StreamController<int> streamController = new StreamController<int>();

  gridview(AsyncSnapshot<List<Hotels>> snapshot) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: snapshot.data.map(
              (hotel) {
            return GestureDetector(
              child: GridTile(
                child: HotelCell(hotel),
              ),
              onTap: () {
                // goToDetailsPage(context, hotel);
              },
            );
          },
        ).toList(),
      ),
    );
  }

  // goToDetailsPage(BuildContext context, Hotels hotels) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       fullscreenDialog: true,
  //       builder: (BuildContext context) => GridDetails(
  //         curAlbum: album,
  //       ),
  //     ),
  //   );
  // }

  circularProgress() {
    return Center(
      child: const CircularProgressIndicator(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Flexible(
          child: FutureBuilder<List<Hotels>>(
            future: Services.getPhotos(),
            builder: (context, snapshot) {
              // not setstate here
              //
              if (snapshot.hasError) {
                return Text('Error ${snapshot.error}');
              }
              //
              if (snapshot.hasData) {
                streamController.sink.add(snapshot.data.length);
                // gridview
                return gridview(snapshot);
              }

              return circularProgress();
            },
          ),
        ),
      ],
    );
  }
}