import 'package:edwres_app/app/app.dart';
import 'package:edwres_app/core/config/carousel_cache.dart';
import 'package:edwres_app/core/core.dart';
import 'package:edwres_app/data/data.dart';
import 'package:edwres_app/data/repository/entrepreneurship_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting('id_ID', null);
  await SessionManager.load();

  final prefs = await SharedPreferences.getInstance();

  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (_) => CarouselCache(prefs)),
        RepositoryProvider<EntrepreneurshipRepository>(
          create: (context) =>
              EntrepreneurshipRepository(cache: context.read<CarouselCache>()),
        ),
        RepositoryProvider<NewsRepository>(
          create: (context) =>
              NewsRepository(cache: context.read<CarouselCache>()),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: appRouter,
        theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      ),
    ),
  );
}
