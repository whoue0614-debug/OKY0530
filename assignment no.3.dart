import 'dart:math';

class Lotto {
  List<int> numbers = []; // 발급된 로또 번호를 담는 리스트

  // 로또 번호 발급
  void LottoNum() {
    numbers.clear();
    Random random = Random();

    while (numbers.length < 6) {
      int num = random.nextInt(45) + 1; // 1~45 사이 숫자
      if (!numbers.contains(num)) {
        // 중복을 방지하기 위해 뽑은 숫자인지 contains로 확인
        // list 안에 num이 없다면 추가
        numbers.add(num);
      }
    }

    numbers.sort(); // 보기 좋게 정렬
    print("발급한 로또 번호: $numbers");
  }

  // 당첨 여부 확인
  void checkResult(List<int> winningNumbers) {
    int matchCount = numbers.where((n) => winningNumbers.contains(n)).length;

    if (matchCount >= 5) {
      print("당첨 여부 : 1등");
    } else if (matchCount == 4) {
      print("당첨 여부 : 2등");
    } else if (matchCount == 3) {
      print("당첨 여부 : 3등");
    } else {
      print("당첨 여부 : 당첨 실패");
    }
  }

  // 로또 초기화
  void resetLotto() {
    numbers.clear();
    print("현재 발급한 로또 번호: $numbers");
  }
}

void main() {
  Lotto lotto = Lotto();

  lotto.LottoNum();

  List<int> winning = [9, 19, 29, 35, 37, 38];
  lotto.checkResult(winning);

  lotto.resetLotto();
}
