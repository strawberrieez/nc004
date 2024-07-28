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
      floatingActionButton: const ProfileEditFab(),
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
                  "Elevated Button",
                ),
              ),
              const SizedBoxH(15),
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => TextField(
                  controller: _dt.rxName.st.controller,
                  decoration: InputDecoration(
                    errorText: _dt.rxName.error,
                    labelText: 'name',
                    hintText: 'input cat name',
                  ),
                ),
              ),
              const SizedBoxH(15),
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => TextField(
                  controller: _dt.rxAge.st.controller,
                  decoration: InputDecoration(
                    errorText: _dt.rxAge.error,
                    labelText: 'age',
                    hintText: 'input cat age in month',
                  ),
                ),
              ),
              const SizedBoxH(15),
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => TextField(
                  controller: _dt.rxGender.st.controller,
                  decoration: InputDecoration(
                    errorText: _dt.rxGender.error,
                    labelText: 'gender',
                    hintText: 'input cat gender',
                  ),
                ),
              ),
              const SizedBoxH(15),
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => TextField(
                  controller: _dt.rxBreeds.st.controller,
                  decoration: InputDecoration(
                    errorText: _dt.rxBreeds.error,
                    labelText: 'breeds',
                    hintText: 'input cat breeds',
                  ),
                ),
              ),
              const SizedBoxH(15),
              OnFormSubmissionBuilder(
                listenTo: _dt.rxForm,
                onSubmitting: () => const CircularProgressIndicator(),
                child: ElevatedButton(
                  onPressed: () async {
                    await _ct.submit();
                  },
                  child: const Text(
                    "submit",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
