import 'package:flutter/material.dart';
import 'package:travelapp/data/models/room_models.dart';
import 'package:travelapp/representation/widgets/item_room_widget.dart';

import '../../core/helpers/asset_helper.dart';
import '../widgets/app_bar_container.dart';

class SelectRoomScreen extends StatefulWidget {
  const SelectRoomScreen({Key? key}) : super(key: key);

  static const String routeName = '/rooms_screen';

  @override
  State<SelectRoomScreen> createState() => _SelectRoomScreenState();
}

class _SelectRoomScreenState extends State<SelectRoomScreen> {
  final List<RoomModel> listRoom = [
    RoomModel(
      roomImage: AssetHelper.DeluxeRoom,
      roomName: 'Deluxe Room',
      size: 27,
      utility: 'Free Cancellation',
      price: 245,
    ),
    RoomModel(
      roomImage: AssetHelper.ExecutiveSuite,
      roomName: 'Executive Suite',
      size: 32,
      utility: 'Non-refundable',
      price: 289,
    ),
    RoomModel(
      roomImage: AssetHelper.KingBedOnlyRoom,
      roomName: 'King Bed Only Room',
      size: 24,
      utility: 'Non-refundable',
      price: 214,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return AppBarContainer(
      titleString: 'Select room',
      childr: SingleChildScrollView(
        child: Column(
          children: listRoom
              .map(
                (e) => ItemRoomWidget(
              roomModel: e,
              onTap: () {
                // Navigator.of(context).pushNamed(CheckOutScreen.routeName, arguments: e);
              },
            ),
          )
              .toList(),
        ),
      ),
    );
  }
}
