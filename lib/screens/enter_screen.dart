import 'package:flutter/material.dart';
import 'package:flutter_barber_04/contants/colors.dart';
import 'package:flutter_barber_04/widget/appbar.dart';
import 'package:flutter_barber_04/widget/white_line.dart';

class EnterScreen extends StatelessWidget {
  const EnterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(),
      backgroundColor: CustomColors.blackColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(width: double.infinity),
              const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  'ورود یا ثبت نام',
                  style: TextStyle(
                    fontSize: 20,
                    color: CustomColors.whiteColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    //maxLines: 2,
                    textDirection: TextDirection.rtl,
                    'برای دسترسی به امکانات بیشتر  و رزرو در',
                    style: TextStyle(
                      fontSize: 20,
                      color: CustomColors.whiteColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          textDirection: TextDirection.rtl,
                          ' کنید.',
                          style: TextStyle(
                            fontSize: 20,
                            color: CustomColors.whiteColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          textDirection: TextDirection.rtl,
                          ' ثبت نام',
                          style: TextStyle(
                            fontSize: 20,
                            color: CustomColors.greenColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          textDirection: TextDirection.rtl,
                          ' یا',
                          style: TextStyle(
                            fontSize: 20,
                            color: CustomColors.whiteColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          textDirection: TextDirection.rtl,
                          ' وارد شوید',
                          style: TextStyle(
                            fontSize: 20,
                            color: CustomColors.greenColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          textDirection: TextDirection.rtl,
                          ' کارینو',
                          style: TextStyle(
                            fontSize: 20,
                            color: CustomColors.whiteColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 44, right: 70),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColors.greenColor,
                    minimumSize: const Size(220, 40),
                  ),
                  child: const Text(
                    'ورود / ثبت نام',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: CustomColors.blackColor),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: whiteLine(),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 90),
                child: Text(
                  'ادمین',
                  style: TextStyle(
                      fontSize: 16,
                      color: CustomColors.whiteColor,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Image.asset('assets/images/back_arrow.png'),
                    Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Text(
                        'ورود به صفحه ادمین',
                        style: TextStyle(
                            fontSize: 16,
                            color: CustomColors.whiteColor,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Image.asset('assets/images/icon_admin.png')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
