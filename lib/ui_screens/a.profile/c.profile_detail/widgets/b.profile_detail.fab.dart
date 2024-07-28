part of '../_index.dart';

class ProfileDetailFab extends StatelessWidget {
  const ProfileDetailFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        nav.to(Routes.profileEdit);
      },
    );
  }
}
