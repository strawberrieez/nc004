part of '_index.dart';

class ProfileAddView extends StatelessWidget {
  const ProfileAddView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProfileAddAppbar(),
      ),
      floatingActionButton: ProfileAddFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileAddCharlie(),
            ProfileAddDelta(),
            ProfileAddEcho(),
          ],
        ),
      ),
    );
  }
}
