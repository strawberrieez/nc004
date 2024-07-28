part of '_index.dart';

class ProfileProv {
  final rxRandom = RM.inject<int>(
    () => 0,
    autoDisposeWhenNotUsed: false,
    sideEffects: SideEffects(
      onSetState: (p0) => _sv.onSetState(),
    ),
  );

  final rxProfileList = RM.injectFuture<List<Profile>>(() => Future.value([]),
      sideEffects: SideEffects(
        initState: () => _sv.readColl(),
      ));
}
