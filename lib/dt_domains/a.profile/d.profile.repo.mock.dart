part of '_index.dart';

class ProfileRepoMock implements ProfileRepo {
  @override
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.wtf('random value coming from ProfileRepoMock');
    return x;
  }
  
  @override
  Future<List<Profile>> getColl() {
    throw UnimplementedError();
  }
}