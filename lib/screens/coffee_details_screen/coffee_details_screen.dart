import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swift_cafe/screens/coffee_details_screen/widgets/submit_section.dart';
import 'package:swift_cafe/screens/coffee_details_screen/widgets/switch_with_tag.dart';
import 'package:swift_cafe/screens/coffee_details_screen/widgets/cup_fill_choices.dart';

import '../widgets/review_details.dart';

class CoffeeDetailsScreen extends StatefulWidget {
  const CoffeeDetailsScreen({super.key});

  @override
  State<CoffeeDetailsScreen> createState() => _CoffeeDetailsScreenState();
}

class _CoffeeDetailsScreenState extends State<CoffeeDetailsScreen> {
  final milkList = [
    "Skim Milk",
    "Full Cream Milk",
    "Almond Milk",
    "Full Cream Milk",
    "Soy Milk",
    "Oat Milk",
    "Lactose Free Milk"
  ];

  final sugarList = ["Sugar X1", "Sugar X2", "½ Sugar", "No Sugar"];
  int selectedQuantity = 1;
  bool expandMenu = false;
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
              colors: [
                Color.fromARGB(255, 207, 123, 75),
                Colors.transparent,
              ],
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
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.23),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 12,
                  sigmaY: 12,
                ),
                child: SingleChildScrollView(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Image.asset(
                        "lib/res/media/images/products/hero-latte.png",
                        height: 456,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 430),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(30),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Lattè",
                                                style: GoogleFonts.inter(
                                                    color: const Color.fromRGBO(
                                                        205, 205, 205, 1),
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5.0),
                                                child: SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      62,
                                                  child: Row(
                                                    children: [
                                                      const ReviewDetails(),
                                                      const Spacer(),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(4),
                                                          color: const Color
                                                                  .fromRGBO(
                                                              217, 217, 217, 1),
                                                        ),
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              decoration:
                                                                  const BoxDecoration(
                                                                border: Border(
                                                                  right:
                                                                      BorderSide(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            155,
                                                                            155,
                                                                            155,
                                                                            1),
                                                                  ),
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        top: 6,
                                                                        bottom:
                                                                            6,
                                                                        left:
                                                                            12,
                                                                        right:
                                                                            6),
                                                                child: Text(
                                                                  selectedQuantity
                                                                      .toString(),
                                                                  style: GoogleFonts.inter(
                                                                      color: const Color
                                                                              .fromRGBO(
                                                                          155,
                                                                          155,
                                                                          155,
                                                                          1),
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700),
                                                                ),
                                                              ),
                                                            ),
                                                            // Stack(
                                                            //   clipBehavior:
                                                            //       Clip.none,
                                                            //   children: [
                                                            //     GestureDetector(
                                                            //       child:
                                                            //           const Icon(
                                                            //         Icons
                                                            //             .expand_more,
                                                            //         color: Color
                                                            //             .fromRGBO(
                                                            //                 155,
                                                            //                 155,
                                                            //                 155,
                                                            //                 1),
                                                            //       ),
                                                            //       onTap: () {
                                                            //         setState(() {
                                                            //           expandMenu =
                                                            //               !expandMenu;
                                                            //         });
                                                            //       },
                                                            //     ),
                                                            //     expandMenu
                                                            //         ? Positioned(
                                                            //             top: 25,
                                                            //             child: Column(
                                                            //                 children: List.generate(
                                                            //               4,
                                                            //               (index) =>
                                                            //                   GestureDetector(
                                                            //                 child:
                                                            //                     Container(
                                                            //                   width:
                                                            //                       25,
                                                            //                   height:
                                                            //                       25,
                                                            //                   color: const Color.fromRGBO(
                                                            //                       217,
                                                            //                       217,
                                                            //                       217,
                                                            //                       1),
                                                            //                   child:
                                                            //                       SizedBox.expand(
                                                            //                     child: Padding(
                                                            //                       padding: const EdgeInsets.only(left: 6, top: 6, bottom: 6, right: 12),
                                                            //                       child: Text(
                                                            //                         (index + 1).toString(),
                                                            //                         style: GoogleFonts.inter(color: const Color.fromRGBO(155, 155, 155, 1), fontSize: 12, fontWeight: FontWeight.w700),
                                                            //                         textAlign: TextAlign.center,
                                                            //                       ),
                                                            //                     ),
                                                            //                   ),
                                                            //                 ),
                                                            //                 onTap:
                                                            //                     () {
                                                            //                   log("Tapped");
                                                            //                   setState(() {
                                                            //                     expandMenu = false;
                                                            //                     selectedQuantity = index;
                                                            //                   });
                                                            //                 },
                                                            //               ),
                                                            //             )),
                                                            //           )
                                                            //         : Container(),
                                                            //   ],
                                                            // )
                                                            const Icon(
                                                              Icons.expand_more,
                                                              color: Color
                                                                  .fromRGBO(
                                                                      155,
                                                                      155,
                                                                      155,
                                                                      1),
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 10,
                                        ),
                                        child: Text(
                                          "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
                                          style: GoogleFonts.inter(
                                            color: const Color.fromRGBO(
                                                192, 192, 192, 1),
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Choice of Cup Filling",
                                        style: GoogleFonts.inter(
                                          color: const Color.fromRGBO(
                                              205, 205, 205, 1),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 17),
                                        child: CupFillChoices(),
                                      ),
                                      Text(
                                        "Choice of Milk",
                                        style: GoogleFonts.inter(
                                          color: const Color.fromRGBO(
                                              205, 205, 205, 1),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      GridView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisSpacing: 10,
                                                childAspectRatio: 3,
                                                crossAxisCount: 2),
                                        itemCount: milkList.length,
                                        itemBuilder: (context, index) {
                                          return SwitchWithTag(
                                              label: milkList[index]);
                                        },
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        "Choice of Sugar",
                                        style: GoogleFonts.inter(
                                          color: const Color.fromRGBO(
                                              205, 205, 205, 1),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      GridView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisSpacing: 10,
                                                childAspectRatio: 3,
                                                crossAxisCount: 2),
                                        itemCount: sugarList.length,
                                        itemBuilder: (context, index) {
                                          return SwitchWithTag(
                                              label: sugarList[index]);
                                        },
                                      ),
                                      const SubmitSection()
                                    ],
                                  ),
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
            ),
          ),
        ),
      ),
    );
  }
}
