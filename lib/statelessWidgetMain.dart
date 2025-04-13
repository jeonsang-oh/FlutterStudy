import 'package:flutter/material.dart';

// 화면에 보여줄 위젯을 지정, main 함수를 시작으로 runApp() 함수를 실행해 플러터 프로젝트를 시작한다.
void main() {
  runApp(const MyApp());
}

// 상태 변화가 없는 앱을 만든다.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const MyHomePage(title: '상태없는 위젯 테스트'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$title'),
          ]
        ),
      )
    );
  }
}

