import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:flutter/material.dart';
import 'package:employeemanagement/Utils/Constants.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';

class TextFieldCustom extends StatelessWidget {
  final TextEditingController? controller;
  final bool? obscureText;
  final String? labelText;
  final String? hintText;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;

  TextFieldCustom({
    Key? key,
    this.controller,
    this.hintText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.labelText = "",
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText!,
      style: TextStyles.textStyles_16_normal
          .apply(color: ColorStyle.secondryBlack),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          label: Text(
            labelText!,
          ),
          labelStyle: TextStyles.textStyles_14_normal
              .apply(color: ColorStyle.grayColor),
          hintText: hintText,
          hintStyle: TextStyles.textStyles_16_normal
              .apply(color: ColorStyle.grayColor)),
      onChanged: onChanged,
    );
  }
}
class TextFieldPasswordLoginCustom extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;

  TextFieldPasswordLoginCustom({
    Key? key,
    this.controller,
    this.hintText,
    this.keyboardType,
    this.onChanged,
    this.labelText = "",
  }) : super(key: key);

  bool obscureText = true;

  @override
  _TextFieldPasswordLoginCustomState createState() =>
      _TextFieldPasswordLoginCustomState();
}

class _TextFieldPasswordLoginCustomState extends State<TextFieldPasswordLoginCustom> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText,
      style: TextStyles.textStyles_16_normal
          .apply(color: ColorStyle.secondryBlack),
      decoration: InputDecoration(
          label: Text(
            widget.labelText!,
          ),
          labelStyle: TextStyles.textStyles_14_normal
              .apply(color: ColorStyle.secondryBlack),
          hintText: widget.hintText,
          hintStyle: TextStyles.textStyles_16_normal
              .apply(color: ColorStyle.grayColor),
          suffixIcon: InkWell(
            child: Icon(
              widget.obscureText
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              size: 24,
              color: ColorStyle.secondryBlack,
            ),
            onTap: () {
              widget.obscureText = !widget.obscureText;

              setState(() {});
            },
          )),
      onChanged: widget.onChanged,
    );
  }
}

class TextFieldLoginCustom extends StatelessWidget {
  final TextEditingController? controller;
  final bool? obscureText;
  final String? labelText;
  final String? hintText;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;

  TextFieldLoginCustom({
    Key? key,
    this.controller,
    this.hintText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.labelText = "",
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText!,
      style: TextStyles.textStyles_16_normal
          .apply(color: ColorStyle.secondryBlack),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          label: Text(
            labelText!,
          ),
          labelStyle: TextStyles.textStyles_14_normal
              .apply(color: ColorStyle.secondryBlack),
          hintText: hintText,
          hintStyle: TextStyles.textStyles_16_normal
              .apply(color: ColorStyle.grayColor)),
      onChanged: onChanged,
    );
  }
}

class TextFieldOTP extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final Function(String)? onChanged;

  const TextFieldOTP({
    Key? key,
    this.controller,
    this.focusNode,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      controller: controller,
      focusNode: focusNode,
      textAlign: TextAlign.center,
      maxLength: 1,
      keyboardType: TextInputType.number,
      style: TextStyles.textStyles_30.apply(),
      cursorColor: ColorStyle.blueColor,
      decoration: InputDecoration(
        // filled: true,
        // fillColor: Colors.red,
        contentPadding: EdgeInsets.all(0),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorStyle.grayColor),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorStyle.blueColor),
        ),
        counter: Offstage(),
        border: InputBorder.none,
      ),
      onChanged: onChanged,
    );
  }
}

