import 'package:flutter/material.dart';
import 'package:ridappfriend/ulitity/my_constant.dart';

class ShowButton extends StatelessWidget {
  final String label;
  final Function() pressFunc;
  const ShowButton({
    Key? key,
    required this.label,
    required this.pressFunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: MyConstant.bgColor,
      ),
      onPressed: pressFunc,
      child: Text(label),
    );
  }
}
