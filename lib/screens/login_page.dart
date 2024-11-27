import 'package:flutter/material.dart';
import 'package:ristek_pay/screens/home_page.dart';
import 'package:ristek_pay/widgets/input_box.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Ristek White Logo
              Image.asset(
                'assets/images/white-logo.png',
                height: 140.0,
              ),

              // Spacing
              const SizedBox(
                height: 54.0,
              ),

              // Name Text Field
              InputBox(
                InputCard(
                  title: 'Nama',
                  hintText: 'e.g. Budi Santoso',
                  isPassword: false,
                  controller: nameController,
                ),
              ),

              // Spacing
              const SizedBox(
                height: 16.0,
              ),

              // Password Text Field
              InputBox(
                InputCard(
                  title: 'Password',
                  hintText: 'e.g. bUd1S4nt0s0',
                  isPassword: true,
                  controller: passwordController,
                ),
              ),

              // Spacing
              const SizedBox(
                height: 100.0,
              ),

              // Login Button
              ElevatedButton(
                onPressed: () {
                  if (nameController.text == 'Ristek' &&
                      passwordController.text == '123456') {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  } else {
                    // TODO: Fix Alert Dialog
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Login Failed'),
                          content: const Text('Please check your credentials'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.tertiary,
                  minimumSize: const Size(295.0, 48.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  textStyle: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
