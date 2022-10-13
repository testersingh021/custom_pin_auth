import 'package:custom_pin_auth/ui/authentication_pin_page.dart';
import 'package:custom_pin_auth/ui/create_pin_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

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
