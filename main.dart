void main() {
  print('hello world');
}
// main 함수는 모든 Dart 프로그램의 Entry Point.
// main 함수에서 작성된 코드가 호출.(모든 코드는 main 함수 안에 들어가야 함)

void main() {
  var name = 'abc'; // 자동으로 타입을 설정
  name = 1; // 지정된 타입과 다른 변수는 저장할 수 없음
  // 관습적으로 함수나 메소드 내부에 지역 변수를 선언할 때는 var
  String name2 = 'abc'; // 명시적으로 타입을 설정
  // class에서 변수나 property를 선언할 때는 타입 지정
  // var과 명시적 선언 둘 다 변수 업데이트 가능
}