part of '_index.dart';

abstract class Ctrl {
  static HomeCtrl get home => HomeCtrl();
  static SampleSatuCtrl get sampleSatu => SampleSatuCtrl();
  static SampleDuaCtrl get sampleDua => SampleDuaCtrl();
  static SampleTigaCtrl get sampleTiga => SampleTigaCtrl();
  static ProfileListCtrl get profileList => ProfileListCtrl();
  static ProfileAddCtrl get profileAdd => ProfileAddCtrl();
  static ProfileDetailCtrl get profileDetail => ProfileDetailCtrl();
  static ProfileEditCtrl get profileEdit => ProfileEditCtrl();
  static LoginCtrl get login => LoginCtrl();
  static RegisterCtrl get register => RegisterCtrl();
}
