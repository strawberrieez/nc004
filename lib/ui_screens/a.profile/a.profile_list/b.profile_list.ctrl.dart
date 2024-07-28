part of '_index.dart';

class ProfileListCtrl {
  init() => logxx.i(ProfileListCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
