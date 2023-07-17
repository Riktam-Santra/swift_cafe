import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewDetails extends StatelessWidget {
  const ReviewDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 3, right: 5),
          child: Text(
            "4.9",
            style: GoogleFonts.inter()
                .copyWith(fontSize: 12, fontWeight: FontWeight.w300),
          ),
        ),
        Image.asset(
          "lib/res/media/images/icons/star.png",
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 3, right: 5),
          child: Text(
            "(458)",
            style: GoogleFonts.inter().copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    );
  }
}
