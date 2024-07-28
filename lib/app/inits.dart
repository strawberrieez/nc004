part of '_index.dart';

Future<void> inits() async {
  logx.wtf('inits start');

  // await RM.storageInitializer(StoreHive());

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  Serv.sample.init();
  Serv.profile.init();

  logx.wtf('inits success');
}
