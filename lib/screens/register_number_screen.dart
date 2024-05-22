import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_barber_04/contants/colors.dart';
import 'package:flutter_barber_04/widget/appbar.dart';

class RegisterNumberScreen extends StatelessWidget {
  const RegisterNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context),
      backgroundColor: CustomColors.blackColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 82,
                width: 82,
                child: Image.asset('assets/images/icon_logo.png'),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 32),
                child: Text(
                  'ورود به کارینو',
                  style: TextStyle(
                    fontSize: 20,
                    color: CustomColors.whiteColor,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 32),
                child: Text(
                  'برای دریافت پیشنهادهای خاص و تجربه بهتر رزرو ابتدا در کارینو ثبت نام کن.',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontSize: 20,
                    color: CustomColors.whiteColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(
                    inputFormatters: [LengthLimitingTextInputFormatter(11)],
                    keyboardType: TextInputType.number,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 23,
                      color: CustomColors.whiteColor,
                    ),
                    //   maxLength: 11,
                    decoration: const InputDecoration(
                        label: Text(
                          'شماره موبایل',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: CustomColors.whiteColor,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide:
                                BorderSide(color: CustomColors.greyColor)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide:
                                BorderSide(color: CustomColors.greenColor))
                        //  border: OutlineInputBorder(
                        //     borderSide: BorderSide(color: CustomColors.greenColor)),
                        ),
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(380, 60),
                      backgroundColor: CustomColors.greenColor),
                  onPressed: () {},
                  child: const Text(
                    'ادامه',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: CustomColors.blackColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
