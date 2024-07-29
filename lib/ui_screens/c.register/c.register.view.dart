part of '_index.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: RegisterAppbar(),
      ),
      floatingActionButton: const RegisterFab(),
      body: OnFormBuilder(
        listenTo: _dt.rxForm,
        builder: () => Center(
          child: SizedBox(
            width: 480,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OnFormBuilder(
                  listenTo: _dt.rxForm,
                  builder: () => TextField(
                    controller: _dt.rxEmail.controller,
                    decoration: InputDecoration(
                      labelText: 'email',
                      hintText: 'name@email.com',
                      errorText: _dt.rxEmail.error,
                    ),
                  ),
                ),
                const SizedBoxH(15),
                OnFormBuilder(
                  listenTo: _dt.rxForm,
                  builder: () => TextField(
                    controller: _dt.rxPassword.controller,
                    decoration: InputDecoration(
                      labelText: 'password',
                      hintText: 'password',
                      errorText: _dt.rxPassword.error,
                    ),
                  ),
                ),
                const SizedBoxH(15),
                OnFormSubmissionBuilder(
                  listenTo: _dt.rxForm,
                  onSubmitting: () => const CircularProgressIndicator(),
                  child: ElevatedButton(
                    // onPressed: _dt.rxForm.isDirty && _dt.rxForm.isValid ? () => _ct.submit : null,
                    onPressed: () {
                      _ct.submit();
                    },
                    child: const Text(
                      "submit",
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    nav.to(Routes.login);
                  },
                  child: const Text(
                    "Already have an account? sign in!",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
