part of '_index.dart';

class ProfileListView extends StatelessWidget {
  const ProfileListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProfileListAppbar(),
      ),
      floatingActionButton: ProfileListFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileListCharlie(),
            ProfileListDelta(),
            ProfileListEcho(),
          ],
        ),
      ),
    );
  }
}
