import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_books_test/app/onboarding/onboarding_view_model.dart';
import 'package:google_books_test/common_widgets/custom_buttons/custom_buttons.dart';

class OnboardingPage extends ConsumerWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  Future<void> onGetStarted(BuildContext context, WidgetRef ref) async {
    final onboardingViewModel = ref.read(onboardingViewModelProvider.notifier);
    await onboardingViewModel.completeOnboarding();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'So many books, \nso little time. ',
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
            FractionallySizedBox(
              widthFactor: 0.5,
              child: Image.asset('assets/book.png',
                  semanticLabel: 'Books App logo'),
            ),
            CustomRaisedButton(
              onPressed: () => onGetStarted(context, ref),
              color: Colors.indigo,
              borderRadius: 30,
              child: Text(
                'Get Started',
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
