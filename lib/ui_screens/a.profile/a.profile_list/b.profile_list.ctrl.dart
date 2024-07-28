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

  deleteDoc(String id) => _sv.deleteDoc(id);

  updateDoc({required id, required createdAt}) {
    final data = Profile(
      id: id,
      createdAt: createdAt,
      name: 'bobby',
      age: 52,
      gender: 'male',
      breeds: 'british short hair',
    );
    _sv.updateDoc(data);
  }


}
