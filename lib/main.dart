import 'package:crmelinnovadorclient/src/views/dashboard_view.dart';
import 'package:crmelinnovadorclient/src/views/home_view.dart';
import 'package:crmelinnovadorclient/src/views/register_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'firebase_options.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const CRMelInnovadorClient());
}

class CRMelInnovadorClient extends StatefulWidget {
  const CRMelInnovadorClient({super.key});

  @override
  State<CRMelInnovadorClient> createState() => _CRMelInnovadorClientState();
}

class _CRMelInnovadorClientState extends State<CRMelInnovadorClient> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Roboto',
        brightness: Brightness.light,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => const HomeView(),
        'register': (BuildContext context)=> const RegisterView(),
        'DashboardView': (BuildContext context)=> const DashboardView(),
      },
    );
  }
}
