import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_prac/layout/default_layout.dart';
import 'package:riverpod_prac/riverpod/auto_dispose_modifier_provider.dart';

class AutoDisposeModifierScreen extends ConsumerWidget {
  const AutoDisposeModifierScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //autoDispose 자동캐시삭제 후 다시 실행할게
    final state = ref.watch(autoDisposeModifierProvider);

    return DefaultLayout(
        title: 'AutoDisposeModifierScreen',
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
