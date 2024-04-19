import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_barber_04/contants/colors.dart';
import 'package:flutter_barber_04/widget/appbar.dart';
import 'package:flutter_barber_04/widget/share_bottom_sheet.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';

class DateTimeScreen extends StatefulWidget {
  const DateTimeScreen({super.key});

  @override
  State<DateTimeScreen> createState() => _DateTimeScreenState();
}

class _DateTimeScreenState extends State<DateTimeScreen> {
  // List<bool> selectedBottomSheet = List.generate(20, (index) => false);
  String datatime = 'انتخاب تاریخ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(),
      backgroundColor: CustomColors.blackColor,
      body: SafeArea(
          child: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: CustomColors.greenColor),
          onPressed: () async {
            Jalali? date = await showPersianDatePicker(
                context: context,
                initialDate: Jalali.now(),
                firstDate: Jalali(1398),
                lastDate: Jalali(1440));

            //   print(date);
            setState(() {
              datatime =
                  '${date!.year.toString() + '/' + date.month.toString() + '/' + date.day.toString()}';
            });
            showModalBottomSheet(
                barrierColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return DraggableScrollableSheet(
                    initialChildSize: 0.6,
                    maxChildSize: 0.7,
                    minChildSize: 0.2,
                    builder: (context, controller) {
                      return ShareBottomSheet(
                        controller: controller,
                      );
                    },
                  );
                });
          },
          child: Text(
            datatime,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: CustomColors.blackColor,
                fontSize: 16),
          ),
        ),
      )),
    );
  }
}
//ehsan