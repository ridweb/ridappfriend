import 'package:flutter/material.dart';
import 'package:ridappfriend/widget/show_button.dart';
import 'package:ridappfriend/widget/show_form.dart';
import 'package:ridappfriend/widget/show_icon_button.dart';
import 'package:ridappfriend/widget/show_image.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => FocusScope.of(context).requestFocus(FocusScopeNode()),
            child: ListView(
              children: [
                newImage(constraints),
                createCenter(
                  constraints,
                  widget: ShowForm(
                    hint: 'Name:',
                    changeFunc: (p0) {},
                  ),
                ),
                createCenter(
                  constraints,
                  widget: ShowForm(
                    hint: 'User:',
                    changeFunc: (p0) {},
                  ),
                ),
                createCenter(
                  constraints,
                  widget: ShowForm(
                    hint: 'Password:',
                    changeFunc: (p0) {},
                  ),
                ),
                createCenter(
                  constraints,
                  widget: ShowButton(
                    label: 'Create Account',
                    pressFunc: () {},
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Row createCenter(BoxConstraints constraints, {required Widget widget}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 16),
          width: constraints.maxWidth * 0.6,
          child: widget,
        ),
      ],
    );
  }

  Row newImage(BoxConstraints constraints) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: constraints.maxWidth * 0.6,
          height: constraints.maxWidth * 0.6,
          child: Stack(
            children: [
              const ShowImage(
                path: 'images/image.png',
              ),
              Positioned(
                bottom: 0,
                child: ShowIconButton(
                    iconData: Icons.add_a_photo, pressFunc: () {}),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: ShowIconButton(
                    iconData: Icons.add_photo_alternate, pressFunc: () {}),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
