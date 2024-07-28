part of '_index.dart';

class ProfileEditView extends StatelessWidget {
  const ProfileEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProfileEditAppbar(),
      ),
      floatingActionButton: ProfileEditFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileEditCharlie(),
            ProfileEditDelta(),
            ProfileEditEcho(),
          ],
        ),
      ),
    );
  }
}
