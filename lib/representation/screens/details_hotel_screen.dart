import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travelapp/core/constans/dimention/dimention_constants.dart';
import 'package:travelapp/core/constans/text_style.dart';
import 'package:travelapp/core/helpers/asset_helper.dart';
import 'package:travelapp/core/helpers/image_helper.dart';
import 'package:travelapp/data/models/hotel_models.dart';
import 'package:travelapp/representation/screens/select_room_screen.dart';
import 'package:travelapp/representation/widgets/dashline_widget.dart';
import 'package:travelapp/representation/widgets/item_button_widget.dart';
import 'package:travelapp/representation/widgets/item_utility_hotel_widget.dart';

class DetailsHotelScreen extends StatefulWidget {
  const DetailsHotelScreen({super.key, required this.hotelModels});

  final HotelModels hotelModels;
  static const String routeName = '/details_hotel_screen';

  @override
  State<DetailsHotelScreen> createState() => _DetailsHotelScreenState();
}

class _DetailsHotelScreenState extends State<DetailsHotelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: ImageHelper.LoadFromAsset(AssetHelper.hotelDetails,
                fit: BoxFit.fill),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.3,
            maxChildSize: 0.8,
            minChildSize: 0.3,
            builder: (context, scrollController) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: kMediumPadding),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(kMediumPadding * 2),
                      topRight: Radius.circular(kMediumPadding * 2)),
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: kDefaultPadding),
                      child: Container(
                        height: 5,
                        width: 60,
                        decoration: const BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(kItemPadding)),
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: kMediumPadding),
                    Expanded(
                      child: ListView(
                        controller: scrollController,
                        padding: EdgeInsets.zero,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(widget.hotelModels.hotelName,
                                      style: TextStyles
                                          .defaultStyle.fontHeader.bold),
                                  const Spacer(),
                                  Text(
                                      '\$${widget.hotelModels.price.toString()}',
                                      style: TextStyles
                                          .defaultStyle.fontHeader.bold),
                                  Text(' /night',
                                      style:
                                          TextStyles.defaultStyle.fontCaption),
                                ],
                              ),
                              const SizedBox(height: kDefaultPadding),
                              Row(
                                children: [
                                  ImageHelper.LoadFromAsset(
                                    AssetHelper.iconLocationBank,
                                  ),
                                  const SizedBox(width: kMinPadding),
                                  Text(widget.hotelModels.location),
                                  Text(
                                    ' - ${widget.hotelModels.awayKilometer} from destination',
                                    style: TextStyles.defaultStyle
                                        .subTitleTextColor.fontCaption,
                                  ),
                                ],
                              ),
                              const DashlineWidget(),
                              Row(
                                children: [
                                  ImageHelper.LoadFromAsset(
                                    AssetHelper.iconStarHotel,
                                  ),
                                  const SizedBox(width: kMinPadding),
                                  Text(
                                    widget.hotelModels.star.toString(),
                                  ),
                                  Text(
                                    ' (${widget.hotelModels.numberOfReview} reviews)',
                                    style: TextStyles
                                        .defaultStyle.subTitleTextColor,
                                  ),
                                  Spacer(),
                                  Text(
                                    'See All',
                                    style: TextStyles
                                        .defaultStyle.bold.primaryTextColor,
                                  ),
                                ],
                              ),
                              const DashlineWidget(),
                              Text(
                                'Infomation',
                                style: TextStyles.defaultStyle.bold,
                              ),
                              const SizedBox(height: kDefaultPadding),
                              const Text(
                                '''You will find every comfort because many of the services that the hotel offers for travellers and of course the hotel is very comfortable.''',
                              ),
                              const ItemUtilityHotelWidget(),
                              const SizedBox(
                                height: kDefaultPadding,
                              ),
                              Text(
                                'Location',
                                style: TextStyles.defaultStyle.bold,
                              ),
                              const SizedBox(
                                height: kDefaultPadding,
                              ),
                              const Text(
                                '''Located in the famous neighborhood of Seoul, Grand Luxury’s is set in a building built in the 2010s.''',
                              ),
                              const SizedBox(
                                height: kDefaultPadding,
                              ),
                              const SizedBox(
                                height: kMediumPadding,
                              ),
                              ImageHelper.LoadFromAsset(
                                AssetHelper.imageMap,
                                width: double.infinity,
                              ),
                              ItemButtonWidget(
                                  data: 'Select Room',
                                  onTap: () {
                                    Navigator.of(context).pushNamed(SelectRoomScreen.routeName);
                                  }),
                              const SizedBox(
                                height: kMediumPadding,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
