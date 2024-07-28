part of '_index.dart';

class ProfileServ {
  void init() {
    logxx.i(ProfileServ, '...');
  }

  void updateRandom() {
    _pv.rxRandom.st = _rp.giveNewRandom();
  }

  void onSetState() {
    logzz.i(ProfileServ, 'rxCounter setState success');
  }

  readColl() => _pv.rxProfileList.stateAsync = _rp.getColl();
}
