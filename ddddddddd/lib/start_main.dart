import 'package:flutter/material.dart';
import 'flutter_login/components/customer_text_form_field.dart';
import 'flutter_login/size.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StartMain extends StatelessWidget {
  final _formKey = GlobalKey<FormState>(); // 1. 글로벌 key

  StartMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              '오늘 인기 사진',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/image/ive-image1.jpg',
                    fit: BoxFit.cover,
                    height: 700,
                  ),
                ),
                SizedBox(width: 10.0),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset('assets/image/rei-ive.jpg', height: 700),
                ),
                SizedBox(width: 10.0),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset('assets/image/gaeul-ive.jpg', height: 700),
                ),
                SizedBox(width: 10.0),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset('assets/image/rei-ive.jpg', height: 700),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            '오늘 핫?!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            height: 200, // ListView의 높이를 제한합니다.
            child: ListView(
              children: [
                ListTile(
                  leading: Image.asset('assets/image/twitter.png', height: 50,width: 50),
                  title: Text('🎥\'IVE\'S WEEK\' DAY 6 🦋 ......'),
                ),
                ListTile(
                  leading: Image.asset('assets/image/cafe.png', width: 50, height: 50),
                  title: Text('IVE THE 2nd EP ＜ 𝐈𝐕𝐄 𝐒𝐖𝐈𝐓𝐂𝐇 ＞ 발매 안내'),
                ),
                ListTile(
                  leading: Image.asset('assets/image/twitter.png', width: 50, height: 50),
                  title: Text('🎥[IVE ON] \'해야(HEYA) & Accendio\' DANCE PRACTICE BEHIND'),
                ),
                ListTile(
                  leading: Image.asset('assets/image/twitter.png', width: 50, height: 50),
                  title: Text('Another item'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: StartMain(),
    ),
  ));
}
