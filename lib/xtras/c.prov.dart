part of '_index.dart';

abstract class Prov {
  static Injected<SampleProv> get sample => _sampleProv;
  static Injected<ProfileProv> get profile => _profileProv;
  static Injected<AuthProv> get auth => _authProv;
}

final _sampleProv = RM2.inj(SampleProv());

final _profileProv = RM2.inj(ProfileProv());

final _authProv = RM2.inj(AuthProv());
