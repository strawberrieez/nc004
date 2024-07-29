part of '../_index.dart';

class EditBreeds extends StatelessWidget {
  const EditBreeds({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxBreeds.st.controller,
        decoration: InputDecoration(
          errorText: _dt.rxBreeds.error,
          labelText: 'breeds',
          hintText: 'input cat breeds',
        ),
      ),
    );
  }
}