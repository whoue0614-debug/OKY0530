void main() {
  // 변수선언
  int score = 84;
  String grade;
  // if문을 이용해서 점수마다 등급 부여
  if (score >= 90 && score <= 100) {
    grade = "A등급";
  } else if (score >= 80 && score < 90) {
    grade = "B등급";
  } else {
    grade = "C등급";
  }

  print("이 학생의 점수는 $score 이며, 등급은 $grade입니다!");
}
