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

void main() {
  // dynamic : 여러가지 타입을 가질 수 있는 변수 설정(사용되는게 추천되지는 않음)
  var name; // 아무것도 지정하지 않으면 name은 dynamic 타입이 됨
  dynamic name2; // 이렇게 dynamic으로 명시해줄 수도 있음
  name = 'abc';
  name = 123;
  name = true;
  if(name is String){
    // 이 경우 name이 string임을 알기 때문에, name. 했을 때 stirng 타입에 맞는 옵션 자동 완성
  }
}

void main() {
  // null safety : 개발자가 null 값을 참조할 수 없게 함
  // dart에서는 어떤 변수가 null이 될 수 있음을 명확히 표시해야 함
  String name = 'abc';
  // name은 String 값만 가질 수 있음
  String? name2 = 'abc';
  name2 = null; // name2는 String도 null도 가질 수 있음
}

void main() {
  // final : 한 번 정의된 변수를 수정할 수 없게 함
  final name = 'abc';
  final String name2 = 'abc'; // 타입 설정도 가능(필수는 아님)
}

void main() {
  // late : final이나 var 앞에 붙일 수 있는 수식어
  late final name;
  // late는 초기 데이터 없이 변수 선언 가능
  print(name); // 이 경우 late변수이기때문에 오류 발생(값을 넣기 전에는 접근 불가)
  // api를 통해 데이터를 받은 후, 해당 데이터를 변수에 설정
  name = 'abc';
}