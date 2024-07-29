part of '_index.dart';

class AuthRepo {
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.s('random value coming from AuthRepo');
    return x;
  }

  Future<void> signInAnonimously() async {
    await FirebaseAuth.instance.signInAnonymously();
  }

  Future<void> signInByGoogle() async {
    final GoogleAuthProvider provider = GoogleAuthProvider().setCustomParameters({"prompt": "select_account"});
    await FirebaseAuth.instance.signInWithPopup(provider);
  }

  Future<void> createUserByEP({required email, required password}) async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
  }

  Future<void> signInByEP({required email, required password}) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
  }

  Future<void> deleteCurrentUser() async {
    await FirebaseAuth.instance.currentUser!.delete();
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
