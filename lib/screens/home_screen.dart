import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_barber_04/contants/colors.dart';
import 'package:flutter_barber_04/screens/rezerv_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: CustomColors.blackColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            GetHeader(),
            GetMainColumn1(),
          ],
        ),
      ),
    );
  }
}

class GetMainColumn1 extends StatelessWidget {
  const GetMainColumn1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 3,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              top: 32,
              left: 24,
              right: 24,
            ),
            child: Stack(
              children: [
                Container(
                  height: 371,
                  width: 381,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(25),
                    ),
                    child: Image.asset(
                      'assets/images/rashid_art.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const RezervScreen();
                      }));
                    },
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(25),
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
                        child: Container(
                          height: 64,
                          width: 64,
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          child: Center(
                            child: Image.asset('assets/images/back_arrow.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 23,
                  left: 16,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                      const Padding(
                        padding: EdgeInsets.only(left: 18, top: 24),
                        child: Text(
                          'رشید باقری',
                          style: TextStyle(
                              fontSize: 20, color: CustomColors.whiteColor),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class GetMainColumn extends StatelessWidget {
  const GetMainColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 25),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Stack(
                children: [
                  Container(
                    height: 371,
                    width: 381,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(25),
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
                        child: Container(
                          height: 64,
                          width: 64,
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          child: Center(
                            child: Image.asset('assets/images/back_arrow.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 23,
                    left: 16,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                        const Padding(
                          padding: EdgeInsets.only(left: 18, top: 24),
                          child: Text(
                            'رشید باقری',
                            style: TextStyle(
                                fontSize: 20, color: CustomColors.whiteColor),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ));
  }
}

class GetHeader extends StatelessWidget {
  const GetHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 27, right: 27, top: 30),
        child: Row(
          children: [
            Container(
              height: 30,
              width: 159,
              decoration: const BoxDecoration(
                color: CustomColors.greenColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: const Center(
                child: Text(
                  'به کارینو خوش اومدی ',
                  style: TextStyle(
                      fontSize: 14,
                      color: CustomColors.blackColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'سلام حسین',
                  style: TextStyle(
                      color: CustomColors.whiteColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                Row(
                  children: [
                    const Text(
                      'لنگرود، اقدسیه',
                      style: TextStyle(
                          color: CustomColors.greyColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(width: 3),
                    Image.asset('assets/images/location.png')
                  ],
                ),
              ],
            ),
            const SizedBox(width: 17),
            Container(
              height: 55,
              width: 55,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(82),
                ),
              ),
              child: const CircleAvatar(
                maxRadius: 82,
                backgroundImage: AssetImage(
                  'assets/images/avatar.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
