part of '_index.dart';

class ProfileListData {
  final rxTitle = 'Profile List'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxProfileList = _pv.rxProfileList;

  final rxSelectedId = _pv.rxSelectedId;
}
