import 'package:flutter/cupertino.dart';
import 'package:travelapp/core/constans/dimention/color_palette.dart';
import 'package:travelapp/core/constans/dimention/dimention_constants.dart';

class DashlineWidget extends StatelessWidget {
  const DashlineWidget(
      {super.key, this.height = 1, this.color = ColorPalatte.dividerColor});

  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dasWidth = 6.0;
        final dasHeight = height;
        final dasCount = (boxWidth / (2 * dasWidth)).floor();
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Flex(
            children: List.generate(dasCount, (_) {
              return SizedBox(
                width: dasWidth,
                height: dasHeight,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: color),
                ),
              );
            }),
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            direction: Axis.horizontal,
          ),
        );
      },
    );
  }
}
