import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_prac/layout/default_layout.dart';
import 'package:riverpod_prac/riverpod/family_modifier_provider.dart';

class FamilyModifierScreen extends ConsumerWidget {
  const FamilyModifierScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //provider를 생성하는 순간에 어떤 변수(여기서는 3)를 입력받아서 로직변경해야할때 쓴다
    final state = ref.watch(familyModifierProvider(3));

    return DefaultLayout(
        title: 'FamilyModifierScreen',
        body: Center(
          child: state.when(
              data: (data) => Text(data.toString()),
              error: ((error, stackTrace) => Text(
                    error.toString(),
                  )),
              loading: () => CircularProgressIndicator()),
        ));
  }
}
