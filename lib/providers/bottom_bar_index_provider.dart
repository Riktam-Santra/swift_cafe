import 'package:hooks_riverpod/hooks_riverpod.dart';

class BottomBarIndexNotifier extends StateNotifier<int> {
  BottomBarIndexNotifier() : super(0);

  void changeIndex(int newIndex) {
    state = newIndex;
  }
}

final bottomBarIndexProvider =
    StateNotifierProvider<BottomBarIndexNotifier, int>((ref) {
  return BottomBarIndexNotifier();
});
