import 'package:flutter/widgets.dart';

class MyIcon {
  static const IconData wechat = const _MyIconData(0xe758);
  static const IconData qq = const _MyIconData(0xe601);
  static const IconData weibo = const _MyIconData(0xe611);
}

class _MyIconData extends IconData {
  const _MyIconData(int codePoint) : super(codePoint, fontFamily: 'myIconfont');
}
