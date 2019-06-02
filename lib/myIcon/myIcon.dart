import 'package:flutter/widgets.dart';

class MyIcon {
  static const IconData wechat = const _MyIconData(0xe758);
  static const IconData qq = const _MyIconData(0xe601);
  static const IconData weibo = const _MyIconData(0xe611);
  static const IconData naiping = const _MyIconData(0xe637);
  static const IconData home = const _MyIconData(0xe603);
  static const IconData user = const _MyIconData(0xe602);
  static const IconData commnet = const _MyIconData(0xe604);
  static const IconData camera_add = const _MyIconData(0xe600);
  static const IconData diary = const _MyIconData(0xe63f);
  static const IconData naiping2 = const _MyIconData(0xe607);
}

class _MyIconData extends IconData {
  const _MyIconData(int codePoint) : super(codePoint, fontFamily: 'myIconfont');
}
