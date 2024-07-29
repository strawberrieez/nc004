part of '../_index.dart';

class EditName extends StatelessWidget {
  const EditName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxName.st.controller,
        decoration: InputDecoration(
          errorText: _dt.rxName.error,
          labelText: 'name',
          hintText: 'input cat name',
        ),
      ),
    );
  }
}
