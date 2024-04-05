import 'package:flutter/cupertino.dart';
import 'package:travelapp/core/constans/dimention/dimention_constants.dart';
import 'package:travelapp/core/helpers/asset_helper.dart';
import 'package:travelapp/representation/widgets/app_bar_container.dart';
import 'package:travelapp/representation/widgets/button_widget.dart';
import 'package:travelapp/representation/widgets/item_guest_and_room_widget.dart';

class GuestAndRoomBookingScreen extends StatefulWidget {
  const GuestAndRoomBookingScreen({super.key});

  static const String routeName = '/guest_and_room_booking_screen';

  @override
  State<GuestAndRoomBookingScreen> createState() =>
      _GuestAndRoomBookingScreenState();
}

class _GuestAndRoomBookingScreenState extends State<GuestAndRoomBookingScreen> {
  // final GlobalKey<ItemAddGuestAndRoom> _itemCountGuest =
  //     GlobalKey<ItemAddGuestAndRoom>();
  // final GlobalKey<ItemAddGuestAndRoom> _itemCountRoom =
  //     GlobalKey<ItemAddGuestAndRoom>();

  @override
  Widget build(BuildContext context) {
    return AppBarContainer(
      titleString: 'Add guest and room',
      paddingContent: EdgeInsets.all(kMediumPadding),
      child: Column(
        children: [
          SizedBox(height: kMediumPadding),
          ItemAddGuestAndRoom(
              title: 'Guest', icon: AssetHelper.iconGuest, initData: 2),
          ItemAddGuestAndRoom(
              title: 'Room', icon: AssetHelper.iconBed, initData: 2),
          ButtonWidget(
            title: 'Search',
            ontap: () {Navigator.of(context).pop();},
          ),
          SizedBox(height: kMediumPadding),
          ButtonWidget(
            title: 'Cancel',
            ontap: () {Navigator.of(context).pop();},
          ),
        ],
      ),
    );
  }
}
