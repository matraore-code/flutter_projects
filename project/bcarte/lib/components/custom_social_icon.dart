import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconsButton extends StatelessWidget {
  const IconsButton({
    Key? key,
    required this.name,
    }) : super(key: key);
      final String name;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: FaIcon(FontAwesomeIcons.instagram),
      onPressed: () {},
    );
  }
}

// class IconsButton extends StatefulWidget {
//   const IconsButton({
//     Key? key,
//     required this.name,
//   }) : super(key: key);
//   final String name;
//   @override
//   _IconsButtonState createState() => _IconsButtonState();
// }

// class _IconsButtonState extends State<IconsButton> {
//   @override
//   Widget build(BuildContext context) {
//      return IconButton(
//       icon: FaIcon(FontAwesomeIcons.accessibleIcon),
//        onPressed: () {},     );
//   }
// }
