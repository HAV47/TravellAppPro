import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travelapp/core/constans/dimention/dimention_constants.dart';
import 'package:travelapp/core/helpers/asset_helper.dart';
import 'package:travelapp/representation/screens/guest_and_room_booking_screen.dart';
import 'package:travelapp/representation/screens/hotel_screen.dart';
import 'package:travelapp/representation/screens/select_date_screen.dart';
import 'package:travelapp/representation/widgets/app_bar_container.dart';
import 'package:travelapp/representation/widgets/button_widget.dart';
import 'package:travelapp/representation/widgets/item_booking_widget.dart';
import 'package:travelapp/core/constans/extention/date_ext.dart';

class HotelBookingScreen extends StatefulWidget {
  HotelBookingScreen({super.key, this.dateSelected});

  String? dateSelected;
  static const String routeName = '/hotel_booking_screen';

  @override
  State<HotelBookingScreen> createState() => _HotelBookingScreenState();
}

class _HotelBookingScreenState extends State<HotelBookingScreen> {
  String? dateSelected;

  @override
  Widget build(BuildContext context) {
    return AppBarContainer(
      titleString: 'Hotel Booking',
      paddingContent: EdgeInsets.all(kMediumPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: kMediumPadding * 2,
            ),
            ItemBookingWidget(
                icon: AssetHelper.iconLocation,
                title: 'Destination',
                description: 'South Korea'),
            SizedBox(
              height: kMediumPadding,
            ),
            StatefulBuilder(
              builder: (context, setState) {
                return ItemBookingWidget(
                  icon: AssetHelper.iconCelender,
                  title: 'Select Date',
                  description: dateSelected ?? '13 Feb - 18 Feb 2021',
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(SelectDateScreen.routeName);
                  },
                );
              },
            ),
            SizedBox(
              height: kMediumPadding,
            ),
            ItemBookingWidget(
              icon: AssetHelper.iconBed,
              title: 'Guest and Room',
              description: '2 Guest, 1 Room',
              onTap: () {
                Navigator.of(context)
                    .pushNamed(GuestAndRoomBookingScreen.routeName);
              },
            ),
            SizedBox(
              height: kMediumPadding,
            ),
            ButtonWidget(
              title: 'Search',
              ontap: () {
                Navigator.of(context).pushNamed(HotelScreen.routeName);
              },
            ),
            SizedBox(height: kMediumPadding),
            ButtonWidget(
              title: 'Cancel',
              ontap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
