import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.green,
  bool isUpperCase = true,
  double radius = 10.0,
  required Function function,
  required String text,
}) =>
    Container(
      width: width,
      height: 40,
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
    );
Widget LogIndefaultButton({
  double width = double.infinity,
  Color background = Colors.red,
  bool isUpperCase = true,
  double radius = 10.0,
  required Function function,
  required String text,
}) {
  return Container(
    width: width,
    height: 40,
    child: MaterialButton(
      onPressed: () {
        function();
      },
      child: Text(
        isUpperCase ? text.toUpperCase() : text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(
        radius,
      ),
      color: background,
    ),
  );
}

Widget defaultformfield({
  required TextEditingController controller,
  required TextInputType type,
  bool isPasssword = false,
  String? Function(String?)? onSubmit,
  String? Function(String?)? onChange,
  required String label,
  required IconData prefix,
  Function? suffixPressed,
  Function()? onTap,
  bool isClickable = true,
  required String? Function(String?)? validate,
  IconData? suffix,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      enabled: isClickable,
      obscureText: isPasssword,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,

      validator: validate,
      // (value)=> validate(value),
      // (s){validate(s)
      // ;},

      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: () {
                  suffixPressed!();
                },
                icon: Icon(
                  suffix,
                ),
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
