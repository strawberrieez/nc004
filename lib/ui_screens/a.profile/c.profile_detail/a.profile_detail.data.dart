part of '_index.dart';

class ProfileDetailData {
  final rxTitle = 'Profile Detail'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxProfileDetail = _pv.rxProfileDetail;

}
