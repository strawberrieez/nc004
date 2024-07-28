part of '_index.dart';

class ProfileEditCtrl {
  init() => logxx.i(ProfileEditCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  submit() => _dt.rxForm.submit();

  updateDoc() async {
    String imageUrl = _dt.rxProfileDetail.st!.imageUrl;
    if (_dt.rxPickedImage.st != null) {
      imageUrl = await _sv.getImageUrl(_dt.rxProfileDetail.st!.id);
    }
    final data = Profile(
      id: _dt.rxProfileDetail.st!.id,
      createdAt: _dt.rxProfileDetail.st!.createdAt,
      name: _dt.rxName.st.value,
      age: int.parse(_dt.rxAge.st.value),
      gender: _dt.rxGender.st.value,
      breeds: _dt.rxBreeds.st.value,
      imageUrl: imageUrl,
    );
    _sv.updateDoc(data);
  }
}
