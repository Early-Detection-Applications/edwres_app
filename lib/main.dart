import 'package:edwres_app/app/app.dart';
import 'package:edwres_app/core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

Future<void> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting('id_ID', null);
  await SessionManager.load();

  runApp(
    MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
    ),
  );
}
