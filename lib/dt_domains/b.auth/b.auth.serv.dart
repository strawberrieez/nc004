part of '_index.dart';

class AuthServ {
  void init() {
    logxx.i(AuthServ, '...');
    _pv.rxUser.subscription = FirebaseAuth.instance.authStateChanges().listen(
          (event) => _pv.rxUser.st = event,
        );
  }

  void updateRandom() {
    _pv.rxRandom.st = _rp.giveNewRandom();
  }

  void onSetState() {
    logzz.i(AuthServ, 'rxCounter setState success');
  }

  responseAuthStates(User? user) async {
    if (nav.routeData.location == '/login' || nav.routeData.location == '/register') {
      if (user != null) {
        nav.toReplacement(Routes.profileList);
      }
    } else {
      if (user == null) {
        nav.toAndRemoveUntil(Routes.login);
      }
    }
  }

  signInAnonimously() => _rp.signInAnonimously();
  signInByGoogle() => _rp.signInByGoogle();
  createUserByEP({required String email, required String password}) =>
      _rp.createUserByEP(email: email, password: password);
  signInByEP({required String email, required String password}) => _rp.signInByEP(email: email, password: password);
  deleteCurrentUser() => _rp.deleteCurrentUser();
  signOut() => _rp.signOut();
}
