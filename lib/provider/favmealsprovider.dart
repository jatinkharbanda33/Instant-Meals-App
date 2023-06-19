import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/meal.dart';

class FavMealsNotifier extends StateNotifier<List<Meal>> {
  FavMealsNotifier() : super([]);
  void togglefavmeal(Meal jk) {
    final isPresent = state.contains(jk);
    if (isPresent) {
      state = state.where((x) {
        return x.id != jk.id;
      }).toList();
    } else {
      state = [...state, jk];
    }
  }
}

final favmealslist = StateNotifierProvider<FavMealsNotifier, List<Meal>>((ref) {
  return FavMealsNotifier();
});
