part of '_index.dart';

final nav = NavigationBuilder.create(
  initialLocation: Prov.auth.st.rxUser.st == null ? Routes.login : Routes.profileList,
  routes: RouteMap.data,
);
