// 다트1
//printInteger(int aNumber){
//   print('The number is $aNumber.'); //콘솔에 출력
// }
//
// int? couldReturnNullButDoesnt() => -3;
//
// //main() 함수에서 시작
// main(){
//   var number = 42; //동적타입 변수지정
//   printInteger(number); //함수호출
//
//   int? couldBeNullButIsnt = 1;
//   List<int?> listThatCouldHoldNulls = [2,null,4];
//   List<int>? nullsList;
//   int a = couldBeNullButIsnt;
//   //int b = listThatCouldHoldNulls.first;
//   int b = listThatCouldHoldNulls.first!;
//   //int d = couldReturnNullButDoesnt().abs();
//   int c = couldReturnNullButDoesnt()!.abs();
//
//   print('a is $a');
//   print('b is $b');
//   print('c is $c');
// }

/*void main() async{
  checkVersion();
  await getVersionName().then((value) =>{
    print(value)
  });
  print('end process');
}

Future<String> getVersionName()async{
  var versionName = await lookUpVersionName();
  return versionName;
}

String lookUpVersionName() {
  return 'Android Q';
}

Future checkVersion() async{
  var version = await lookUpVersion();
  print(version);
}

int lookUpVersion(){
  return 12;
}

 */
/*
void printOne(){
  print('one');
}
Future<void> printTwo() async {
  await Future.delayed(Duration(seconds: 1),(){
    print('Future!!');
  });
  print('Two');
}
void printThree(){
  print('Three');
}

void main(){
  printOne();
  printTwo();
  printThree();
}

 */
/* 다트 2-3
import 'dart:convert';
// ''' <<  그대로 인식을 할때 쓰임 그냥 받아드린다
//ex) '''  asjdasjdlkasjldksajdklajskdlj ''';
void main(){
  var jsonString = '''
  [
    {"score" : 40},
    {"score" : 80}
  ]
  ''';
  var scores = jsonDecode(jsonString);
  print(scores is List); // score 가 list야? []이기때문에 리스트가 된다
  var firstScore = scores[0];
  print(firstScore is Map); // fisrt score 가 map이야?  map이다.
  print(firstScore['score'] == 40); //score = 40 이야? true


  //List<MAP>
  var scores1 = [
    {'score' : 40},
    {'score' : 80},
    {'score' : 100 , 'overtime':true, 'special_guest':null}
  ];
  var jsonText = jsonEncode(scores1); //List -> json

  print(jsonText ==
    '[{"score":40},{"score":80},'
      '{"score":100, "overtime":true,'
      '"special_guest":null}]'); //true출력

}


 */


/* dart stream
import 'dart:async';

Future<int> sumStream(Stream<int> stream) async{
  var sum=0;
  await for (var value in stream){
    print("sumStream : $value" );
    sum += value;
  }
  return sum;
}

Stream<int> countStream(int to) async*{
  for(int i = 1; i<= to; i++){
    print('countStream : $i');
    yield i;
  }
}

main() async {
  var stream = countStream(10);
  var sum = await sumStream(stream);
  print(sum); //55

  var stream1 = Stream.fromIterable([1,2,3,4,5]);
  //가장 앞의 데이터 결과:1
  stream1.first.then((value) => print('first: $value'));
  //가장 마지막 데이터 결과:5
  stream1.last.then((value) => print('last: $value'));
  //현재 스트림이 비어있는지 확인
  stream1.isEmpty.then((value) => print('isEmpty: $value'));
  //전체 길이 : 5
  stream1.length.then((value) => print('length: $value'));
}

 */

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Center(child: Text('hello\nFlutter',textAlign: TextAlign.center)),
    );
  }
}

