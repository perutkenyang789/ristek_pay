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
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                      (Route<dynamic> route) => false,
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          title: Row(
                            children: [
                              Icon(
                                Icons.error_outline,
                                color: Colors.red,
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                'Login Failed',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Your credentials are incorrect. Please try again.',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.grey[800],
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  Icon(
                                    Icons.lock_outline,
                                    color: Colors.grey,
                                    size: 18,
                                  ),
                                  const SizedBox(width: 5),
                                  SizedBox(
                                    width: 250,
                                    child: Text(
                                      'Ensure your email and password are correct.',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              child: const Text(
                                'OK',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
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
