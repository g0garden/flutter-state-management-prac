import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_prac/layout/default_layout.dart';
import 'package:riverpod_prac/riverpod/provider.dart';
import 'package:riverpod_prac/riverpod/state_notifier_provider.dart';

//provider 안에 provider 사용하기
class ProviderScreen extends ConsumerWidget {
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(filteredShoppingListProvider);
    return DefaultLayout(
        title: 'Provider Screen',
        actoins: [
          PopupMenuButton<FilterState>(
            itemBuilder: (_) => FilterState.values
                .map(
                  (e) => PopupMenuItem(
                    value: e,
                    child: Text(e.name),
                  ),
                )
                .toList(),
            onSelected: (val) {
              ref.read(filterProvider.notifier).update((state) => val);
            },
          )
        ],
        body: ListView(
          children: state
              .map(
                (e) => CheckboxListTile(
                    title: Text(e.name),
                    value: e.hasBought,
                    onChanged: (val) {
                      ref
                          .read(shoppingListProvider.notifier)
                          .toggleHasBought(name: e.name);
                    }),
              )
              .toList(),
        ));
  }
}
