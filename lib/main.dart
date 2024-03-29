import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'page/home_pet.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: PetHome()),
  );
}
