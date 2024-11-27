import 'package:flutter/material.dart';
import 'package:ristek_pay/screens/login_page.dart';

class PrePage extends StatelessWidget {
  const PrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height *
              0.13, // Padding to be 13% of the screen height
          horizontal: MediaQuery.of(context).size.width *
              0.13, // Padding to be 13% of the screen width
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Ristek Purple Logo
            Image.asset(
              'assets/images/purple-logo.png',
              height: 140.0,
            ),

            // Spacing
            const SizedBox(
              height: 54.0,
            ),

            // Ristek Pay Title
            Text(
              'RISTEK Pay',
              style: TextStyle(
                fontSize: 40.58,
                fontWeight: FontWeight.w800,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),

            // Spacing
            const SizedBox(
              height: 17.0,
            ),

            // Ristek Tagline
            const Text(
              "#RemarkableEscalation",
              style: TextStyle(
                fontSize: 18.55,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),

            // Spacing
            const SizedBox(
              height: 70.0,
            ),

            // Next Button
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  minimumSize: const Size(double.infinity, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text(
                  'Next',
                  style: TextStyle(
                    fontSize: 18.55,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                )),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.tertiary,
    );
  }
}
