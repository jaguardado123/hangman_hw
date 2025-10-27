import 'package:flutter/material.dart';
import 'package:hangman_game/models/hangmangame.dart';
import 'package:hangman_game/config/globals.dart';

import 'gamescreen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Hangman",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            const Text(
              "Game",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 50),
            ),
            const SizedBox(
                height: 100,
                child: Image(image: AssetImage('assets/progress_8.png'))),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            ),
            ElevatedButton(
              
              // Here we are giving the new game button a key for use in our integration tests in test/integration_tests.dart.
              key: const Key('new-game-button'),
              child: const Text("New Game",
                  style: TextStyle(fontSize: 25)),
              onPressed: () async {
                String word =
                    await HangmanGame.getStartingWord(areWeInIntegrationTest);

                // Here we are starting the game by creating an instance of HangmanGame and passing a word to the constructor.
                HangmanGame game = HangmanGame(word);

                //
                // TODO: Push a GameScreen and give it the HangmanGame object.
                
              },
            )
          ],
        ),
      ),
    );
  }
}
