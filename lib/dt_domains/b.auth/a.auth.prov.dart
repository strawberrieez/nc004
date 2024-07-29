part of '_index.dart';

class AuthProv {
  final rxRandom = RM.inject<int>(
    () => 0,
    autoDisposeWhenNotUsed: false,
    sideEffects: SideEffects(
      onSetState: (p0) => _sv.onSetState(),
    ),
  );

  final rxUser = RM.injectStream<User?>(
      () {
        return Stream.value(null);
      },
      autoDisposeWhenNotUsed: false,
      sideEffects: SideEffects.onData(
        (data) async {
          await _sv.responseAuthStates(data);
        },
      ));
}
