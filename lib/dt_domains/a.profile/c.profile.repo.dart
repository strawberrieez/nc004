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

  Future<void> createDoc(Profile data) async {
    await FirebaseFirestore.instance.collection('nc004').doc(data.id).set(data.toMap());
  }

  Future<void> deleteDoc(String id) async {
    await FirebaseFirestore.instance.collection('nc004').doc(id).delete();
  }
}
