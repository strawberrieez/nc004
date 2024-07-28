part of '_index.dart';

class ProfileDetailView extends StatelessWidget {
  const ProfileDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProfileDetailAppbar(),
      ),
      floatingActionButton: ProfileDetailFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileDetailCharlie(),
            ProfileDetailDelta(),
            ProfileDetailEcho(),
          ],
        ),
      ),
    );
  }
}
