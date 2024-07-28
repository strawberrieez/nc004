part of '../_index.dart';

class AddSubmit extends StatelessWidget {
  const AddSubmit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormSubmissionBuilder(
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
    );
  }
}