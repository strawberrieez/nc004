part of '_index.dart';

abstract class Data {
  static Injected<HomeData> get home => _homeData;
  static Injected<SampleSatuData> get sampleSatu => _sampleSatuData;
  static Injected<SampleDuaData> get sampleDua => _sampleDuaData;
  static Injected<SampleTigaData> get sampleTiga => _sampleTigaData;
  static Injected<ProfileListData> get profileList => _profileListData;
  static Injected<ProfileAddData> get profileAdd => _profileAddData;
  static Injected<ProfileDetailData> get profileDetail => _profileDetailData;
  static Injected<ProfileEditData> get profileEdit => _profileEditData;
  static Injected<LoginData> get login => _loginData;
  static Injected<RegisterData> get register => _registerData;
}

final _homeData = RM1.inj(HomeData(), Ctrl.home.init);

final _sampleSatuData = RM1.inj(SampleSatuData(), Ctrl.sampleSatu.init);
final _sampleDuaData = RM1.inj(SampleDuaData(), Ctrl.sampleDua.init);
final _sampleTigaData = RM1.inj(SampleTigaData(), Ctrl.sampleTiga.init);

final _profileListData = RM1.inj(ProfileListData(), Ctrl.profileList.init);
final _profileAddData = RM1.inj(ProfileAddData(), Ctrl.profileAdd.init);
final _profileDetailData = RM1.inj(ProfileDetailData(), Ctrl.profileDetail.init);
final _profileEditData = RM1.inj(ProfileEditData(), Ctrl.profileEdit.init);

final _loginData = RM1.inj(LoginData(), Ctrl.login.init);
final _registerData = RM1.inj(RegisterData(), Ctrl.register.init);
