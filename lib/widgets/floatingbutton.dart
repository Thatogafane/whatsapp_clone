import 'package:flutter/material.dart';

import '../constant.dart';

class FloatingButton extends StatelessWidget {
  final Function press;
  final Widget child;
  final Widget backgroundColor;

  const FloatingButton({
    Key key,
    this.press,
    this.child,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: press,
      child: child,
      backgroundColor: kSecondaryColor,
    );
  }
}

// FloatingActionButton(
//       onPressed: () {},
//       child: const Icon(Icons.chat_outlined),
//       backgroundColor: kSecondaryColor,
//     );