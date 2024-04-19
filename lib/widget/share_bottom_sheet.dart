import 'package:flutter/material.dart';
import 'package:flutter_barber_04/contants/colors.dart';

class ShareBottomSheet extends StatefulWidget {
  const ShareBottomSheet({this.controller, super.key});
  final ScrollController? controller;

  @override
  State<ShareBottomSheet> createState() => _ShareBottomSheetState();
}

class _ShareBottomSheetState extends State<ShareBottomSheet> {
  List<bool> selectedBottomSheet = List.generate(20, (index) => false);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(50),
        topRight: Radius.circular(50),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 38),
        height: 300,
        decoration: const BoxDecoration(
          color: CustomColors.greyBlackColor2,
        ),
        child: CustomScrollView(
          controller: widget.controller,
          slivers: [
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: double.infinity,
                    ),
                    Text(
                      'انتخاب زمان',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.whiteColor),
                    )
                  ],
                ),
              ),
            ),
            SliverGrid(
              delegate:
                  SliverChildBuilderDelegate(childCount: 10, (context, index) {
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
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ق.ظ',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: (selectedBottomSheet[index])
                                    ? CustomColors.blackColor
                                    : CustomColors.whiteColor,
                                fontSize: 14),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '08:00',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: (selectedBottomSheet[index])
                                    ? CustomColors.blackColor
                                    : CustomColors.whiteColor,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 40),
            ),
            SliverPadding(padding: EdgeInsets.only(bottom: 150)),
            SliverToBoxAdapter(
              child: Container(
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
            )
          ],
        ),
      ),
    );
  }
}
