import 'dart:math';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nc004/dt_domains/_models/_index.dart';
import 'package:nc004/dt_domains/a.profile/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.profile_add.data.dart';
part 'b.profile_add.ctrl.dart';
part 'c.profile_add.view.dart';
part 'widgets/a.profile_add.appbar.dart';
part 'widgets/b.profile_add.fab.dart';
part 'widgets/c.profile_add.name.dart';
part 'widgets/d.profile_add.age.dart';
part 'widgets/e.profile_add.gender.dart';
part 'widgets/f.profile_add.breeds.dart';
part 'widgets/g.profile_add.submit.dart';

ProfileAddData get _dt => Data.profileAdd.st;
ProfileAddCtrl get _ct => Ctrl.profileAdd;

ProfileProv get _pv => Prov.profile.st;
ProfileServ get _sv => Serv.profile;
