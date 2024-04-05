import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/helpers/asset_helper.dart';
import 'package:travelapp/data/models/hotel_models.dart';
import 'package:travelapp/representation/widgets/app_bar_container.dart';
import 'package:travelapp/representation/widgets/item_hotel_widget.dart';

class HotelScreen extends StatefulWidget {
  const HotelScreen({super.key});

  static const routeName = '/hotel_screen';

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  final List<HotelModels> listHotel = [
    HotelModels(
      hotelImages: AssetHelper.royalPalmHeritage,
      hotelName: 'Royal Palm Heritage',
      location: 'Purwokerto, Jateng ',
      awayKilometer: '364 m ',
      star: 4.5,
      numberOfReview: 3421,
      price: 143,
    ),
    HotelModels(
      hotelImages: AssetHelper.grandLuxury,
      hotelName: 'Grand Luxury’s',
      location: 'Banyumas, Jateng  ',
      awayKilometer: '2.3 km ',
      star: 4.2,
      numberOfReview: 2456,
      price: 234 ,
    ),
    HotelModels(
      hotelImages: AssetHelper.theOrlandoHouse,
      hotelName: 'The Orlando House',
      location: 'Ajibarang, Jateng ',
      awayKilometer: '1.1 km ',
      star: 3.8,
      numberOfReview: 1234,
      price: 132,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return AppBarContainer(
      titleString: 'Hotels',
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children:
                listHotel.map((e) => ItemHotelWidget(hotelModels: e)).toList(),
          ),
        ),
      ),
    );
  }
}
