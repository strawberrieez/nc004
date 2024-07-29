part of '_index.dart';

class LoginCtrl {
  init() => logxx.i(LoginCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  submit() => _dt.rxForm.submit();

  signInByEP() async {
    await _svAuth.signInByEP(
      email: _dt.rxEmail.value,
      password: _dt.rxPassword.value,
    );
  }

  signInAnonimously() {
    _svAuth.signInAnonimously();
  }

  signInByGoogle() {
    _svAuth.signInByGoogle();
  }
}
