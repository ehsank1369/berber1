import 'package:flutter/material.dart';
import 'package:flutter_barber_04/contants/colors.dart';
import 'package:flutter_barber_04/widget/appbar.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.blackColor,
      appBar: appBarWidget(context),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 45, right: 45, top: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: double.infinity,
              ),
              SizedBox(
                width: 176,
                height: 176,
                child: Image.asset(
                  'assets/images/icon_logo.png',
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50, bottom: 10),
                child: Text(
                  'به کمک کارینو نیاز دارید؟',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: CustomColors.whiteColor),
                ),
              ),
              const Text(
                ' کارینو از 7 صبح تا 12 بامداد آماده پاسخگویی به شماست.',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: CustomColors.greyColor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    SizedBox(
                      height: 36,
                      width: 36,
                      child: Image.asset(
                        'assets/images/icon_insta.png',
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    const Text(
                      'karino',
                      style: TextStyle(
                        fontSize: 20,
                        color: CustomColors.whiteColor,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    SizedBox(
                      height: 36,
                      width: 36,
                      child: Image.asset(
                        'assets/images/icon_whatsup.png',
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    const Text(
                      'karino',
                      style: TextStyle(
                        fontSize: 20,
                        color: CustomColors.whiteColor,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    SizedBox(
                      height: 36,
                      width: 36,
                      child: Image.asset(
                        'assets/images/icon_telegram.png',
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    const Text(
                      'karino',
                      style: TextStyle(
                        fontSize: 20,
                        color: CustomColors.whiteColor,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    SizedBox(
                      height: 36,
                      width: 36,
                      child: Image.asset(
                        'assets/images/icon_phone.png',
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    const Text(
                      '0218985622',
                      style: TextStyle(
                        fontSize: 20,
                        color: CustomColors.whiteColor,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
