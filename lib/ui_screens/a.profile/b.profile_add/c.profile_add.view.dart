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
                OnFormBuilder(
                  listenTo: _dt.rxForm,
                  builder: () => TextField(
                    controller: _dt.rxName.controller,
                    decoration: InputDecoration(
                      errorText: _dt.rxName.error,
                      labelText: 'name',
                      hintText: 'input cat name',
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                OnFormBuilder(
                  listenTo: _dt.rxForm,
                  builder: () => TextField(
                    controller: _dt.rxAge.controller,
                    decoration: InputDecoration(
                      errorText: _dt.rxAge.error,
                      labelText: 'age',
                      hintText: 'input cat age in month',
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                OnFormBuilder(
                  listenTo: _dt.rxForm,
                  builder: () => TextField(
                    controller: _dt.rxGender.controller,
                    decoration: InputDecoration(
                      errorText: _dt.rxGender.error,
                      labelText: 'gender',
                      hintText: 'input cat gender',
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                OnFormBuilder(
                  listenTo: _dt.rxForm,
                  builder: () => TextField(
                    controller: _dt.rxBreeds.controller,
                    decoration: InputDecoration(
                      errorText: _dt.rxBreeds.error,
                      labelText: 'breeds',
                      hintText: 'input cat breeds',
                    ),
                  ),
                ),
                const SizedBox(height: 15),
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
        ));
  }
}
