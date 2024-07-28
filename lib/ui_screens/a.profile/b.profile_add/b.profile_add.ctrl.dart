part of '_index.dart';

class ProfileAddCtrl {
  init() => logxx.i(ProfileAddCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  submit() => _dt.rxForm.submit();

  createDoc() {
    final data = Profile(
      id: UniqueKey().toString(),
      createdAt: DateTime.now().toString(),
      name: _dt.rxName.value,
      age: int.parse(_dt.rxAge.value),
      gender: _dt.rxGender.value,
      breeds: _dt.rxBreeds.value,
    );
    _sv.createDoc(data);
  }
}
