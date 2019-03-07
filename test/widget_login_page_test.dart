// This is the login_page widget test.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fshop/screens/login_screen/login_page.dart';
import './testing_util.dart';

void main() {
  /* Functional tests */
  testWidgets('test_if_can_put_text_on_email_field_on_login_screen', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(LoginPage()));

    await tester.enterText(find.byKey(Key('email_form_field')), 'felipe@felipe.com');

    expect(find.text('felipe@felipe.com'), findsOneWidget);
  });

  testWidgets('test_if_can_put_text_on_password_field_on_login_screen', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(LoginPage()));

    await tester.enterText(find.byKey(Key('password_form_field')), 'password');

    expect(find.text('password'), findsOneWidget);
  });

  testWidgets('test_if_esqueceu_a_senha_is_tappable', (WidgetTester tester) async {
    //Uses generate_login_form.dart file
    Finder forgotPasswordButton;
    bool touched = false;

    await tester.pumpWidget(buildTestableWidget(LoginPage()));

    forgotPasswordButton = find.byKey(Key('forgot_password_tappable_text'));

    if(forgotPasswordButton.evaluate().isNotEmpty){ //Check if can find the tappable text
      await tester.tap(forgotPasswordButton);
      touched = true;
    }
    
    expect(touched, true);
  });

  testWidgets('test_if_Cadastre-se_is_tappable', (WidgetTester tester) async {
    //Uses generate_signup_link.dart file
    Finder signUpButton;
    bool touched = false;

    await tester.pumpWidget(buildTestableWidget(LoginPage()));

    signUpButton = find.byKey(Key('signup_tappable_text'));

    if(signUpButton.evaluate().isNotEmpty){ //Check if can find the tappable text
      await tester.tap(signUpButton);
      touched = true;
    }
    
    expect(touched, true);
  });

  testWidgets('test_if_login_button_is_tappable', (WidgetTester tester) async {
    //Uses generate_signup_link.dart file
    Finder loginButton;
    bool touched = false;

    await tester.pumpWidget(buildTestableWidget(LoginPage()));

    loginButton = find.byKey(Key('login_raised_button'));

    if(loginButton.evaluate().isNotEmpty){ //Check if can find the tappable text
      await tester.tap(loginButton);
      touched = true;
    }
    
    expect(touched, true);
  });

  //test_if_login_button_is_tappable
  //test_if_facebook_button_is_tappable
  //test_if_google_button_is_tappable
  //test_if_login_screen_with_the_keyboard_is_scrolling

  //test_if_background_image_is_loading
}