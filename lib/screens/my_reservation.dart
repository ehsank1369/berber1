import 'package:flutter/material.dart';

import 'package:flutter_barber_04/contants/colors.dart';

class MyReservation extends StatefulWidget {
  const MyReservation({super.key});

  @override
  State<MyReservation> createState() => _MyReservationState();
}

class _MyReservationState extends State<MyReservation>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.blackColor,
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                'رزروهای من',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35, left: 25, right: 25),
              child: Container(
                  height: 55,
                  width: 382,
                  decoration: const BoxDecoration(
                    color: Color(0xff1FEAA5),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: TabBar(
                    controller: _tabController,
                    dividerColor: Colors.transparent,
                    labelStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                    indicatorWeight: 1,
                    labelColor: Colors.black,
                    indicatorColor: Colors.red,
                    tabs: const [
                      Tab(
                        text: 'رزروهای قبلی ',
                      ),
                      Tab(
                        text: 'رزروهای فعلی',
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
                child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 50, left: 24, right: 24),
                    child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: ReservationTime(),
                          );
                        }),
                  ),
                ),
                Container(
                  child: const Padding(
                    padding: EdgeInsets.only(top: 60, left: 24, right: 24),
                    child: Column(
                      children: [ReservationTime()],
                    ),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class ReservationTime extends StatelessWidget {
  const ReservationTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 385,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          color: CustomColors.greyLinerColor),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const Text(
                      'ویرایش',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: CustomColors.whiteColor),
                    ),
                    const SizedBox(width: 5),
                    Image.asset('assets/images/icon_edit_green.png')
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'لغو رزرو',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: CustomColors.whiteColor),
                    ),
                    const SizedBox(width: 5),
                    Image.asset('assets/images/icon_edit_green.png')
                  ],
                ),
              ],
            ),
            const Spacer(),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'رشید باقری',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: CustomColors.whiteColor),
                ),
                Text(
                  'چهارشنبه 7 اسفند',
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: CustomColors.whiteColor),
                ),
                Text(
                  'ساعت 9 شب',
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: CustomColors.whiteColor),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 88,
              width: 88,
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
