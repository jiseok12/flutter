import 'package:flutter/material.dart';
import 'flutter_login/components/customer_text_form_field.dart';
import 'flutter_login/size.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:table_calendar/table_calendar.dart';


class newhot extends StatelessWidget {
  final _formKey = GlobalKey<FormState>(); // 1. 글로벌 key

  newhot({Key? key}) : super(key: key);

  final Map<DateTime, List<dynamic>> _events = {
    DateTime.utc(2024, 6, 2): ['IVE THE 2nd EP <IVE SWITCH> 발매 기념 국내 마지막 팬사인회 - 애플뮤직'],
    DateTime.utc(2024, 6, 4): ['IVE THE 1ST WORLD TOUR ＜SHOW WHAT I HAVE＞IN PARIS'],
    DateTime.utc(2024, 6, 7): ['tvN <지락이의 뛰뛰빵빵> - 안유진'],
    DateTime.utc(2024, 6, 10): ['IVE THE 1ST WORLD TOUR ＜SHOW WHAT I HAVE＞IN BERLIN'],
  };

  // 특정 날짜에 대한 이벤트 반환 함수
  List<dynamic> _getEventsForDay(DateTime day) {
    return _events[day] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data schedule'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TableCalendar(
              firstDay: DateTime.utc(2021, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
              eventLoader: _getEventsForDay,
            ),
                SizedBox(height: 20.0),
                Container(
                  height: 300, // ListView의 높이를 제한합니다.
                  child: ListView(
                    children: [
                      ListTile(

                        title: Text('IVE THE 2nd EP <IVE SWITCH> 발매 기념 국내 마지막 팬사인회 - 애플뮤직'),
                        subtitle: Text('6월 2일'),
                      ),
                      ListTile(
                        title: Text('IVE THE 1ST WORLD TOUR ＜SHOW WHAT I HAVE＞IN PARIS'),
                        subtitle: Text('6월 4일'),
                      ),
                      ListTile(
                        title: Text('tvN <지락이의 뛰뛰빵빵> - 안유진'),
                        subtitle: Text('6월 7일'),
                      ),
                      ListTile(
                        title: Text('IVE THE 1ST WORLD TOUR ＜SHOW WHAT I HAVE＞IN BERLIN'),
                        subtitle: Text('6월 10일'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
        ),
      );
  }
}


void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('data schedule')),
      body: newhot(),
    ),
  ));
}
