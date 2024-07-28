part of '_index.dart';

class ProfileEditData {
  final rxTitle = 'Profile Edit'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxProfileDetail = _pv.rxProfileDetail;

  final rxPickedImage = _pv.rxPickedImage;

  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async {
      await _ct.updateDoc();
      nav.back();
      nav.back();
    },
  );

  final rxName = RM.inject(
    () => RM.injectTextEditing(
      text: '${_dt.rxProfileDetail.st?.name}',
      validators: [
        Validate.isNotEmpty,
        Validate.fullName,
      ],
    ),
  );

  final rxAge = RM.inject(
    () => RM.injectTextEditing(
      text: '${_dt.rxProfileDetail.st?.age}',
      validators: [
        Validate.isNotEmpty,
        Validate.isNumeric,
      ],
    ),
  );

  final rxGender = RM.inject(
    () => RM.injectTextEditing(
      text: '${_dt.rxProfileDetail.st?.gender}',
      validators: [
        Validate.isNotEmpty,
        Validate.description,
      ],
    ),
  );

  final rxBreeds = RM.inject(
    () => RM.injectTextEditing(
      text: '${_dt.rxProfileDetail.st?.breeds}',
      validators: [
        Validate.isNotEmpty,
        Validate.description,
      ],
    ),
  );
}
