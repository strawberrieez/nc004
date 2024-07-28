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

  createDoc(Profile data) {
    _pv.rxProfileList.st = [..._pv.rxProfileList.st]..insert(0, data);
    return _rp.createDoc(data);
  }

  deleteDoc(String id) {
    _pv.rxProfileList.st = [..._pv.rxProfileList.st]..removeWhere((element) => element.id == id);
    return _rp.deleteDoc(id);
  }

  updateDoc(Profile data) {
    _rp.createDoc(data);
    _pv.rxProfileList.setState(
      (s) {
        final index = _pv.rxProfileList.st.indexWhere((element) => element.id == data.id);
        return s[index] = data;
      },
    );
  }

  Future<String> getImageUrl(String id) async {
    final uin8List = await _pv.rxPickedImage.st?.readAsBytes();
    final contentType = _pv.rxPickedImage.st?.mimeType;
    final url = await FirebaseStorage.instance.ref(id).putData(uin8List!, SettableMetadata(contentType: contentType));
    _pv.rximageUrl.st = await url.ref.getDownloadURL();
    debugPrint(_pv.rximageUrl.st);
    return _pv.rximageUrl.st;
  }
}
