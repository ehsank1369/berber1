import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_barber_04/contants/colors.dart';
import 'package:flutter_barber_04/widget/appbar.dart';
import 'package:flutter_barber_04/widget/circle_avatar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context),
      backgroundColor: CustomColors.blackColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, right: 25, left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'سلام',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'رشید امانی',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 24,
                        width: 136,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: CustomColors.blueLiteColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'شماره تماس تایید شده',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: CustomColors.blackColor),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: SizedBox(
                                  width: 13,
                                  height: 13,
                                  child: Image.asset(
                                      'assets/images/icon_tick.png')),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: CircleImage(
                          height: 54,
                          width: 54,
                          imageName: 'avatar',
                          maxRadius: 38)),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25),
                child: Divider(
                  thickness: 2,
                  height: 30,
                  color: Color(0xff999494),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 105),
                child: Text(
                  'حساب کاربری',
                  style: TextStyle(
                      fontSize: 18,
                      color: CustomColors.greyColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/back_arrow.png'),
                    const Spacer(),
                    const Text(
                      'اطلاعات حساب کاربری',
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset('assets/images/icon_profile.png')
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25),
                child: Divider(
                  thickness: 2,
                  height: 30,
                  color: Color(0xff999494),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  children: [
                    Image.asset('assets/images/icon_back_arrow_red.png'),
                    const Spacer(),
                    const Text(
                      'خروج از حساب کاربری',
                      style: TextStyle(
                          fontSize: 18,
                          color: CustomColors.redColor,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(width: 10),
                    Image.asset('assets/images/icon_exit.png'),
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
