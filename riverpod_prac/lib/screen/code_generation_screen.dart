import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_prac/layout/default_layout.dart';
import 'package:riverpod_prac/riverpod/code_generation_provider.dart';

class CodeGenerationScreen extends ConsumerWidget {
  const CodeGenerationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('build');
    final state1 = ref.watch(gStateProvider);
    final state2 = ref.watch(gStateFutureProvider);
    final state3 = ref.watch(gStateFuture2Provider);
    final state4 = ref.watch(gStateMultiplyProvider(num1: 2, num2: 10));

    return DefaultLayout(
        title: 'CodeGenerationScreen',
        body: Column(
          children: [
            Text('State1 : $state1'),
            Text('State2 : $state2'),
            Text('State3 keepAlive true $state3'),
            Text('State4 family~ $state4'),
            //_StateFiveWidget(),
            //state5가 변경되면 이 Consumer만 변경!
            Consumer(
              builder: (context, ref, child) {
                final state5 = ref.watch(gStateNotifierProvider);
                return Row(children: [
                  Text('State5 : $state5'),
                  if (child != null)
                    child, // 이 child는 Consumer의 child, 굳이 재빌드 되지 않아도 되면 이렇게 또 분리해서 작성하면댐
                ]);
              },
              child: const Text('hello~'),
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      ref.read(gStateNotifierProvider.notifier).increment();
                    },
                    child: Text('increment')),
                ElevatedButton(
                    onPressed: () {
                      ref.read(gStateNotifierProvider.notifier).decrement();
                    },
                    child: Text('decrement'))
              ],
            ),
            //inValidate() state를 유효하지 않게 해서 초기값으로 되돌리는것
            ElevatedButton(
                onPressed: () {
                  ref.invalidate(gStateNotifierProvider);
                },
                child: Text('invalidate~'))
          ],
        ));
  }
}

class _StateFiveWidget extends ConsumerWidget {
  const _StateFiveWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state5 = ref.watch(gStateNotifierProvider);
    return Text('State5 stateNorifier~ $state5');
  }
}
