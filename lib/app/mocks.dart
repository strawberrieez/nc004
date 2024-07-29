part of '_index.dart';

class Mocks {
  static final Mocks instance = Mocks._privateConstructor();

  Mocks._privateConstructor();

  Future<void> init() async {
    injectMocks();
  }

  injectMocks() {
    Repo.sample.injectMock(() => SampleRepoMock());
    Repo.profile.injectMock(() => ProfileRepoMock());
    Repo.auth.injectMock(() => AuthRepoMock());
  }
}
