part of '../_index.dart';

class AddGender extends StatelessWidget {
  const AddGender({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxGender.controller,
        decoration: InputDecoration(
          errorText: _dt.rxGender.error,
          labelText: 'gender',
          hintText: 'input cat gender',
        ),
      ),
    );
  }
}