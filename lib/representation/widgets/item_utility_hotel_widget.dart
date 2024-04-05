import 'package:flutter/material.dart';
import 'package:travelapp/core/constans/dimention/dimention_constants.dart';
import 'package:travelapp/core/helpers/asset_helper.dart';
import 'package:travelapp/core/helpers/image_helper.dart';

class ItemUtilityHotelWidget extends StatelessWidget {
  const ItemUtilityHotelWidget({Key? key}) : super(key: key);

  static const List<Map<String, String>> listUtilityHotel = [
    {'icon': AssetHelper.iconWifi, 'name': 'Free\nWifi'},
    {'icon': AssetHelper.iconNonRefund, 'name': 'Non-\nRefundable'},
    {'icon': AssetHelper.iconBreakfast, 'name': 'Free-\nBreakfast'},
    {'icon': AssetHelper.iconNonSmoke, 'name': 'Non-\nSmoking'},
  ];

  Widget _buildItemUtilityHotelWidget({required String icon, required String name}) {
    return Column(
      children: [
        ImageHelper.LoadFromAsset(
          icon,
        ),
        SizedBox(
          height: kTopPadding,
        ),
        Text(name, textAlign: TextAlign.center,),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: listUtilityHotel
            .map(
              (e) => _buildItemUtilityHotelWidget(
            icon: e['icon']!,
            name: e['name']!,
          ),
        )
            .toList(),
      ),
    );
  }
}
