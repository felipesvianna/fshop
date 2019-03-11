// This is the onboarding_screen widget test file.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './testing_util.dart';
import 'package:fshop/screens/onboarding_screen/onboarding_screen.dart';

void _showDebugDetailsPrintTextEvaluate (bool details) {
  var findByText;

  if(details){
    findByText = find.byType(Text);
    print(findByText.evaluate());
  }
}

void main() {
  testWidgets('test_if_onboarding_screen_loads', (WidgetTester tester) async {
    bool debugDetails = false; //Enable prints for debugging

    await tester.pumpWidget(buildTestableWidget(OnBoardingPage()));
    await tester.pumpAndSettle();
    
    expect(find.byType(Text).evaluate().isEmpty, false);

    _showDebugDetailsPrintTextEvaluate(debugDetails);
  });

  testWidgets('test_if_the_skip_button_is_working', (WidgetTester tester) async {
    print('test_if_the_skip_button_is_working');

    Finder skipButton;
    bool debugDetails = false; //Enable prints for debugging

    await tester.pumpWidget(buildTestableWidget(OnBoardingPage()));
    skipButton = find.byKey(Key('skipButton'));

    if(skipButton.evaluate().isNotEmpty){ //Check if can find the tappable text
      expect(find.text('Oi'), findsOneWidget);

      _showDebugDetailsPrintTextEvaluate(debugDetails);
      
      //By now, its routing to NotFoundPage. Later, change to HomePage screen
      await tester.tap(skipButton);
      await tester.pumpAndSettle();
      expect(find.text('Em desenvolvimento'), findsOneWidget);

      _showDebugDetailsPrintTextEvaluate(debugDetails);
    }
  });

  testWidgets('test_if_the_pages_has_content_and_are_swapping_to_the_left', (WidgetTester tester) async {
    bool debugDetails = false; //Enable prints for debugging
    
    await tester.pumpWidget(buildTestableWidget(OnBoardingPage()));
    
    _showDebugDetailsPrintTextEvaluate(debugDetails);
    
    //Test page 1
    expect(find.text('Oi'), findsOneWidget);

    //Swap to page 2
    await tester.drag(find.byType(Image), const Offset(-500.0, 0.0));
    await tester.pumpAndSettle();

    //Test page 2
    expect(find.text('Encontre seu produto'), findsOneWidget);
    
    _showDebugDetailsPrintTextEvaluate(debugDetails);

    //Swap to page 3
    await tester.drag(find.byType(Image), const Offset(-500.0, 0.0));
    await tester.pumpAndSettle();

    //Test page 3
    expect(find.text('Efetue a compra'), findsOneWidget);

    _showDebugDetailsPrintTextEvaluate(debugDetails);
  }); 

  //test_if_the_image_asset_loads_in_the_page
}

