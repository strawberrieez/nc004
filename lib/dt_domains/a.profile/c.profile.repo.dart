part of '_index.dart';

class ProfileRepo {
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.s('random value coming from ProfileRepo');
    return x;
  }

  Future<List<Profile>> getColl() async {
    List<Profile> profile = [];
    final list = await FirebaseFirestore.instance.collection('nc004').get();
    for (var element in list.docs) {
      profile.add(Profile.fromMap(element.data()));
    }
    debugPrint(list.toString());
    return profile;
  }
}
