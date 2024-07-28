part of '_index.dart';

class ProfileDetailView extends StatelessWidget {
  const ProfileDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: ProfileDetailAppbar(),
        ),
        floatingActionButton: const ProfileDetailFab(),
        body: OnBuilder.all(
          listenTo: _dt.rxProfileDetail,
          onWaiting: () => const Center(
            child: CircularProgressIndicator(),
          ),
          onError: (error, refreshError) => const Text('error'),
          onData: (data) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                data!.imageUrl.isEmpty
                    ? const Icon(Icons.person)
                    : SizedBox(
                        height: 150,
                        width: 150,
                        child: Image.network(data.imageUrl),
                      ),
                Text('name: ${data.name}'),
                Text('age: ${data.age.toString()}'),
                Text('gender: ${data.gender}'),
                Text('breeds: ${data.breeds}'),
              ],
            ),
          ),
        ));
  }
}
