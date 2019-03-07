import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fshop/screens/login_screen/login_page.dart';

void main() {
  testWidgets('test_if_can_put_text_on_email_field_on_login_screen', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LoginPage()));

    await tester.enterText(find.byKey(Key('email_form_field')), 'felipe@felipe.com');

    expect(find.text('felipe@felipe.com'), findsOneWidget);
  });

  testWidgets('test_if_can_put_text_on_password_field_on_login_screen', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LoginPage()));

    await tester.enterText(find.byKey(Key('password_form_field')), 'password');

    expect(find.text('password'), findsOneWidget);
  });

  //Test if background image is load
  //Test if esqueceu a senha is tappable
  //Test if Cadastre-se is tappable
  //Test if login button is working
  //Test if facebook button is working
  //Test if google button is working
  //Test if login screen with the keyboard is scrolling
}
