import 'package:flutter/cupertino.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:travelapp/core/constans/dimention/color_palette.dart';
import 'package:travelapp/core/constans/dimention/dimention_constants.dart';
import 'package:travelapp/representation/widgets/app_bar_container.dart';
import 'package:travelapp/representation/widgets/button_widget.dart';

class SelectDateScreen extends StatelessWidget {
   SelectDateScreen({super.key});

  static const String routeName = '/select_date_screen';
  DateTime? rangeStartDate;
  DateTime? rangeEndDate;

  @override
  Widget build(BuildContext context) {
    return AppBarContainer(
      titleString: 'Select Date',
      child: Container(
        child: Column(
          children: [
            SizedBox(height: kMediumPadding),
            SfDateRangePicker(
              view: DateRangePickerView.month,
              selectionMode: DateRangePickerSelectionMode.range,
              monthViewSettings:
                  DateRangePickerMonthViewSettings(firstDayOfWeek: 1),
              selectionColor: ColorPalatte.yellowColor,
              startRangeSelectionColor: ColorPalatte.yellowColor,
              endRangeSelectionColor: ColorPalatte.yellowColor,
              rangeSelectionColor: ColorPalatte.yellowColor.withOpacity(0.25),
              todayHighlightColor: ColorPalatte.yellowColor,
              toggleDaySelection: true,
              onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {
                if (args.value is PickerDateRange) {
                  rangeStartDate = args.value.startDate;
                  rangeEndDate = args.value.endDate;
                }
              },
            ),
            ButtonWidget(
              title: 'Select',
              ontap: () {
                Navigator.of(context).pop([rangeStartDate, rangeEndDate]);
              },),
              SizedBox(height: kMediumPadding,),
              ButtonWidget(
                title: 'Cancel',
                ontap: () {
                  Navigator.of(context).pop( );
                },
            )
          ],
        ),
      ),
    );
  }
}
