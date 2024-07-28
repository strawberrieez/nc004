import 'dart:math';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.profile_list.data.dart';
part 'b.profile_list.ctrl.dart';
part 'c.profile_list.view.dart';
part 'widgets/a.profile_list.appbar.dart';
part 'widgets/b.profile_list.fab.dart';
part 'widgets/c.profile_list.charlie.dart';
part 'widgets/d.profile_list.delta.dart';
part 'widgets/e.profile_list.echo.dart';

ProfileListData get _dt => Data.profileList.st;
ProfileListCtrl get _ct => Ctrl.profileList;

