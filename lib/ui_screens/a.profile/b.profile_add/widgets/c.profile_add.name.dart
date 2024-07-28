part of '../_index.dart';

class AddName extends StatelessWidget {
  const AddName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxName.controller,
        decoration: InputDecoration(
          errorText: _dt.rxName.error,
          labelText: 'name',
          hintText: 'input cat name',
        ),
      ),
    );
  }
}
