part of '_index.dart';

class ProfileListView extends StatelessWidget {
  const ProfileListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: ProfileListAppbar(),
        ),
        floatingActionButton: const ProfileListFab(),
        body: OnBuilder<List<Profile>>.all(
          listenTo: _dt.rxProfileList,
          onWaiting: () => const Center(
            child: CircularProgressIndicator(),
          ),
          onError: (error, refreshError) => const Text('error'),
          onData: (data) => OnReactive(
            () => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    data.length,
                    (index) => Card(
                      color: Colors.blueGrey,
                      child: ListTile(
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {
                                _ct.deleteDoc(data[index].id);
                              },
                              icon: const Icon(Icons.delete),
                            ),
                            IconButton(
                              onPressed: () {
                                _ct.updateDoc(id: data[index].id, createdAt: data[index].createdAt);
                              },
                              icon: const Icon(Icons.update),
                            ),
                          ],
                        ),
                        title: Text(data[index].name),
                        subtitle: Text(data[index].breeds),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _ct.createDoc();
                    },
                    child: const Text(
                      "create doc",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
