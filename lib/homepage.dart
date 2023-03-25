import 'package:flutter/material.dart';
import 'package:untitled5/detail_page.dart';
import 'package:untitled5/game_store.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game Store'),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: gameList.length,
          itemBuilder: (context, index) {
            final GameStore game = gameList[index];
            return Container(
              child: ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => DetailPage(game: game)));
                },
                leading:
                  Image.network(game.imageUrls[0]),
                  title: Text(game.name),
                  subtitle: Text(game.price),

                )
              );
          }
      ),
    );
  }
}
