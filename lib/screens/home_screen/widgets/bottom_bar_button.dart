import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../providers/bottom_bar_index_provider.dart';

class BottomBarButton extends StatelessWidget {
  final String iconPath;
  final int index;
  const BottomBarButton({
    super.key,
    required this.iconPath,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, WidgetRef ref, __) {
        final currentIndex = ref.watch(bottomBarIndexProvider);
        return GestureDetector(
          onTap: () {
            ref.read(bottomBarIndexProvider.notifier).changeIndex(index);
          },
          child: Container(
            decoration: BoxDecoration(
              border: (index == currentIndex)
                  ? Border.all(
                      color: const Color.fromRGBO(
                        94,
                        94,
                        94,
                        1,
                      ),
                    )
                  : null,
              shape: BoxShape.circle,
              color: (index == currentIndex)
                  ? const Color.fromRGBO(45, 45, 45, 1)
                  : Colors.transparent,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Image.asset(
                iconPath,
                height: 18,
              ),
            ),
          ),
        );
      },
    );
  }
}
