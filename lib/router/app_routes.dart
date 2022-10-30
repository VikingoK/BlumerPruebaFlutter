import 'package:flutter/material.dart';

import '../models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'post';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'post',
        name: 'post',
        screen: const PostScreen(),
        icon: Icons.build_circle_outlined),
    MenuOption(
        route: 'comentarios',
        name: 'Comentarios',
        screen: const ComentariosScreen(),
        icon: Icons.build_circle_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

}
