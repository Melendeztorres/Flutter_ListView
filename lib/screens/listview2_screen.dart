import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {
  var games = ["pow", "fortnite", "pacman", "mortal kombat"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('titListView tipo 2'),
      ),
      body: ListView.separated(
        //obtener el tamaño de la lista
        itemCount: games.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(games[index]),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.pink),
          onTap: () {
            var seleccion = games[index];
            print(seleccion);
          },
        ),
        separatorBuilder: (_, __) => Divider(),
      ),
    );
  }
}
