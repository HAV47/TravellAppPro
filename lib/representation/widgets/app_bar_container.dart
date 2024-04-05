import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelapp/core/constans/dimention/color_palette.dart';
import 'package:travelapp/core/constans/dimention/dimention_constants.dart';
import 'package:travelapp/core/constans/text_style.dart';
import 'package:travelapp/core/helpers/asset_helper.dart';
import 'package:travelapp/core/helpers/image_helper.dart';

class AppBarContainer extends StatelessWidget {
  const AppBarContainer({
    super.key,
    required this.child,
    this.title,
    this.implementLeading = false,
    this.titleString,
    this.subTitleString,
    this.implementTraling = false,
    this.paddingContent = const EdgeInsets.symmetric(
      horizontal: kMediumPadding,
    ),
  });

  final Widget child;
  final Widget? title;
  final String? titleString;
  final String? subTitleString;
  final bool implementLeading;
  final bool implementTraling;
  final EdgeInsets? paddingContent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 186,
            child: AppBar(
              centerTitle: true,
              automaticallyImplyLeading: false,
              elevation: 0,
              toolbarHeight: 90,
              backgroundColor: ColorPalatte.backgroundScaffoldColor,
              title: title ??
                  Row(
                    children: [
                      if (implementLeading)
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(kMediumPadding)),
                              color: Colors.white),
                          padding: const EdgeInsets.all(kItemPadding),
                          child: Icon(
                            FontAwesomeIcons.arrowLeft,
                            color: Colors.black,
                            size: kDefaultPadding,
                          ),
                        ),
                      Expanded(
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                titleString ?? '',
                                style: TextStyles.defaultStyle.fontHeader
                                    .whiteTextColor.bold,
                              ),
                              if (subTitleString != null)
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: kMediumPadding),
                                  child: Text(
                                    subTitleString!,
                                    style: TextStyles.defaultStyle.fontCaption
                                        .whiteTextColor,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      if (implementTraling)
                        Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(kDefaultPadding),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(kItemPadding),
                          child: Icon(
                            FontAwesomeIcons.bars,
                            size: kDefaultPadding,
                            color: Colors.black,
                          ),
                        ),
                    ],
                  ),
              flexibleSpace: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        gradient: Gradients.defaultGradientBackground,
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(35))),
                  ),
                  Positioned(
                      top: 0,
                      left: 0,
                      child: ImageHelper.LoadFromAsset(AssetHelper.oval_1)),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: ImageHelper.LoadFromAsset(AssetHelper.oval_2)),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 156),
            padding: paddingContent,
            child: child,
          ),
        ],
      ),
    );
  }
}
