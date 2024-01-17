import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'code_generation_provider.g.dart';

//1) 어떤 Provider 사용할지 결정할 고민 필요 없도록. provider도 코드제너레이션으로 만들수있다~
//Provider, FutureProvider, StreamProvider(x)
//StateNotifierProvider
//1-1
final _testProvider = Provider<String>((ref) => 'HELLO Code Generation!');
//1-2
@riverpod
String gState(GStateRef ref) {
  return 'HELLO Code Generation!';
}

@riverpod
Future<int> gStateFuture(GStateFutureRef ref) async {
  await Future.delayed(Duration(seconds: 3));
  return 10;
}

//근데 코드제너레이션에서 만들어준데로 쓰고 싶지 않으면?
@Riverpod(
    //우리가 만든데로 둬라
    keepAlive: true)
Future<int> gStateFuture2(GStateFuture2Ref ref) async {
  await Future.delayed(Duration(seconds: 3));
  return 10;
}

//2) Parameter > Family의 data 파라미터 타입 1개 밖에 안됐는데, 일반 함수처럼 사용할 수 있도록 개선댐
//2-1 : 기존에는 클래스만들어서 여러개 파람 썼는데
class Parameter {
  final int num1;
  final int num2;

  Parameter({required this.num1, required this.num2});
}

final _testFamilyProvider = Provider.family<int, Parameter>(
    (ref, parameter) => parameter.num1 * parameter.num2);

//2-2 : 걍 함수처럼 쓰면되네!!
@riverpod
int gStateMultiply(GStateMultiplyRef ref,
    {required int num1, required int num2}) {
  return num1 * num2;
}

@riverpod
class GStateNotifier extends _$GStateNotifier {
  //꼭 build함수 안에 초기값 설정해줘야함
  @override
  int build() {
    return 0;
  }

  increment() {
    state++;
  }

  decrement() {
    state--;
  }
}
