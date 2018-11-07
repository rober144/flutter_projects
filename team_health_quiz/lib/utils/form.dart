import './question.dart';

class Form {
  List<Question> _questions;
  int _currentQuestionIndex = -1;

  Form(this._questions) {
    _questions.shuffle();
  }

  List<Question> get questions => _questions;
  int get length => questions.length;
  int get questionNumber => _currentQuestionIndex+1;

  Question get nextQuestion {
    _currentQuestionIndex++;
    if (_currentQuestionIndex >= length) return null;
    return _questions[_currentQuestionIndex];
  }
}