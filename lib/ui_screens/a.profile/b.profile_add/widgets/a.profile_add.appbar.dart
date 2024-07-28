part of '../_index.dart';

class ProfileAddAppbar extends StatelessWidget {
  const ProfileAddAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
