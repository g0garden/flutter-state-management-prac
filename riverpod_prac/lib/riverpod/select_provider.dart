import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_prac/model/shopping_item_model.dart';

final selectProvider = StateNotifierProvider<SelectNotifier, ShoppingItemModel>(
    (ref) => SelectNotifier());

class SelectNotifier extends StateNotifier<ShoppingItemModel> {
  SelectNotifier()
      : super(
          ShoppingItemModel(
              name: '김치', quantity: 2, hasBought: true, isSpicy: false),
        );

  toggleHasBought() {
    state = state.copyWith(hasBought: !state.hasBought);
  }

  toggleIsSpicy() {
    state = state.copyWith(isSpicy: !state.isSpicy);
  }
}
