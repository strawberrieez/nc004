part of '_index.dart';

abstract class Prov {
  static Injected<SampleProv> get sample => _sampleProv;
  static Injected<ProfileProv> get profile => _profileProv;
}

final _sampleProv = RM2.inj(SampleProv());

final _profileProv = RM2.inj(ProfileProv());
