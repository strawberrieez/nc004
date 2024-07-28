part of '../_index.dart';

class AddAge extends StatelessWidget {
  const AddAge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxAge.controller,
        decoration: InputDecoration(
          errorText: _dt.rxAge.error,
          labelText: 'age',
          hintText: 'input cat age in month',
        ),
      ),
    );
  }
}