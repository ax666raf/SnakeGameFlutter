import 'game_page.dart';
import 'package:flutter/material.dart';

class GameOver extends StatelessWidget {

  final int score;
  final Function onRestart;
  GameOver({required this.score, required this.onRestart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Game Over', style: TextStyle(color: Colors.redAccent, fontSize: 50.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, shadows: [
                Shadow( 
                  offset: Offset(-1.5, -1.5),
                  color: Colors.black
                ),
                Shadow( 
                  offset: Offset(1.5, -1.5),
                  color: Colors.black
                ),
                Shadow( 
                  offset: Offset(1.5, 1.5),
                  color: Colors.black
                ),
                Shadow( 
                  offset: Offset(-1.5, 1.5),
                  color: Colors.black
                ),
              ])
            ),
            
            SizedBox(height: 50.0),

            Text('Your Score is: $score', style: TextStyle(color: Colors.white, fontSize: 20.0)),

            SizedBox(height: 50.0),

            TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: Colors.redAccent,
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
              ),
              onPressed: () {
                onRestart();
              },
              icon: Icon(Icons.refresh, color: Colors.white, size: 30.0),
              label: Text("Try Again", style: TextStyle(color: Colors.white, fontSize: 20.0))
            ),
          ],
        ),
      )
    );
  }
}