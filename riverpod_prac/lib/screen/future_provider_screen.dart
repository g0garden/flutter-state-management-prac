import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_prac/layout/default_layout.dart';
import 'package:riverpod_prac/riverpod/future_provider.dart';

class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //이 state는 AsyncValue임 => 그니까 .when의 각각의 상태에 맞게 함수 실행할수있음
    final state = ref.watch(multiplesFutureProvider);

    return DefaultLayout(
        title: 'FutureProviderScreen',
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            state.when(
                data: (data) {
                  return Text(
                    data.toString(),
                    textAlign: TextAlign.center,
                  );
                },
                error: ((error, stackTrace) => Text(
                      error.toString(),
                    )),
                loading: () => const Center(child: CircularProgressIndicator()))
          ],
        ));
  }
}
