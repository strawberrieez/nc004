part of '_index.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: LoginAppbar(),
      ),
      floatingActionButton: const LoginFab(),
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
                  onPressed: () async {
                    _ct.signInAnonimously();
                  },
                  child: const Text(
                    "Sign In Anonimously",
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    _ct.signInByGoogle();
                  },
                  child: const Text(
                    "Sign In By Google",
                  ),
                ),
                TextButton(
                  onPressed: () {
                    nav.to(Routes.register);
                  },
                  child: const Text(
                    "do you have an account? sign up!",
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
