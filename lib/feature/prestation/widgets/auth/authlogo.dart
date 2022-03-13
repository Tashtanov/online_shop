import 'package:flutter/material.dart';
class Authlogo extends StatelessWidget {
  const Authlogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.login_outlined,
          size: 100,
          color: Colors.white,
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          "LOG IN",
          style: TextStyle(
              color: Colors.white,
              fontSize: 60),
        )
      ],
    );
  }
}
