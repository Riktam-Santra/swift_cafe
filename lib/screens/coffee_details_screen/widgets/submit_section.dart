import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubmitSection extends StatelessWidget {
  const SubmitSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      elevation: 5,
      borderRadius: BorderRadius.circular(15),
      color: const Color.fromRGBO(51, 51, 51, 1),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromRGBO(51, 51, 51, 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Row(
            children: [
              Checkbox(
                  fillColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.disabled)) {
                      return Colors.transparent;
                    }
                    return Colors.teal;
                  }),
                  side: const BorderSide(color: Colors.white),
                  checkColor: Colors.white,
                  value: true,
                  onChanged: (value) => {}),
              Text(
                "High Priority",
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: const Color.fromRGBO(205, 205, 205, 1),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 2.5),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: SizedBox(
                    height: 18,
                    child: Image.asset("lib/res/media/images/icons/error.png"),
                  ),
                ),
              ),
              const Spacer(),
              PhysicalModel(
                borderRadius: BorderRadius.circular(7.5),
                color: const Color.fromRGBO(51, 51, 51, 1),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.5),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(31, 110, 51, 1),
                          Color.fromRGBO(53, 155, 77, 1),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 13, horizontal: 20),
                      child: Text(
                        "Submit",
                        style: GoogleFonts.inter(
                            color: const Color.fromRGBO(205, 205, 205, 1),
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
