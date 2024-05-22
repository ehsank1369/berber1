import 'dart:ui';

import 'package:flutter/material.dart';

PreferredSizeWidget appBarWidget(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    actions: [
      Padding(
        padding: const EdgeInsets.only(top: 10, right: 10),
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
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
      ),
    ],
  );
}
