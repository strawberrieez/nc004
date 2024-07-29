part of '_index.dart';

class AuthRepoMock implements AuthRepo {
  @override
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.wtf('random value coming from AuthRepoMock');
    return x;
  }

  @override
  Future<void> signInAnonimously() {
    throw UnimplementedError();
  }

  @override
  Future<void> signInByGoogle() {
    throw UnimplementedError();
  }

  @override
  Future<void> createUserByEP({required email, required password}) {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteCurrentUser() {
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    throw UnimplementedError();
  }
  
  @override
  Future<void> signInByEP({required email, required password}) {
    throw UnimplementedError();
  }
}
