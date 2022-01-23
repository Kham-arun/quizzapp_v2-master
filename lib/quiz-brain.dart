import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  //TODO 1: ปรับเปลี่ยนหรือเพิ่มชุดคำถามใน questionBank ให้มีอย่างน้อย 5 คำถาม /
  List<Question> _questionBank = [
    Question(q: 'ลุงตู่อยู่ต่อ', a: false),
    Question(q: 'คนเขียนโปรแกรมหล่อเท่', a: true),
    Question(q: '1+1=11', a: false),
    Question(q: 'เปโระดมอาหาร', a: false),
    Question(q: 'แมวน่ารัก', a: true),
    Question(q: 'เพลง J-pop เพราะมากๆ', a: true),
    Question(q: 'วิชานี้จะได้เกรด 4.00', a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String? getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool? getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
