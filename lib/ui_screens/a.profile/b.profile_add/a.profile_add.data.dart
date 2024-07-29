part of '_index.dart';

class ProfileAddData {
  final rxTitle = 'Profile Add'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxPickedImage = _pv.rxPickedImage;


  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async {
      await _ct.createDoc();
      nav.back();
    },
  );

  final rxName = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.fullName,
    ],
  );

  final rxAge = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.isNumeric,
    ],
  );

  final rxGender = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.description,
    ],
  );

  final rxBreeds = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.description,
    ],
  );
}
