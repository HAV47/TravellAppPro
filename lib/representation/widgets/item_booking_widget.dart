import 'package:flutter/material.dart';
import 'package:travelapp/core/constans/dimention/dimention_constants.dart';

class ItemBookingWidget extends StatelessWidget {
  const ItemBookingWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.description,
        this.onTap
      });

  final String icon;
  final String title;
  final String description;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(kDefaultPadding),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(kItemPadding),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              icon,
              height: 35,
              width: 35,
            ),
            SizedBox(
              width: kItemPadding,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                ),
                SizedBox(
                  height: kItemPadding,
                ),
                Text(description,
                  style: TextStyle(fontWeight: FontWeight.bold,),
                    ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
