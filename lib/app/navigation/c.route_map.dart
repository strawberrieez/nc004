part of '_index.dart';

class RouteMap {
  RouteMap._();

  static final data = {
    Routes.home: (RouteData data) => const HomeView(),
    Routes.sampleSatu: (RouteData data) => const SampleSatuView(),
    Routes.sampleDua: (RouteData data) => const SampleDuaView(),
    Routes.sampleTiga: (RouteData data) => const SampleTigaView(),
    Routes.profileList: (RouteData data) => const ProfileListView(),
    Routes.profileAdd: (RouteData data) => const ProfileAddView(),
    Routes.profileDetail: (RouteData data) => const ProfileDetailView(),
    Routes.profileEdit: (RouteData data) => const ProfileEditView(),
    Routes.login: (RouteData data) => const LoginView(),
    Routes.register: (RouteData data) => const RegisterView(),
  };
}
