part of '../_index.dart';

class EditGender extends StatelessWidget {
  const EditGender({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxGender.st.controller,
        decoration: InputDecoration(
          errorText: _dt.rxGender.error,
          labelText: 'gender',
          hintText: 'input cat gender',
        ),
      ),
    );
  }
}