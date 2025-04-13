import 'package:flutter/material.dart';
import 'package:hello_flutter/theme.dart';

// 화면에 보여줄 위젯을 지정, main 함수를 시작으로 runApp() 함수를 실행해 플러터 프로젝트를 시작한다.
void main() {
  runApp(const MyApp());
}

// 상태 변화가 없는 앱을 만든다.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(context),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Welcome to Flutter',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          actions: [
            Icon(Icons.shopping_cart), // 쇼핑카트
            SizedBox(width: 10), // 위젯간 여백 조정
            Icon(Icons.search_rounded, // 검색아이콘
                color: Colors.redAccent),
            SizedBox(width: 10),
            Icon(Icons.settings, // 설정 아이콘
                color: Colors.purpleAccent),
            SizedBox(width: 10),
          ],
        ),
        body: Center(
          child: Text(
              'Hello World',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
                color: Colors.purple,
              ),
          ),
        ),
      )
    );
  }
}
