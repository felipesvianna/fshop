// This is the onboarding_screen widget test file.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './testing_util.dart';
import 'package:fshop/screens/onboarding_screen/onboarding_screen.dart';

void main() {
  testWidgets('test_if_onboarding_screen_loads', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(OnBoardingPage()));
    await tester.pumpAndSettle();

    var findByText = find.byType(Text);
    print(findByText.evaluate());

    expect(findByText.evaluate().isEmpty, false);
  });

  testWidgets('test_if_the_skip_button_is_working', (WidgetTester tester) async {
    print('test_if_the_skip_button_is_working');

    Finder skipButton;
    //var findByText;

    await tester.pumpWidget(buildTestableWidget(OnBoardingPage()));
    skipButton = find.byKey(Key('skipButton'));

    if(skipButton.evaluate().isNotEmpty){ //Check if can find the tappable text
      //findByText = find.byType(Text);
      //print(findByText.evaluate());
      expect(find.text('Oi'), findsOneWidget);
      
      //By now, its routing to NotFoundPage. Later, change to HomePage screen
      await tester.tap(skipButton);
      await tester.pumpAndSettle();
      //findByText = find.byType(Text);
      //print(findByText.evaluate());
      expect(find.text('Em desenvolvimento'), findsOneWidget);
    }
  });

  //test_if_theres_text_is_on_the_page
  //test_if_the_pages are_swapping_to_the_left
  

  //test_if_the_image_asset_loads_in_the_page
}

