import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_prac/model/shopping_item_model.dart';

//2. provider로 만들어야 위젯에서쓰니까
// <State 관리하는 notifier 뭔지, 어떤 state를 관리하는지> 넘겨주기

final shoppingListProvider =
    StateNotifierProvider<ShoppingListNotifier, List<ShoppingItemModel>>(
  (ref) => ShoppingListNotifier(),
);

//1. notifier 만들기
class ShoppingListNotifier extends StateNotifier<List<ShoppingItemModel>> {
  //생성자
  ShoppingListNotifier()
      : super([
          //초기값
          ShoppingItemModel(
              name: '김치', quantity: 2, hasBought: true, isSpicy: false),
          ShoppingItemModel(
              name: '삼겹살', quantity: 20, hasBought: false, isSpicy: true),
          ShoppingItemModel(
              name: '밥', quantity: 5, hasBought: false, isSpicy: false),
          ShoppingItemModel(
              name: '수박', quantity: 22, hasBought: true, isSpicy: false),
          ShoppingItemModel(
              name: '물', quantity: 3, hasBought: false, isSpicy: true),
          ShoppingItemModel(
              name: '고추장', quantity: 7, hasBought: false, isSpicy: false),
        ]);

  void toggleHasBought({required String name}) {
    state = state
        .map((e) => e.name == name
            ? ShoppingItemModel(
                name: e.name,
                quantity: e.quantity,
                hasBought: !e.hasBought,
                isSpicy: e.isSpicy)
            : e)
        .toList();
  }
}
