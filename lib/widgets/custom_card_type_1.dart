import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key, required this.comentario,
  }) : super(key: key);

  final String comentario;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1667052965484-d0413a1f2cc8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=743&q=80') ,
            ),
            title: const Text('Pepe sanchez', style: TextStyle(fontSize: 19,) ),
            subtitle: Text(comentario,  style: const TextStyle(fontSize: 23)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Icon(Icons.link_outlined),
                ),
                TextButton(onPressed: () {}, child: const Icon(Icons.heart_broken)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
