import 'package:http/http.dart' as http;

class HangmanGame {
  String _word = "";
  String _correctGuesses = "";
  String _wrongGuesses = "";

  // Constructor starts off with blank strings that we will concatenate during the course of play.
  HangmanGame(String word) {
    _word = word;
    _correctGuesses = "";
    _wrongGuesses = "";
  }

  //
  // TODO: Complete the functions below to pass the Unit Tests.

  String correctGuesses() {
    return '';
  }

  String wrongGuesses() {
    return '';
  }

  String word() {
    return '';
  }

  bool guess(var letter) {
    return false;
  }

  String blanksWithCorrectGuesses() {
    return '';
  }

  String status() {
    return '';
  }

  // When running integration tests always return "banana".
  static Future<String> getStartingWord(bool areWeInIntegrationTest) async {
    String word;
    final Uri endpoint = Uri.parse("http://randomword.saasbook.info/RandomWord");
    if (areWeInIntegrationTest) {
      word = "banana";
    } else {
      try {
        final response = await http.post(endpoint);
        word = response.body;
      } catch (e) {
        word = "error";
      }
    }

    return word;
  }
}
