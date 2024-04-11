import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travelapp/core/constans/dimention/color_palette.dart';
import 'package:travelapp/core/constans/dimention/dimention_constants.dart';
import 'package:travelapp/core/helpers/asset_helper.dart';
import 'package:travelapp/core/helpers/image_helper.dart';
import 'package:travelapp/data/models/hotel_models.dart';
import 'package:travelapp/representation/screens/details_hotel_screen.dart';
import 'package:travelapp/representation/widgets/button_widget.dart';
import 'package:travelapp/representation/widgets/dashline_widget.dart';

class ItemHotelWidget extends StatelessWidget {
  const ItemHotelWidget({super.key, required this.hotelModels});

  final HotelModels hotelModels;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kDefaultPadding),
        color: Colors.white,
      ),
      margin: EdgeInsets.only(bottom: kDefaultPadding),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(right: kDefaultPadding),
            child: ImageHelper.loadFromAsset(
              hotelModels.hotelImages,
              radius: BorderRadius.only(
                topLeft: Radius.circular(kDefaultPadding),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding, vertical: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hotelModels.hotelName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                ),
                SizedBox(height: kDefaultPadding),
                Row(
                  children: [
                    ImageHelper.loadFromAsset(AssetHelper.iconLocationHotel),
                    SizedBox(width: kMinPadding),
                    Text(hotelModels.location),
                    Text(
                      ' - ${hotelModels.awayKilometer} from destination',
                      style: TextStyle(color: ColorPalette.subTitleColor),
                    ),
                  ],
                ),
                SizedBox(height: kDefaultPadding),
                Row(
                  children: [
                    ImageHelper.loadFromAsset(AssetHelper.iconStarHotel),
                    SizedBox(width: kMinPadding),
                    Text(hotelModels.star.toString()),
                    Text(
                      ' ( ${hotelModels.numberOfReview} review)',
                      style: TextStyle(color: ColorPalette.subTitleColor),
                    ),
                  ],
                ),
                DashlineWidget(),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '\$${hotelModels.price}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: kMediumPadding,
                          ),
                          Text('/night'),
                        ],
                      ),
                    ),
                    Expanded(
                        child: ButtonWidget(title: 'Book Room', ontap: () {
                          Navigator.of(context).pushNamed(DetailsHotelScreen.routeName,arguments: hotelModels);
                        })),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
