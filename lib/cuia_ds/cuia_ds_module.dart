// import 'package:flutter/material.dart';
// ignore_for_file: depend_on_referenced_packages

import 'package:ct_micro_commons_dependencies/ct_micro_commons_dependencies.dart';
import 'package:ct_micro_commons_ds/cuia_ds/app_bar/cuia_app_bar_controller.dart';

class CuiaDsModule extends Module {
  @override
  final List<Bind> binds = [
    // Controllers
    $CuiaAppBarController,
  ];

  @override
  final List<ModularRoute> routes = [];
}
