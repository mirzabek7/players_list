import 'package:flutter/material.dart';

class Player_card extends StatelessWidget {
  final String id;
  final String name;
  final String imageUrl;
  final String number;
  final Function deletePlayer;

  Player_card(
      {required this.id,
      required this.name,
      required this.number,
      required this.imageUrl,
      required this.deletePlayer});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Center(
          child: ListTile(
        leading:
            CircleAvatar(radius: 30, backgroundImage: NetworkImage(imageUrl)),
        title: Text(
          name,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "Squad number $number",
          style:
              TextStyle(fontSize: 18, color: Color.fromARGB(255, 198, 155, 2)),
        ),
        trailing: IconButton(
          onPressed: () {
            deletePlayer(id);
          },
          icon: Icon(Icons.delete),
          color: Colors.redAccent,
          iconSize: 28,
        ),
      )),
    );
  }
}
