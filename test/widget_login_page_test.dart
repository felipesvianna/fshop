// This is the login_page widget test.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fshop/screens/login_screen/login_page.dart';
import './testing_util.dart';

void main() {
  /* Functional tests */
  testWidgets('test_if_can_put_text_on_email_field_on_login_screen', (WidgetTester tester) async {
    print('test_if_can_put_text_on_email_field_on_login_screen');
    await tester.pumpWidget(buildTestableWidget(LoginPage()));

    await tester.enterText(find.byKey(Key('email_form_field')), 'felipe@felipe.com');
    expect(find.text('felipe@felipe.com'), findsOneWidget);
  });

  testWidgets('test_if_can_put_text_on_password_field_on_login_screen', (WidgetTester tester) async {
    print('test_if_can_put_text_on_password_field_on_login_screen');
    await tester.pumpWidget(buildTestableWidget(LoginPage()));

    await tester.enterText(find.byKey(Key('password_form_field')), 'password');

    expect(find.text('password'), findsOneWidget);
  });

  testWidgets('test_if_esqueceu_a_senha_is_tappable', (WidgetTester tester) async {
    print('test_if_esqueceu_a_senha_is_tappable');
    
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
    print('test_if_Cadastre-se_is_tappable');
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
    print('test_if_login_button_is_tappable');
    //Uses generate_login_form.dart file
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

  testWidgets('test_if_facebook_button_is_tappable', (WidgetTester tester) async {
    print('test_if_facebook_button_is_tappable');
    //Uses generate_social_media_buttons.dart file
    Finder facebookButton;
    bool touched = false;

    await tester.pumpWidget(buildTestableWidget(LoginPage()));

    facebookButton = find.byKey(Key('facebook_raised_button'));

    if(facebookButton.evaluate().isNotEmpty){ //Check if can find the tappable text
      await tester.tap(facebookButton);
      touched = true;
    }
    
    expect(touched, true);
  });
  testWidgets('test_if_google_button_is_tappable', (WidgetTester tester) async {
    print('test_if_google_button_is_tappable');
    //Uses generate_social_media_buttons.dart file
    Finder googleButton;
    bool touched = false;

    await tester.pumpWidget(buildTestableWidget(LoginPage()));

    googleButton = find.byKey(Key('google_raised_button'));

    if(googleButton.evaluate().isNotEmpty){ //Check if can find the tappable text
      await tester.tap(googleButton);
      touched = true;
    }
    
    expect(touched, true);
  });

  testWidgets('test_if_tapping_the_login_screen_shows_the_keyboard', (WidgetTester tester) async {
    expect(tester.testTextInput.isVisible, isFalse);

    await tester.pumpWidget(buildTestableWidget(LoginPage()));

    //Email form field
    await tester.showKeyboard(find.byKey(Key('email_form_field')));

    expect(tester.testTextInput.isVisible, isTrue);
    tester.testTextInput.hide();
    expect(tester.testTextInput.isVisible, isFalse);

    //Password form field
    await tester.showKeyboard(find.byKey(Key('password_form_field')));

    expect(tester.testTextInput.isVisible, isTrue);
    tester.testTextInput.hide();
    expect(tester.testTextInput.isVisible, isFalse);
    
  });
   
  //test_if_login_screen_with_the_keyboard_is_scrolling
  testWidgets('test_if_login_screen_with_the_keyboard_is_scrolling', (WidgetTester tester) async {
    print('test_if_login_screen_with_the_keyboard_is_scrolling');

    await tester.pumpWidget(buildTestableWidget(LoginPage()));
    
    await tester.showKeyboard(find.byKey(Key('email_form_field')));
    expect(tester.testTextInput.isVisible, isTrue);

    final Offset middleOfContainer = tester.getCenter(find.byKey(Key('email_form_field')));
    print(middleOfContainer);

    final Offset target = tester.getCenter(find.byKey(Key('signup_tappable_text')));
    print(target);

    //Gesture
    final TestGesture gesture = await tester.startGesture(target);
    await gesture.moveBy(const Offset(0.0, -40.0));
    await gesture.up();

    expect(tester.testTextInput.isVisible, isTrue); //Check if the keyboard still on screen
    print(tester.getCenter(find.byKey(Key('email_form_field'))));

    await tester.pump(); // redo layout
    expect(tester.getCenter(find.byKey(Key('signup_tappable_text'))), isNot(equals(middleOfContainer)));
    //await gesture.up();
  });

  //test_if_background_image_is_loading
}