import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barber_04/contants/colors.dart';
import 'package:flutter_barber_04/widget/appbar.dart';
import 'package:flutter_barber_04/widget/white_line.dart';

class FinalRezervScreen extends StatelessWidget {
  const FinalRezervScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context),
      backgroundColor: CustomColors.blackColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [HeaderContent(), MainColumn()],
        ),
      )),
    );
  }
}

class MainColumn extends StatelessWidget {
  const MainColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: 430,
      decoration: const BoxDecoration(
        color: CustomColors.greyBlackColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.only(top: 15, left: 40, right: 40),
          child: CustomScrollView(
            slivers: <Widget>[
              const SliverToBoxAdapter(
                child: Text(
                  'تاریخ و زمان',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.whiteColor,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: Row(
                    children: [
                      const Text(
                        'شنبه 17 اسفند -10 صبح',
                        style: TextStyle(
                            fontSize: 14,
                            color: CustomColors.whiteColor,
                            fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      const Text(
                        'ویرایش',
                        style: TextStyle(
                            fontSize: 14,
                            color: CustomColors.greenColor,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset('assets/images/icon_edit_green.png'),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top: 14, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset('assets/images/icon_scissor.png'),
                      const SizedBox(width: 7),
                      const Text(
                        'لیست خدمات',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.whiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverList.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return MainTask();
                  }),
              SliverToBoxAdapter(
                  child: Padding(
                padding: EdgeInsets.only(top: 24, bottom: 12),
                child: whiteLine(),
              )),
              SliverList.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: PriceContent(),
                    );
                  }),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top: 27),
                  child: DottedLine(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.center,
                    lineLength: double.infinity,
                    lineThickness: 2.0,
                    dashLength: 10.0,
                    dashColor: CustomColors.whiteColor,
                    dashGradient: const [
                      CustomColors.whiteColor,
                      CustomColors.whiteColor
                    ],
                    dashGapLength: 10,
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      Text(
                        'مجموع هزینه ها',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontSize: 20,
                            color: CustomColors.whiteColor,
                            fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      Text(
                        '200 هزار تومان ',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontSize: 14,
                            color: CustomColors.whiteColor,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              const SliverPadding(padding: EdgeInsets.only(bottom: 50)),
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 87,
                  width: 420,
                  decoration: const BoxDecoration(
                    color: CustomColors.blackColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: Center(
                    child: Container(
                      height: 56,
                      width: 233,
                      decoration: const BoxDecoration(
                        color: CustomColors.greenColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'ثبت',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: CustomColors.blackColor,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class getssssssss extends StatelessWidget {
  const getssssssss({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      width: 430,
      decoration: const BoxDecoration(
        color: CustomColors.greyBlackColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              'تاریخ و زمان',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: CustomColors.whiteColor,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              children: [
                const Text(
                  'ویرایش',
                  style: TextStyle(
                      fontSize: 14,
                      color: CustomColors.greenColor,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 5,
                ),
                Image.asset('assets/images/icon_edit_green.png'),
                Spacer(),
                const Text(
                  'شنبه 17 اسفند -10 صبح',
                  style: TextStyle(
                      fontSize: 14,
                      color: CustomColors.whiteColor,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Text(
                  'لیست خدمات',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.whiteColor,
                  ),
                ),
                const SizedBox(width: 7),
                Image.asset('assets/images/icon_scissor.png'),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            const MainTask(),
            const SizedBox(
              height: 24,
            ),
            Container(
              height: 2,
              width: double.infinity,
              color: CustomColors.whiteColor,
            ),
            const SizedBox(
              height: 24,
            ),
            const Column(
              children: [
                Text(
                  'خلاصه پرداخت',
                  style: TextStyle(
                      fontSize: 20,
                      color: CustomColors.whiteColor,
                      fontWeight: FontWeight.w700),
                ),
                PriceContent()
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            DottedLine(
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              lineLength: double.infinity,
              lineThickness: 2.0,
              dashLength: 10.0,
              dashColor: CustomColors.whiteColor,
              dashGradient: const [
                CustomColors.whiteColor,
                CustomColors.whiteColor
              ],
              dashGapLength: 0.9,
            ),
            const Row(
              children: [
                Text(
                  '200 هزار تومان ',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      fontSize: 14,
                      color: CustomColors.whiteColor,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Text(
                  'مجموع هزینه ها',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      fontSize: 20,
                      color: CustomColors.whiteColor,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              height: 87,
              width: 420,
              decoration: const BoxDecoration(
                color: CustomColors.blackColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: Center(
                child: Container(
                  height: 56,
                  width: 233,
                  decoration: const BoxDecoration(
                    color: CustomColors.greenColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'ثبت',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: CustomColors.blackColor,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PriceContent extends StatelessWidget {
  const PriceContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'کراتین',
          textDirection: TextDirection.rtl,
          style: TextStyle(
              fontSize: 14,
              color: CustomColors.whiteColor,
              fontWeight: FontWeight.w500),
        ),
        Spacer(),
        Text(
          '50 هزار تومان ',
          textDirection: TextDirection.rtl,
          style: TextStyle(
              fontSize: 14,
              color: CustomColors.whiteColor,
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

class MainTask extends StatelessWidget {
  const MainTask({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Row(
        children: [
          Container(
            height: 51,
            width: 51,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(
                Radius.circular(82),
              ),
            ),
            child: const CircleAvatar(
              maxRadius: 82,
              backgroundImage: AssetImage(
                'assets/images/rashid.png',
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'کراتین',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: CustomColors.whiteColor),
              ),
              Text(
                'کراتین مخصوص مو',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: CustomColors.whiteColor),
              ),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    'ویرایش',
                    style: TextStyle(
                        fontSize: 14,
                        color: CustomColors.greenColor,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset('assets/images/icon_edit_green.png'),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              const Text(
                '50 هزار تومان ',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    fontSize: 14,
                    color: CustomColors.whiteColor,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class HeaderContent extends StatelessWidget {
  const HeaderContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Container(
        height: 150,
        width: 380,
        decoration: const BoxDecoration(
          color: CustomColors.greenColor,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'رشید باقری',
                    style: TextStyle(
                        fontSize: 23,
                        color: CustomColors.blackColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      const Text(
                        'ویرایش',
                        style: TextStyle(
                            fontSize: 16,
                            color: CustomColors.blueColor,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset('assets/images/icon_edit_blue.png')
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 140,
              width: 140,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(82),
                ),
              ),
              child: const CircleAvatar(
                maxRadius: 82,
                backgroundImage: AssetImage(
                  'assets/images/rashid.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class getssssssss222222222 extends StatelessWidget {
  const getssssssss222222222({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 1000,
        width: 430,
        decoration: const BoxDecoration(
          color: CustomColors.greyBlackColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'تاریخ و زمان',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: CustomColors.whiteColor,
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Row(
                children: [
                  const Text(
                    'ویرایش',
                    style: TextStyle(
                        fontSize: 14,
                        color: CustomColors.greenColor,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset('assets/images/icon_edit_green.png'),
                  Spacer(),
                  const Text(
                    'شنبه 17 اسفند -10 صبح',
                    style: TextStyle(
                        fontSize: 14,
                        color: CustomColors.whiteColor,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 17,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text(
                    'لیست خدمات',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.whiteColor,
                    ),
                  ),
                  const SizedBox(width: 7),
                  Image.asset('assets/images/icon_scissor.png'),
                ],
              ),
              const SizedBox(
                height: 22,
              ),
              const MainTask(),
              const SizedBox(
                height: 24,
              ),
              Container(
                height: 2,
                width: double.infinity,
                color: CustomColors.whiteColor,
              ),
              const SizedBox(
                height: 24,
              ),
              const Column(
                children: [
                  Text(
                    'خلاصه پرداخت',
                    style: TextStyle(
                        fontSize: 20,
                        color: CustomColors.whiteColor,
                        fontWeight: FontWeight.w700),
                  ),
                  PriceContent()
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              DottedLine(
                direction: Axis.horizontal,
                alignment: WrapAlignment.center,
                lineLength: double.infinity,
                lineThickness: 2.0,
                dashLength: 10.0,
                dashColor: CustomColors.whiteColor,
                dashGradient: const [
                  CustomColors.whiteColor,
                  CustomColors.whiteColor
                ],
                dashGapLength: 0.9,
              ),
              const Row(
                children: [
                  Text(
                    '200 هزار تومان ',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: 14,
                        color: CustomColors.whiteColor,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Text(
                    'مجموع هزینه ها',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: 20,
                        color: CustomColors.whiteColor,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                height: 87,
                width: 420,
                decoration: const BoxDecoration(
                  color: CustomColors.blackColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Center(
                  child: Container(
                    height: 56,
                    width: 233,
                    decoration: const BoxDecoration(
                      color: CustomColors.greenColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'ثبت',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: CustomColors.blackColor,
                            fontSize: 20),
                      ),
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
