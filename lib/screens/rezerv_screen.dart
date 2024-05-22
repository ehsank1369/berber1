import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_barber_04/contants/colors.dart';
import 'package:flutter_barber_04/screens/date_time_screen.dart';

class RezervScreen extends StatelessWidget {
  const RezervScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.blackColor,
      body: CustomScrollView(
        slivers: <Widget>[
          AppBar(),
          const ImageAndName(),
          const MainTask(),
          const SliverPadding(
            padding: EdgeInsets.only(bottom: 50),
          ),
          getBottomsheet(context)
        ],
      ),
    );
  }

  Widget getBottomsheet(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const DateTimeScreen();
            }));
          },
          child: Container(
            height: 78,
            width: 394,
            decoration: const BoxDecoration(
              color: CustomColors.greyBlackColor,
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Row(
                children: [
                  Image.asset('assets/images/back_arrow_group.png'),
                  const Spacer(),
                  const Text(
                    'انتخاب تاریخ',
                    style: TextStyle(
                        color: CustomColors.whiteColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Container(
                    height: 56,
                    width: 56,
                    decoration: const BoxDecoration(
                      color: CustomColors.greenColor,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/back_arrow.png',
                        color: CustomColors.blackColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 10, right: 10),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(25),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 70, sigmaY: 20),
              child: Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  color: Colors.white10,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Image.asset('assets/images/forward_arrow.png'),
                ),
              ),
            ),
          ),
        ),
      ],
      backgroundColor: Colors.transparent,
      expandedHeight: 400,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          'assets/images/rashid_art.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class MainTask extends StatefulWidget {
  const MainTask({
    super.key,
  });

  @override
  State<MainTask> createState() => _MainTaskState();
}

class _MainTaskState extends State<MainTask> {
  List<bool> selectedBottomSheet = List.generate(10, (index) => false);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      sliver: SliverGrid.builder(
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 30,
          mainAxisSpacing: 15,
          mainAxisExtent: 72,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedBottomSheet[index] = !selectedBottomSheet[index];
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: (selectedBottomSheet[index])
                    ? CustomColors.greenColor
                    : CustomColors.greyLinerColor,
                /* gradient: LinearGradient(colors: [
                  CustomColors.blackLinerColor,
                  CustomColors.greyLinerColor
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
             */
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'پاک سازی و جوان سازی صورت',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: (selectedBottomSheet[index])
                              ? CustomColors.blackColor
                              : CustomColors.whiteColor,
                          fontSize: 14),
                    ),
                    Text(
                      '150 هزار تومن',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: (selectedBottomSheet[index])
                              ? CustomColors.blackColor
                              : CustomColors.greyColor,
                          fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ImageAndName extends StatelessWidget {
  const ImageAndName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 5, top: 24, right: 5),
              child: Text(
                'رشید باقری',
                style: TextStyle(fontSize: 23, color: CustomColors.whiteColor),
              ),
            ),
            Container(
              height: 112,
              width: 112,
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
/*
class AppBar extends StatelessWidget {
  const AppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 10, right: 10),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(25),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 70, sigmaY: 20),
              child: Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  color: Colors.white10,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Image.asset('assets/images/forward_arrow.png'),
                ),
              ),
            ),
          ),
        ),
      ],
      backgroundColor: Colors.transparent,
      expandedHeight: 400,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          'assets/images/rashid_art.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}


/*

 NestedScrollView(
          headerSliverBuilder: (context, inedex) {
            return [
              SliverAppBar(
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 10),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(25),
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 70, sigmaY: 20),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          child: Center(
                            child:
                                Image.asset('assets/images/forward_arrow.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
                backgroundColor: Colors.transparent,
                expandedHeight: 400,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'assets/images/rashid_art.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ];
          },
          body: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                  child: Center(
                child: Container(
                  height: 112,
                  width: 112,
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
              ))
            ],
          ),
        )
*/*/