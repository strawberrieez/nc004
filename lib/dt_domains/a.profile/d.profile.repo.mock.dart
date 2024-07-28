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
  
  @override
  Future<void> createDoc(Profile data) {
    throw UnimplementedError();
  }
  
  @override
  Future<void> deleteDoc(String id) {
    throw UnimplementedError();
  }
  
  @override
  Future<Profile?> getDoc() {
    throw UnimplementedError();
  }
}