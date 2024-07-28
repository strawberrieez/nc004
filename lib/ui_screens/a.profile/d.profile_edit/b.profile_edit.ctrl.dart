part of '_index.dart';

class ProfileEditCtrl {
  init() => logxx.i(ProfileEditCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
