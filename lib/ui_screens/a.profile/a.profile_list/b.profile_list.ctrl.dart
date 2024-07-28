part of '_index.dart';

class ProfileListCtrl {
  init() => logxx.i(ProfileListCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  readColl() => _sv.readColl();

  createDoc() {
    final data = Profile(
      id: UniqueKey().toString(),
      createdAt: DateTime.now().toString(),
      name: 'moli',
      age: 9,
      gender: 'female',
      breeds: 'persian',
    );
    _sv.createDoc(data);
  }
}
