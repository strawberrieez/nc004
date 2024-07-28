part of '_index.dart';

abstract class Repo {
  static Injected<SampleRepo> get sample => _sampleRepo;
  static Injected<ProfileRepo> get profile => _profileRepo;
}

final _sampleRepo = RM3.inj(SampleRepo());

final _profileRepo = RM3.inj(ProfileRepo());
