import 'package:flutter/material.dart';

// 화면에 보여줄 위젯을 지정, main 함수를 시작으로 runApp() 함수를 실행해 플러터 프로젝트를 시작한다.
void main() {
  runApp(MyApp());
}

// 상태 있는 앱을 만든다.
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key) {
    print("MyApp() constructor");
  }

  @override
  Widget build(BuildContext context) {
    print("MyApp().build");

    return MaterialApp(
      title: 'Flutter Counter Demo',
      home: MyHomePage(title: 'LifeCycle Test'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key) {
    print("MyHomePage() constructor");
  }
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  _MyHomePageState() {
    print("_MyHomePageState() constructor : mounted=${this.mounted} ");
  }

  // 상태객체가 생성되면 BuildContext가 트리의 특정 위치에 연결(마운트)되고 상태객체의 initState()가 호출
  // 이 함수는 위젯을 처음 초기화할 때 딱 한번만 호출
  @override
  void initState() {
    print("_MyHomePageState.initState : mounted=${this.mounted} : _counter(${this._counter})");
    super.initState();
  }

  @override
  void reassemble() {
    print("_MyHomePageState.ressemble : mounted=${this.mounted} : _counter(${this._counter})");
    super.reassemble();
  }

  // initState()가 호출된 후 didChangeDependencies() 함수가 호출
  // 위젯이 의존하고 있는 InheritedWidget이 변경될 때 호출되기도 함
  @override
  void didChangeDependencies() {
    print("_MyHomePageState.didChangeDependencies : mounted=${this.mounted} : _counter(${this._counter})");
    super.didChangeDependencies();
  }

  // 위젯 트리에서 상태객체가 완전히 제거될 때 호출
  // 완전히 제거되면 build() 함수가 호출되지 않기 때문에 dispose() 함수에서 setState()를 호출하면 오류 발생
  @override
  void dispose() {
    print("_MyHomePageState.dispose : mounted=${this.mounted} : _counter(${this._counter})");
    super.dispose();
  }

  // 위젯 트리에서 상태객체가 제거될 때마다 호출
  @override
  void deactivate() {
    print("_MyHomePageState.deactivate : mounted=${this.mounted} : _counter(${this._counter})");
    super.deactivate();
  }

  // 부모 위젯이 다시 빌드되며너 하위 위젯을 갱신 할 때 호출
  // 예를 들면, 소스 변경 후 리빌드하여 화면을 다시 그려야 하는 경우
  @override
  void didUpdateWidget(MyHomePage oldWidget) {
    print("_MyHomePageState.didUpdateWidget : mounted=${this.mounted} : _counter(${this._counter})");
    super.didUpdateWidget(oldWidget);
  }

  int _counter = 0;

  void _incrementCounter() {
    print("Clicked:_incrementCounter:mounted=${this.mounted} : _counter(${this._counter})");
    // 상태객체의 내부 상태가 변경되었을 때 호출하는 함수
    // -setState() 함수는 내부적으로 build() 함수를 호출하여 변경된 결과를 화면에 다시 그림
    setState(() {
      _counter++;
      print("_MyHomePageState.setState():mounted=${this.mounted}:_counter(${this._counter})");
    });
  }

  // 위젯을 그리는 함수이며 변경이 있을 때마다 호출
  @override
  Widget build(BuildContext context) {
    print("_MyHomePageState.build():mounted=${this.mounted}:_counter(${this._counter})");

    return Scaffold(
      appBar: AppBar(
        title: const Text('StatefulWidget Counter'),
      ),
      body: Center(
        child: Text(
          '버튼을 누른 횟수: $_counter',
          style: const TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}

