part of '../_index.dart';

class ProfileEditAppbar extends StatelessWidget {
  const ProfileEditAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
