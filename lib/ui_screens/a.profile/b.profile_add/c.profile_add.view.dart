part of '_index.dart';

class ProfileAddView extends StatelessWidget {
  const ProfileAddView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: ProfileAddAppbar(),
        ),
        floatingActionButton: const ProfileAddFab(),
        body: OnFormBuilder(
          listenTo: _dt.rxForm,
          builder: () => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _dt.rxPickedImage.st == null
                    ? const SizedBox.shrink()
                    : SizedBox(
                        height: 150,
                        width: 150,
                        child: Image.network(_dt.rxPickedImage.st!.path),
                      ),
                ElevatedButton(
                  onPressed: () async {
                    _dt.rxPickedImage.st = await ImagePicker().pickImage(source: ImageSource.gallery);
                    debugPrint(_dt.rxPickedImage.st?.path.toString());
                  },
                  child: const Text(
                    "pick image from gallery",
                  ),
                ),
                const AddName(),
                const SizedBox(height: 15),
                const AddAge(),
                const SizedBox(height: 15),
                const AddGender(),
                const SizedBox(height: 15),
                const AddBreeds(),
                const SizedBox(height: 15),
                const AddSubmit(),
              ],
            ),
          ),
        ));
  }
}
