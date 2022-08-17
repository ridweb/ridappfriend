import 'package:flutter/material.dart';
import 'package:ridappfriend/ulitity/my_constant.dart';

class ShowIconButton extends StatelessWidget {
  final IconData iconData;
  final Function() pressFunc;
  const ShowIconButton({
    Key? key,
    required this.iconData,
    required this.pressFunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: pressFunc,
      icon: Icon(
        iconData,
        color: MyConstant.active,
      ),
    );
  }
}
