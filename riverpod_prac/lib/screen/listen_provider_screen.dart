import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_prac/layout/default_layout.dart';
import 'package:riverpod_prac/riverpod/family_modifier_provider.dart';
import 'package:riverpod_prac/riverpod/listen_provider.dart';

class ListenProviderScreen extends ConsumerStatefulWidget {
  const ListenProviderScreen({super.key});

  @override
  ConsumerState<ListenProviderScreen> createState() =>
      _ListenProviderScreenState();
}

class _ListenProviderScreenState extends ConsumerState<ListenProviderScreen>
    with TickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    super.initState();

    controller = TabController(
        length: 10,
        vsync: this,
        //initState()에서는 watch 사용하면 안됨 => initState자체가 단발적이니까
        //뒤로갔다가 다시왔을때 초기값이 0이 아니라 나가기 전의 state로 보여줄라면 이렇게 설정
        initialIndex: ref.read(listenProvider));
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<int>(listenProvider, (prev, next) {
      //print(prev);
      if (prev != next) {
        controller.animateTo(next);
      }
    });
    return DefaultLayout(
        title: 'ListenProviderScreen',
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: List.generate(
              10,
              (index) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(index.toString()),
                      ElevatedButton(
                          onPressed: () {
                            ref
                                .read(listenProvider.notifier)
                                .update((state) => state == 0 ? 0 : state - 1);
                          },
                          child: Text('< Prev')),
                      ElevatedButton(
                          onPressed: () {
                            ref.read(listenProvider.notifier).update(
                                (state) => state == 10 ? 10 : state + 1);
                          },
                          child: Text('Next >'))
                    ],
                  )),
        ));
  }
}
