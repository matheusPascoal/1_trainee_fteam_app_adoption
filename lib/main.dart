import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'page/home_pet.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: HomePet()),
  );
}
