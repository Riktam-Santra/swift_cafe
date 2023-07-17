import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_switch.dart';

class SwitchWithTag extends StatefulWidget {
  final String label;
  const SwitchWithTag({super.key, required this.label});

  @override
  State<SwitchWithTag> createState() => _SwitchWithTagState();
}

class _SwitchWithTagState extends State<SwitchWithTag> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: CustomSwitch(
            value: value,
            onChanged: (newValue) {
              setState(() {
                value = newValue;
              });
            },
            activeColor: Colors.black,
          ),
        ),
        Expanded(
          child: Text(
            widget.label,
            style: GoogleFonts.inter(
              fontSize: 16,
              color: const Color.fromRGBO(205, 205, 205, 1),
            ),
          ),
        )
      ],
    );
  }
}
