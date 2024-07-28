part of '../_index.dart';

class AddBreeds extends StatelessWidget {
  const AddBreeds({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxBreeds.controller,
        decoration: InputDecoration(
          errorText: _dt.rxBreeds.error,
          labelText: 'breeds',
          hintText: 'input cat breeds',
        ),
      ),
    );
  }
}