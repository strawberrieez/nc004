part of '../_index.dart';

class ProfileListAppbar extends StatelessWidget {
  const ProfileListAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                _ct.deleteCurrentUser();
              },
              icon: const Icon(Icons.delete_forever),
            ),
            IconButton(
              onPressed: () {
                _ct.signOut();
              },
              icon: const Icon(Icons.logout),
            ),
          ],
        ),
      ],
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
