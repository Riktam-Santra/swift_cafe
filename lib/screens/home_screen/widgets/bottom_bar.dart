import 'dart:ui';

import 'package:flutter/material.dart';

import 'bottom_bar_button.dart';

class ButtomBar extends StatefulWidget {
  const ButtomBar({
    super.key,
  });

  @override
  State<ButtomBar> createState() => _ButtomBarState();
}

class _ButtomBarState extends State<ButtomBar> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(51, 51, 51, 0.84),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 12,
            sigmaY: 12,
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BottomBarButton(
                  iconPath: "lib/res/media/images/icons/home.png",
                  index: 0,
                ),
                BottomBarButton(
                  iconPath: "lib/res/media/images/icons/profile.png",
                  index: 1,
                ),
                BottomBarButton(
                  iconPath: "lib/res/media/images/icons/wallet.png",
                  index: 2,
                ),
                BottomBarButton(
                  iconPath: "lib/res/media/images/icons/basket.png",
                  index: 3,
                ),
                BottomBarButton(
                  iconPath: "lib/res/media/images/icons/messages.png",
                  index: 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
