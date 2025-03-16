class Quiz {
  final int id;
  final String question;
  final List<String> options;
  final int correctAnswerIndex;

  Quiz({
    required this.id,
    required this.question,
    required this.options,
    required this.correctAnswerIndex,
  });
}

// Dummy data
List<Quiz> dummyQuizzes = [
  Quiz(
    id: 1,
    question: "Apa ibu kota Indonesia?",
    options: ["Jakarta", "Bandung", "Surabaya", "Medan"],
    correctAnswerIndex: 0,
  ),
  Quiz(
    id: 2,
    question: "2 + 2 = ?",
    options: ["3", "4", "5", "6"],
    correctAnswerIndex: 1,
  ),
];
