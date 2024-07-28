import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nc004/dt_domains/_models/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.profile.prov.dart';
part 'b.profile.serv.dart';
part 'c.profile.repo.dart';
part 'd.profile.repo.mock.dart';

ProfileProv get _pv => Prov.profile.st;
ProfileServ get _sv => Serv.profile;
ProfileRepo get _rp => Repo.profile.st;
