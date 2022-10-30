import 'package:fl_components/main.dart';
import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ComentariosScreen extends ConsumerWidget {
  const ComentariosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final listaComentarios = ref.watch(miProvider);

    return Scaffold(
        appBar: AppBar(title: const Text('Comments')),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [

              ...listaComentarios.map((respuesta) => CustomCardType1(comentario: respuesta['comentario']!) ),

            const SizedBox(height: 20),
          ],
        ));
  }
}
