import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:swift_cafe/providers/fill_cup_state_provider.dart';

class CupFillChoices extends StatelessWidget {
  const CupFillChoices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cupFillChoices = ["Full", "1/2 Full", "3/4 Full", "1/4 Full"];
    return Consumer(
      builder: (_, WidgetRef ref, __) {
        final selectedIndex = ref.watch(fillCupStateNotifier);
        return Row(
            children: cupFillChoices
                .asMap()
                .entries
                .map(
                  (choice) => Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          color: selectedIndex == choice.key
                              ? const Color.fromRGBO(55, 173, 84, 1)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          child: Text(
                            choice.value,
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              color: selectedIndex == choice.key
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        ref
                            .read(fillCupStateNotifier.notifier)
                            .change(choice.key);
                      },
                    ),
                  ),
                )
                .toList());
      },
    );
  }
}
