import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swift_cafe/screens/home_screen/widgets/bottom_bar.dart';
import 'package:swift_cafe/screens/home_screen/widgets/coffee_list_item.dart';
import 'package:swift_cafe/screens/home_screen/widgets/top_coffee_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final bottomBarIndex = 0;
  final carouselProductPathList = [
    "lib/res/media/images/products/Coffee2-1.png",
    "lib/res/media/images/products/Coffee2-2.png",
    "lib/res/media/images/products/Coffee2-3.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          width: GetPlatform.isWeb ? 360 : null,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/res/media/images/coffee-beans.jpg"),
              fit: BoxFit.cover,
            ),
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 207, 123, 75), Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(207, 123, 75, 0.51),
                  Colors.transparent
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.center,
              ),
            ),
            child: Center(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.23),
                ),
                child: SizedBox.expand(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 12,
                      sigmaY: 12,
                    ),
                    child: SafeArea(
                      child: Stack(
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: 27,
                                        child: Image.asset(
                                            "lib/res/media/images/waving-hand-sign.png"),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "20/12/2022",
                                              style:
                                                  GoogleFonts.inter().copyWith(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w300,
                                                color: const Color.fromARGB(
                                                  255,
                                                  182,
                                                  182,
                                                  182,
                                                ),
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 5.0),
                                              child: Text(
                                                "Joshua Scanlan",
                                                style: GoogleFonts.inter()
                                                    .copyWith(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                  color: const Color.fromARGB(
                                                    255,
                                                    182,
                                                    182,
                                                    182,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Spacer(),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 212, 212, 212),
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Image.asset(
                                              "lib/res/media/images/basket.png"),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color.fromARGB(
                                                    255, 113, 171, 122),
                                              ),
                                              shape: BoxShape.circle),
                                          child: ClipOval(
                                            child: Image.asset(
                                              "lib/res/media/images/user-avatar.png",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, top: 20, bottom: 30),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 5,
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 15),
                                            child: SizedBox(
                                              height: 18,
                                              child: Image.asset(
                                                  "lib/res/media/images/icons/search.png"),
                                            ),
                                          ),
                                          Expanded(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText:
                                                    "Search favorite Beverages",
                                                hintStyle: GoogleFonts.inter()
                                                    .copyWith(
                                                        color: const Color
                                                            .fromARGB(
                                                          255,
                                                          187,
                                                          187,
                                                          187,
                                                        ),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        letterSpacing: 0.185),
                                              ),
                                              style: GoogleFonts.inter()
                                                  .copyWith(
                                                      color:
                                                          const Color.fromARGB(
                                                        255,
                                                        187,
                                                        187,
                                                        187,
                                                      ),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      letterSpacing: 0.185),
                                            ),
                                          ),
                                          Image.asset(
                                            "lib/res/media/images/icons/options.png",
                                            height: 14,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  color: const Color.fromRGBO(
                                    49,
                                    49,
                                    49,
                                    0.45,
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 18, horizontal: 20),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                "Most Popular Beverages",
                                                style: GoogleFonts.inter()
                                                    .copyWith(
                                                  color: const Color.fromARGB(
                                                      255, 182, 182, 182),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                  letterSpacing: 0.2,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          bottom: 30,
                                        ),
                                        child: CarouselSlider.builder(
                                          itemCount:
                                              carouselProductPathList.length,
                                          itemBuilder:
                                              (context, index, realIndex) =>
                                                  TopCoffeeCard(
                                            imgPath:
                                                carouselProductPathList[index],
                                          ),
                                          options: CarouselOptions(
                                            enableInfiniteScroll: false,
                                            padEnds: false,
                                            initialPage: 1,
                                            autoPlay: false,
                                            viewportFraction: 0.61,
                                            aspectRatio: 1.5,
                                            disableCenter: false,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, left: 16),
                                  child: Text(
                                    "Get it instantly",
                                    style: GoogleFonts.inter().copyWith(
                                      color: const Color.fromARGB(
                                          255, 182, 182, 182),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.2,
                                    ),
                                  ),
                                ),
                                const CoffeeListItem(
                                  imgPath:
                                      "lib/res/media/images/products/list-product-1.jpg",
                                  name: "Lattè",
                                  description:
                                      "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
                                ),
                                const CoffeeListItem(
                                  imgPath:
                                      "lib/res/media/images/products/list-product-2.jpg",
                                  name: "Flat White",
                                  description:
                                      "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
                                ),
                              ],
                            ),
                          ),
                          BottomBar(bottomBarIndex: bottomBarIndex)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
    required this.bottomBarIndex,
  });

  final int bottomBarIndex;

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Spacer(),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 30,
            ),
            child: ButtomBar(),
          ),
        ),
      ],
    );
  }
}
