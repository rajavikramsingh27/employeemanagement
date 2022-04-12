import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:flutter/material.dart';
import 'package:employeemanagement/Utils/Constants.dart';
import '../Styles/TextStyles.dart';

class TextFieldCustom extends StatelessWidget {
  final TextEditingController? controller;
  final bool? obscureText;
  final String? hintText;
  final String? title;
  final TextInputType? keyboardType;

  TextFieldCustom({
    Key? key,
    this.controller,
    this.title,
    this.hintText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText!,
      style: TextStyles.textStyles_14_normal.apply(
          color: ColorStyle.grayColor
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyles.textStyles_14_normal.apply(
          color: ColorStyle.grayColor
        )
      ),
    );
  }
}


// class TextFieldPasswordCustom extends StatefulWidget {
//   final TextEditingController? controller;
//   final String? hintText;
//   final TextInputType? keyboardType;
//
//   TextFieldPasswordCustom({
//     Key? key,
//     this.keyboardType = TextInputType.text,
//     this.controller,
//     this.hintText,
//   }) : super(key: key);
//
//   bool obscureText = true;
//
//   @override
//   _TextFieldPasswordCustomState createState() => _TextFieldPasswordCustomState();
// }
//
// class _TextFieldPasswordCustomState extends State<TextFieldPasswordCustom> {
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: widget.controller,
//       keyboardType: widget.keyboardType,
//       obscureText: widget.obscureText,
//       decoration: InputDecoration(
//           focusedBorder: OutlineInputBorder(
//             borderSide: BorderSide(
//                 color: ColorStyle.borderColorTF.withOpacity(0.4), width: 1.0
//             ),
//             borderRadius: BorderRadius.circular(12),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderSide: BorderSide(
//                 color: ColorStyle.borderColorTF.withOpacity(0.4), width: 1.0),
//             borderRadius: BorderRadius.circular(12),
//           ),
//           hintText: widget.hintText,
//           hintStyle: TextStyle(
//               fontSize: 16, fontFamily: 'Raleway', color: Colors.black26),
//           suffixIcon: InkWell(
//             child: Icon(
//               widget.obscureText
//                   ? Icons.visibility_outlined
//                   : Icons.visibility_off_outlined,
//               size: 24,
//               color: ColorStyle.fromHex("#011947").withOpacity(0.6),
//             ),
//             onTap: () {
//               widget.obscureText = !widget.obscureText;
//
//               setState(() {});
//             },
//           )),
//     );
//   }
// }