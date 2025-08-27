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

void main() {
  // const는 컴파일 때 알고 있는 값을 사용
  // api로 받거나 혹은 사용자가 입력하는 값은 const가 아닌 final이나 var
  const name = 'abc'; // 컴파일 시점에 바뀌지 않는 값
  final username=fetchAPI(); // 컴파일 시점에 바뀌는 값
}

void main() {
  String name = 'abc';
  bool alive = true;
  int age = 99;
  double money = 12.34; // 소수점을 붙일 수 있는 숫자
  // Dart의 거의 전부가 object로 이루어져있음
  num x = 12; // num은 타입이 int일 수도 있고 double일 수도 있음
}

void main() {
  var numbers = [1, 2, 3]; // List<int>
  List<int> numbers2 = [1, 2, 3];
  var giveMeFive = true;
  var numbers3 = [1, 2, 3, 4, if (giveMeFive) 5];
  // 위 글은 if(giveMeFive){numbers3.add(5)}와 같음
}

void main() {
  // String Interpolation : text에 변수를 추가하는 방법
  var name = 'abc';
  var age = 98;
  var greeting = 'hello my name is $name and I\'m ${age+1}, nice to meet you!';
}

void main() {
  var oldFriends = ['a','b'];
  var newFriends = ['c','d', for(var friend in oldFriends) '🌼$friend'];
}

void main() {
  var player = {
    'name': 'abc',
    'xp': 100,
    'superpower': false,
  }; // Map<String, Object> 타입. <key타입, value타입>. Object는 any와 같다고 볼 수 있음
  Map<int, bool> skills = {1: true, 2: false};
}

void main() {
  var numbers = {1,2,3,4}; // Set<int>
  Set<int> numbers2 ={1,2,3,4};
  // set에 포함된 값은 모두 유니크
  numbers.add(1);
  numbers.add(1);
  // 이렇게 해도 결과 값은 {1,2,3,4}에서 바뀌지 않음.
}

void sayHello(String name) {
  print('Hello $name, nice to meet you');
}

String sayHello2(String name) {
  return 'Hello $name, nice to meet you';
}

String sayHello3(String name) => 'Hello $name, nice to meet you';

num plus(num a, num b) => a + b;

void main() {
  sayHello('abc');
  print(sayHello2('abc'));
}

String sayHello(String name, int age, String country) {
  return 'Hello $name, you are $age, and you come frome $country';
}

String sayHello2({required String name, int age = 99, String? country}) {
  return 'Hello $name, you are $age, and you come frome $country';
}

void main() {
  print(sayHello('abc', 99, 'cuba'));
  print(sayHello2(age: 99, name: 'abc', country: 'cuba'));
}
