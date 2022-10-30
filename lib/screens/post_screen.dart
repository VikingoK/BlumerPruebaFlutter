import 'package:fl_components/main.dart';
import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostScreen extends ConsumerWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'comentario': '',
    };

    return Scaffold(
        body: ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      children: [
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: const [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1667052965484-d0413a1f2cc8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=743&q=80'),
                ),
                SizedBox(width: 20),
                Text('Angelica', style: TextStyle(fontSize: 26)),
              ],
            ),
            const Icon(Icons.more_horiz, size: 40)
          ],
        ),
        const SizedBox(height: 20),
        const CustomCardType2(
            imageUrl:
                'https://images.unsplash.com/photo-1576733937519-6f18a43f8e7a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=855&q=80'),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: const [
                CustomIconItem(icono: Icons.edit_outlined),
                CustomIconItem(icono: Icons.mode_comment_outlined),
              ],
            ),
            const CustomIconItem(icono: Icons.new_label_outlined),
          ],
        ),
        const SizedBox(height: 10),
        const Text("2hrs ago . View all comments",
            style: TextStyle(fontSize: 20)),
        const SizedBox(height: 30),
        const Divider(),
        const SizedBox(height: 30),
        Form(
          key: myFormKey,
          child: Column(
            children: [
              Row(
                children: [
                  CustomInputField(
                    hintText: 'Leave a comment. Use @ to mention',
                    formProperty: 'comentario',
                    formValues: formValues,
                    keyboardType: TextInputType.text,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());

                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario no valido');
                        return;
                      }

                      ref
                          .read(miProvider.notifier)
                          .agregarComentario(formValues);

                      Navigator.pushNamed(context, 'comentarios');
                    },
                    child: const SizedBox(
                      height: 50,
                      width: 30,
                      child: Center(
                        child:
                            CustomIconItem(icono: Icons.send_rounded, size: 30),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
