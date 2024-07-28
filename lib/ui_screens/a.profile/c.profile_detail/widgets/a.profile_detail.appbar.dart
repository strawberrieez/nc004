part of '../_index.dart';

class ProfileDetailAppbar extends StatelessWidget {
  const ProfileDetailAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
