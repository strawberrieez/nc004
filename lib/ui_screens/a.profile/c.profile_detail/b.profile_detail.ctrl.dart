part of '_index.dart';

class ProfileDetailCtrl {
  init() => logxx.i(ProfileDetailCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
