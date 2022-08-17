import 'package:flutter/material.dart';
import 'package:ridappfriend/states/create_account.dart';
import 'package:ridappfriend/ulitity/my_constant.dart';
import 'package:ridappfriend/widget/show_button.dart';
import 'package:ridappfriend/widget/show_form.dart';
import 'package:ridappfriend/widget/show_image.dart';
import 'package:ridappfriend/widget/show_text.dart';

class Authen extends StatelessWidget {
  const Authen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constants) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => FocusScope.of(context).requestFocus(FocusScopeNode()),
          child: Container(
            decoration: MyConstant().basicBox(),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  logoAndTitle(constants),
                  userForm(constants),
                  passwordForm(constants),
                  newButton(context: context),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }

  Container newButton({required BuildContext context}) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ShowButton(label: 'Singin', pressFunc: () {}),
          const SizedBox(
            width: 4,
          ),
          ShowButton(
              label: 'Singup',
              pressFunc: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CreateAccount(),
                    ));
              }),
        ],
      ),
    );
  }

  Container passwordForm(BoxConstraints constants) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      width: constants.maxWidth * 0.55,
      child: ShowForm(
        iconData: Icons.lock_outlined,
        hint: 'Password',
        obsceu: true,
        changeFunc: (String string) {},
      ),
    );
  }

  Container userForm(BoxConstraints constants) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      width: constants.maxWidth * 0.55,
      child: ShowForm(
        iconData: Icons.person_outline,
        hint: 'User',
        changeFunc: (String string) {},
      ),
    );
  }

  SizedBox logoAndTitle(BoxConstraints constants) {
    return SizedBox(
      width: constants.maxWidth * 0.6,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            width: constants.maxWidth * 0.12,
            child: const ShowImage(),
          ),
          ShowText(
            text: 'Login:',
            textStyle: MyConstant().h1Style(),
          ),
        ],
      ),
    );
  }
}
