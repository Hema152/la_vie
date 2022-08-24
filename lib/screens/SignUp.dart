import 'package:flutter/material.dart';

void main (){
  runApp(SignUp());
}
class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          child: TextFormField(
            decoration: InputDecoration(

            ),
          ),
        ),
      ],
    );
  }
}
