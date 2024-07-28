part of '_index.dart';

class ProfileAddCtrl {
  init() => logxx.i(ProfileAddCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
