import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Common.dart';
import '../flutter_beautiful_popup.dart';

/// ![](https://raw.githubusercontent.com/jaweii/Flutter_beautiful_popup/master/img/bg/success.png)
class TemplateSuccess extends BeautifulPopupTemplate {
  TemplateSuccess(super.options, {super.key});

  @override
  final illustrationPath = 'success.png';
  @override
  Color get primaryColor => options.primaryColor ?? const Color(0xff4ABDFE);
  @override
  final maxWidth = 400;
  @override
  final maxHeight = 588;
  @override
  final bodyMargin = 30;
  @override
  get layout {
    return [
      Positioned(
        child: background,
      ),
      Positioned(
        top: percentH(46),
        child: title,
      ),
      Positioned(
        top: percentH(58),
        left: percentW(8),
        right: percentW(8),
        height: percentH(actions == null ? 40 : 24),
        child: content,
      ),
      Positioned(
        bottom: percentW(8),
        left: percentW(8),
        right: percentW(8),
        child: actions ?? Container(),
      ),
    ];
  }
}
