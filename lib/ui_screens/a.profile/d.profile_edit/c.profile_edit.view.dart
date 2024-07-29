part of '_index.dart';

class ProfileEditView extends StatelessWidget {
  const ProfileEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProfileEditAppbar(),
      ),
      body: OnFormBuilder(
        listenTo: _dt.rxForm,
        builder: () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _dt.rxPickedImage.st == null
                  ? SizedBox(
                      height: 150,
                      width: 150,
                      child: Image.network(_dt.rxProfileDetail.st!.imageUrl),
                    )
                  : SizedBox(
                      height: 150,
                      width: 150,
                      child: Image.network(_dt.rxPickedImage.st!.path),
                    ),
              const SizedBoxH(15),
              ElevatedButton(
                onPressed: () async {
                  _dt.rxPickedImage.st = await ImagePicker().pickImage(source: ImageSource.gallery);
                },
                child: const Text(
                  "pick image from gallery",
                ),
              ),
              const SizedBoxH(15),
              const EditName(),
              const SizedBoxH(15),
              const EditAge(),
              const SizedBoxH(15),
              const EditGender(),
              const SizedBoxH(15),
              const EditBreeds(),
              const SizedBoxH(15),
              const EditSubmit(),
            ],
          ),
        ),
      ),
    );
  }
}








