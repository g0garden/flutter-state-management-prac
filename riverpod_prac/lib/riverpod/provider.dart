import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_prac/model/shopping_item_model.dart';
import 'package:riverpod_prac/riverpod/state_notifier_provider.dart';

//provider 안에 provider 사용하기!!
final filteredShoppingListProvider = Provider<List<ShoppingItemModel>>((ref) {
  final filterState = ref.watch(filterProvider);
  final shoppingListState = ref.watch(shoppingListProvider);

  if (filterState == FilterState.all) {
    return shoppingListState;
  }

  return shoppingListState
      .where((ele) =>
          filterState == FilterState.spicy ? ele.isSpicy : !ele.isSpicy)
      .toList();

  //return [];
});

enum FilterState {
  notSpicy,
  spicy,
  all,
}

final filterProvider = StateProvider<FilterState>((ref) => FilterState.all);
