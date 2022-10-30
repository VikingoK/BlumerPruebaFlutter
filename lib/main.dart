import 'package:flutter/material.dart';

import 'package:fl_components/theme/app_theme.dart';
import 'package:fl_components/router/app_routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MiNotifier extends StateNotifier<List<Map<String, String>>> {
  MiNotifier() : super([]);

  void agregarComentario(Map<String, String> comentario) {
    state = [...state, comentario];
  }
}


final miProvider = StateNotifierProvider<MiNotifier,List<Map<String, String>>>((ref) => MiNotifier());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clone instagram app',
      // home: const ListView2Screen(),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      theme: AppTheme.lightTheme,
    );
  }
}
