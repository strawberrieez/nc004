import 'dart:math';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nc004/dt_domains/_models/_index.dart';
import 'package:nc004/dt_domains/a.profile/_index.dart';
import 'package:nc004/ui_widgets/spaces/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.profile_edit.data.dart';
part 'b.profile_edit.ctrl.dart';
part 'c.profile_edit.view.dart';
part 'widgets/a.profile_edit.appbar.dart';
part 'widgets/b.profile_edit.fab.dart';
part 'widgets/c.profile_edit.charlie.dart';
part 'widgets/d.profile_edit.delta.dart';
part 'widgets/e.profile_edit.echo.dart';

ProfileEditData get _dt => Data.profileEdit.st;
ProfileEditCtrl get _ct => Ctrl.profileEdit;

ProfileProv get _pv => Prov.profile.st;
ProfileServ get _sv => Serv.profile;