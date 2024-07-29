part of '_index.dart';

abstract class Serv {
  static SampleServ get sample => SampleServ();
  static ProfileServ get profile => ProfileServ();
  static AuthServ get auth => AuthServ();
}
