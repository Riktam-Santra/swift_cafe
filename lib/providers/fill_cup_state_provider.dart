import 'package:hooks_riverpod/hooks_riverpod.dart';

class FillCupStateNotifier extends StateNotifier<int> {
  FillCupStateNotifier() : super(0);

  void change(int newState) {
    state = newState;
  }
}

final fillCupStateNotifier =
    StateNotifierProvider<FillCupStateNotifier, int>((ref) {
  return FillCupStateNotifier();
});
