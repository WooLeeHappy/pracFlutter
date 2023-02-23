import 'package:flutter/material.dart';
import 'package:practice/screen/screen_main.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _point = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RP 프로젝트'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/dog.png'),
            SizedBox(height: 16.0),
            Text('Point: $_point'),
            SizedBox(height: 32.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _openOneBox,
                  child: Text('1개만 열기'),
                ),
                SizedBox(width: 16.0),
                ElevatedButton(
                  onPressed: _openAllBoxes,
                  child: Text('모두 열기'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _openOneBox() {
    // TODO: 1개의 포인트 상자 열기
  }

  void _openAllBoxes() {
    // TODO: 모든 포인트 상자 열기
  }
}
