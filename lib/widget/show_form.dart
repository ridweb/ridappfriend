import 'package:flutter/material.dart';

import 'package:ridappfriend/ulitity/my_constant.dart';

class ShowForm extends StatelessWidget {
  final String hint;
  final bool? obsceu;
  final IconData? iconData;
  final Function(String) changeFunc;
  const ShowForm({
    Key? key,
    required this.hint,
    this.obsceu,
    this.iconData,
    required this.changeFunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextFormField(
        onChanged: changeFunc,
        obscureText: obsceu ?? false,
        decoration: InputDecoration(
          suffixIcon: iconData == null ? const SizedBox() : Icon(iconData),
          filled: true,
          fillColor: Colors.white.withOpacity(0.75),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          hintText: hint,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: MyConstant.dart,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: MyConstant.active,
              )),
        ),
      ),
    );
  }
}
