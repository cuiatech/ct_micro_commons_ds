// import 'package:flutter/material.dart';
// ignore_for_file: depend_on_referenced_packages

import 'package:flut_micro_commons_dependencies/flut_micro_commons_dependencies.dart';
import 'package:flut_micro_commons_ds/cuia_ds/app_bar/cuia_app_bar_controller.dart';

class CuiaDsModule extends Module {
  @override
  final List<Bind> binds = [
    // Controllers
    $CuiaAppBarController,
  ];

  @override
  final List<ModularRoute> routes = [];
}
