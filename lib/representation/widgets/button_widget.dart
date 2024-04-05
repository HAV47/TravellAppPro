import 'package:flutter/cupertino.dart';
import 'package:travelapp/core/constans/dimention/color_palette.dart';
import 'package:travelapp/core/constans/dimention/dimention_constants.dart';
import 'package:travelapp/core/constans/text_style.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.title, this.ontap});
  final String title;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kMediumPadding),
          gradient: Gradients.defaultGradientBackground,
        ),
        child: Text(
          title,
          style: TextStyles.defaultStyle.bold.whiteTextColor,
        ),
        alignment: Alignment.center,
      ),
    );
  }
}
