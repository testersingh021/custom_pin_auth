# custom_pin_auth

[![Pub](https://img.shields.io/pub/v/custom_pin_auth.svg)](https://pub.dartlang.org/packages/custom_pin_auth) 

# Flutter - Pin Lock Screen

A Flutter package for iOS and Android for showing pin input screen, similar to Native iOS.
# Then use import

```dart
import 'package:custom_pin_auth/ui/create_pin_page.dart';
```

```dart
import 'package:custom_pin_auth/ui/authentication_pin_page.dart';
```
# Create a beautiful Pin lock Screen simply.

```dart
class _HomeScreenState extends State<HomeScreen> {
  static const String createPINCode = "Create PIN code";
  static const String authenticationByPINCode = "Authentication by PIN code";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            TextButton(
              onPressed: () {
                // Navigator.push(context, CreatePIN.route());
                _navigateAndDisplaySelection(context, const CreatePIN(),"Pin-Created Successfully: ");
              },
              child: const Center(child: Text(createPINCode)),
            ),
            TextButton(
              onPressed: () {
                //  Navigator.push(context, AuthenticationPIN.route());
                _navigateAndDisplaySelection(
                    context, const AuthenticationPIN(),"Authentication Successfully: ");
              },
              child: const Center(child: Text(authenticationByPINCode)),
            ),
          ],
        ),
      ),
    );
  }

// A method that launches the SelectionScreen and awaits the result from
// Navigator.pop.
  Future<void> _navigateAndDisplaySelection(
      BuildContext context, Widget widget, String status) async {
    // Navigator.push returns a Future that completes after calling
    // Navigator.pop on the Selection Screen.
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );

    // When a BuildContext is used from a StatefulWidget, the mounted property
    // must be checked after an asynchronous gap.
    if (!mounted) return;

    // After the Selection Screen returns a result, hide any previous snackbars
    // and show the new result.
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text("${result}")));
  }

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const HomeScreen());
  }
}

```
## Relase notes:
### 1.0.1: 
Basic implementation of a widget.
- You could show a widget, enter passcode and validate it.



