import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_barber_04/contants/colors.dart';
import 'package:flutter_barber_04/widget/appbar.dart';
import 'package:flutter_barber_04/widget/circle_avatar.dart';

//TODO   زیر شماره تماس یک شمارنده هس حذف شود
class InformationAccountScreen extends StatelessWidget {
  const InformationAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.blackColor,
      appBar: appBarWidget(context),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              'اطلاعات حساب کاربری',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: CustomColors.whiteColor,
              ),
            ),
            const SizedBox(height: 16),
            CircleImage(
                height: 131, width: 131, maxRadius: 82, imageName: 'avatar'),
            const SizedBox(height: 10),
            const Text(
              'ویرایش عکس پروفایل',
              style: TextStyle(
                color: CustomColors.blueLiteColor,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                    style: TextStyle(
                        fontSize: 15,
                        color: CustomColors.whiteColor,
                        fontWeight: FontWeight.w600),
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        labelText: 'نام',
                        labelStyle: TextStyle(
                            fontSize: 15,
                            color: CustomColors.whiteColor,
                            fontWeight: FontWeight.w600),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                          borderSide: BorderSide(
                              color: CustomColors.greyColor, width: 3),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                            borderSide: BorderSide(
                                color: CustomColors.greenColor, width: 3)))),
              ),
            ),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                  style: TextStyle(
                      fontSize: 15,
                      color: CustomColors.whiteColor,
                      fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      labelText: 'نام خانوادگی',
                      labelStyle: TextStyle(
                          fontSize: 15,
                          color: CustomColors.whiteColor,
                          fontWeight: FontWeight.w600),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                        borderSide:
                            BorderSide(color: CustomColors.greyColor, width: 3),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                          borderSide: BorderSide(
                              color: CustomColors.greenColor, width: 3))),
                ),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                  inputFormatters: [LengthLimitingTextInputFormatter(11)],
                  keyboardType: TextInputType.number,
                  //  maxLength: 11,
                  style: const TextStyle(
                      fontSize: 15,
                      color: CustomColors.whiteColor,
                      fontWeight: FontWeight.w600),
                  decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      labelText: 'شماره همراه',
                      labelStyle: TextStyle(
                          fontSize: 15,
                          color: CustomColors.whiteColor,
                          fontWeight: FontWeight.w600),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                        borderSide:
                            BorderSide(color: CustomColors.greyColor, width: 3),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                          borderSide: BorderSide(
                              color: CustomColors.greenColor, width: 3))),
                ),
              ),
            ),
            const SizedBox(
              height: 210,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(380, 60),
                    backgroundColor: CustomColors.greenColor),
                onPressed: () {},
                child: const Text(
                  'ثبت',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Color.fromARGB(255, 29, 43, 102),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
