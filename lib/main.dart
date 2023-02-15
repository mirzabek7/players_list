import 'package:flutter/material.dart';

import './widgets/player_card.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Lobster"),
      home: playersList(),
    );
  }
}

class playersList extends StatefulWidget {
  const playersList({super.key});

  @override
  State<playersList> createState() => _playersListState();
}

class _playersListState extends State<playersList> {
  List<Map<String, String>> players = [
    {
      "id": "player1",
      "name": "Thibaut Courtois",
      "number": "1",
      "image":
          "https://img.uefa.com/imgml/TP/players/1/2023/324x324/250011668.jpg"
    },
    {
      "id": "player2",
      "name": "Andrei Lunin",
      "number": "13",
      "image":
          "https://img.uefa.com/imgml/TP/players/1/2023/324x324/250089824.jpg"
    },
    {
      "id": "player3",
      "name": "Daniel Carvajal",
      "number": "2",
      "image":
          "https://img.uefa.com/imgml/TP/players/1/2023/324x324/250024448.jpg"
    },
    {
      "id": "player4",
      "name": "Eder Militao",
      "number": "3",
      "image":
          "https://img.uefa.com/imgml/TP/players/1/2023/324x324/250121965.jpg"
    },
    {
      "id": "player5",
      "name": "David Alaba",
      "number": "4",
      "image":
          "https://img.uefa.com/imgml/TP/players/1/2023/324x324/1906540.jpg"
    },
    {
      "id": "player6",
      "name": "Antonio Rudiger",
      "number": "22",
      "image":
          "https://img.uefa.com/imgml/TP/players/1/2023/324x324/250028211.jpg"
    },
    {
      "id": "player7",
      "name": "Ferland Mendy",
      "number": "23",
      "image":
          "https://img.uefa.com/imgml/TP/players/1/2023/324x324/250112803.jpg"
    },
    {
      "id": "player8",
      "name": "Tony Kroos",
      "number": "8",
      "image": "https://img.uefa.com/imgml/TP/players/1/2023/324x324/103147.jpg"
    },
    {
      "id": "player9",
      "name": "Luka Modric",
      "number": "10",
      "image": "https://img.uefa.com/imgml/TP/players/1/2023/324x324/74699.jpg"
    },
    {
      "id": "player10",
      "name": "Federico Valverde",
      "number": "15",
      "image":
          "https://img.uefa.com/imgml/TP/players/1/2023/324x324/250101284.jpg"
    },
    {
      "id": "player11",
      "name": "Aurelien Tchuameni",
      "number": "18",
      "image":
          "https://img.uefa.com/imgml/TP/players/1/2023/324x324/250105244.jpg"
    },
  ];

  void deletePlayer(String player_id) {
    setState(() {
      players.removeWhere((player) {
        return player["id"] == player_id;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: SafeArea(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Players",
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView(
              itemExtent: 90,
              children: players.map((player) {
                return Player_card(
                  id: player["id"]!,
                  name: player["name"]!,
                  number: player["number"]!,
                  imageUrl: player["image"]!,
                  deletePlayer: deletePlayer,
                );
              }).toList(),
            ))
          ],
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromARGB(255, 231, 181, 6),
        child: const Icon(
          Icons.search_sharp,
        ),
      ),
    );
  }
}
