import 'package:flutter/material.dart';

class InputCard {
  final String title;
  final String hintText;
  final bool isPassword;
  TextEditingController controller = TextEditingController();

  InputCard({
    required this.title,
    required this.hintText,
    required this.isPassword,
    required this.controller,
  });
}

class InputBox extends StatelessWidget {
  final InputCard inputCard;

  const InputBox(this.inputCard, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 295.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            inputCard.title,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          // Spacing
          const SizedBox(
            height: 8.0,
          ),
          TextFormField(
            controller: inputCard.controller,
            decoration: InputDecoration(
              hintText: inputCard.hintText,
              hintStyle: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
              ),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide.none,
              ),
            ),
            obscureText: inputCard.isPassword,
          )
        ],
      ),
    );
  }
}
