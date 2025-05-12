// Flutter imports:

import 'dart:developer';

import 'package:cinefinder/app.dart';
import 'package:cinefinder/core/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:

// Project imports:

// Package imports:

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const MyApp());
}
