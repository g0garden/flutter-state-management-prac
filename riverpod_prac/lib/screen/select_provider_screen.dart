import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_prac/layout/default_layout.dart';
import 'package:riverpod_prac/riverpod/select_provider.dart';

class SelectProviderScreen extends ConsumerWidget {
  const SelectProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(selectProvider);
    //근데 spicy값만 변경되면 되는데 지금 이 위젯 전체가 다 빌드되는디...특정값만 select해
    final isSpicy = ref.watch(selectProvider.select((value) => value.isSpicy));
    //업데이트 많은 값은 listen으로 처리해서 불필요한 전체 렌더링은 피하자
    ref.listen(selectProvider.select((value) => value.hasBought), (prev, next) {
      //print('next $next');
      //hasBought만 listen하겠지
    });

    return DefaultLayout(
        title: 'SelectProviderScreen',
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(state.name),
              Text(state.isSpicy.toString()),
              Text(state.hasBought.toString()),
              ElevatedButton(
                  onPressed: () {
                    ref.read(selectProvider.notifier).toggleIsSpicy();
                  },
                  child: const Text('Spicy Toggle')),
              ElevatedButton(
                  onPressed: () {
                    ref.read(selectProvider.notifier).toggleHasBought();
                  },
                  child: const Text('Toggle Bought'))
            ],
          ),
        ));
  }
}
