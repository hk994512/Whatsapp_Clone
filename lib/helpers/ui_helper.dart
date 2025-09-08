import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UIHelpers {
  static Widget appText(
    String text, {
    String color = '000000',
    double? fontSize,
    FontWeight? fontWeight,
  }) {
    int value =
        !color.startsWith('#')
            ? int.parse('0xFF$color')
            : int.parse('0xFF${color.replaceFirst('#', '')}');
    return Text(
      overflow: TextOverflow.clip,
      text,
      style: TextStyle(
        color: Color(value),
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }

  static Widget appImage(
    String imagePath, {
    Color? color,
    double? height,
    double? width,
    BoxFit? fit,
  }) {
    return Image.asset(
      imagePath,
      color: color,
      height: height,
      width: width,
      fit: fit,
    );
  }

  static appTextField(
    TextEditingController controller,
    String labelText, {
    String imagePath = '',
    String? prefix,
    bool hasPass = false,
    void Function(String)? onSubmitted,
  }) {
    return Container(
      height: 48,
      width: 330,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        border: Border.all(color: Color(0xffDFF7E2)),
        borderRadius: BorderRadius.horizontal(),
      ),
      child: TextField(
        onSubmitted: onSubmitted,
        obscureText: hasPass,
        decoration: InputDecoration(
          prefixText: prefix,
          
          border: InputBorder.none,
          labelText: labelText,
          contentPadding: EdgeInsets.only(left: 30),
          suffixIcon: imagePath.isEmpty ? null : UIHelpers.appImage(imagePath),
        ),
      ),
    );
  }

  static appButton(
    void Function() onPressed,
    String text, {
    bool hasIcon = false,
    Widget icon = const Icon(CupertinoIcons.chevron_forward),
    double height = 60,
    double width = 315,
    Color fgcolor = const Color(0xff093030),
    Color bgColor = const Color(0xff92A3FD),
  }) {
    return SizedBox(
      height: height,
      width: width,
      child:
          hasIcon
              ? ElevatedButton.icon(
                icon: UIHelpers.appText(text),
                style: ElevatedButton.styleFrom(
                  backgroundColor: bgColor,
                  foregroundColor: fgcolor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: onPressed,
                label: icon,
              )
              : ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: bgColor,
                  foregroundColor: Color(0xffFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: onPressed,
                child: UIHelpers.appText(
                  text,
                  color: 'FFFFFF',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
    );
  }
}
