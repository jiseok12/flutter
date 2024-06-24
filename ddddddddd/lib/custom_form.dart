import 'package:flutter/material.dart';
import 'flutter_login/components/customer_text_form_field.dart';
import 'flutter_login/size.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>(); // 1. 글로벌 key

  CustomForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        // 2. 글로벌 key를 Form 태그에 연결하여 해당 key로 Form의 상태를 관리할 수 있다.
        key: _formKey,
        child: Column(
          children: [
            SvgPicture.asset(
              'assets/image/Ive_logo.svg',
              width: 100, // 이미지의 너비를 100으로 설정
              height: 100, // 이미지의 높이를 100으로 설정
            ),
            Text(
              "Login",
              style: TextStyle(
                fontSize: 24, // 텍스트 크기
                fontWeight: FontWeight.bold, // 텍스트 굵기
                color: Colors.red, // 텍스트 색상
              ),
            ),
            CustomTextFormField("Email"),
            SizedBox(height: mediumGap),
            CustomTextFormField("Password"),
            SizedBox(height: largeGap),
            // 3. TextButton 추가
            TextButton(
              onPressed: () {
                // 4. 유효성 검사
                if (_formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, "/home");
                }
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
