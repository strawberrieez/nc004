part of '../_index.dart';

class ProfileListFab extends StatelessWidget {
  const ProfileListFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        nav.to(Routes.profileAdd);
      },
    );
  }
}
