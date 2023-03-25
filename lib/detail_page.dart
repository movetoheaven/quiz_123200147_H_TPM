
import 'package:flutter/material.dart';
import 'package:untitled5/game_store.dart';

class DetailPage extends StatefulWidget {
  final GameStore game;
  const DetailPage({Key? key, required this.game}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.game.name),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.network(widget.game.imageUrls[0],
                height: 150,
                ),
              ),
              SizedBox(height: 15.0),
              Center(
                child: Text(
                  widget.game.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                ),
              ),
              SizedBox(height: 15.0),
              Container(
                padding: EdgeInsets.all(10),
                child: Table(
                  columnWidths: {
                    0: IntrinsicColumnWidth(),
                    1: IntrinsicColumnWidth(),
                  },
                children: [
                  TableRow(
                    children: [
                      Text(
                        'Release Date',
                        style: TextStyle(fontSize: 15.0),
                      ),
                      Text(
                        ' : ',
                        style: TextStyle(fontSize: 15.0),
                      ),
                      Text(
                        widget.game.releaseDate,
                          style: TextStyle(fontSize: 15.0),
                      )
                    ]),

                ],

                ),
              )

            ],
        ),
      ),

    );
  }
}
