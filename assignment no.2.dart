void main() {
  // 상품 가격표 key값 티셔츠, 바치, 모자 value값 10000 8000 4000
  Map<String, int> prices = {"티셔츠": 10000, "바지": 8000, "모자": 4000};
  // 구매자가 담은 물건들을 순서대로 저장
  List<String> cart = ["티셔츠", "바지", "모자", "티셔츠", "바지"];

  // for in문을 사용해서 item에 임시로 cart 값을 가져옴
  int total = 0;
  for (var item in cart) {
    total += prices[item]!;
  }

  print("장바구니에 $total원 어치를 담으셨네요!");

  // if 문을 사용해서 할인을 하는경우와 금액을 결정
  int pay = 0;

  if (total > 20000) {
    var discount = (total * 0.1).toInt();
    print(discount.runtimeType);
    pay = (total * 0.9).toInt();
    print("할인 금액 : $discount원");
  } else if (total <= 20000) {
    pay = total;
  }

  print("최종 결제 금액은 $pay원 입니다!");
}
