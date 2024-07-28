part of '_index.dart';

class ProfileProv {
  final rxRandom = RM.inject<int>(
    () => 0,
    autoDisposeWhenNotUsed: false,
    sideEffects: SideEffects(
      onSetState: (p0) => _sv.onSetState(),
    ),
  );

  final rxProfileList = RM.injectFuture<List<Profile>>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => _sv.readColl(),
    ),
  );

  final rxPickedImage = RM.inject<XFile?>(() => null);

  final rximageUrl = RM.inject<String>(() => '');

  final rxSelectedId = RM.inject<String>(() => '');

  final rxProfileDetail = RM.injectFuture<Profile?>(
    () => Future.value(null),
    sideEffects: SideEffects(
      initState: () => _sv.readDoc(),
    ),
  );
}
