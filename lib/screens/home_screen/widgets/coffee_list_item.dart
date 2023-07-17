import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swift_cafe/screens/coffee_details_screen/coffee_details_screen.dart';

class CoffeeListItem extends StatelessWidget {
  final String imgPath;
  final String name;
  final String description;
  const CoffeeListItem({
    super.key,
    required this.imgPath,
    required this.name,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CoffeeDetailsScreen(),
            ),
          );
        },
        child: PhysicalModel(
          borderRadius: BorderRadius.circular(10),
          color: Colors.transparent,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Container(
              color: const Color.fromRGBO(180, 180, 180, 0.33),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 12,
                  sigmaY: 12,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: GoogleFonts.inter(
                              color: const Color.fromRGBO(205, 205, 205, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12, bottom: 8),
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 3, right: 5),
                                  child: Text(
                                    "4.9",
                                    style: GoogleFonts.inter().copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                                Image.asset(
                                  "lib/res/media/images/icons/star.png",
                                  height: 10,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 3, right: 15),
                                  child: Text(
                                    "(458)",
                                    style: GoogleFonts.inter().copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                                Image.asset(
                                  "lib/res/media/images/icons/veg.png",
                                ),
                              ],
                            ),
                          ),
                          Container(
                            constraints: const BoxConstraints(maxWidth: 180),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    description,
                                    style: GoogleFonts.inter(
                                        fontSize: 10,
                                        color: const Color.fromRGBO(
                                            192, 192, 192, 1)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(7),
                            child: Image.asset(
                              imgPath,
                              height: 122,
                              width: 122,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: -10,
                            left: 30.5,
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(102, 163, 92, 1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 4,
                                  horizontal: 12,
                                ),
                                child: Text(
                                  "ADD",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
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
