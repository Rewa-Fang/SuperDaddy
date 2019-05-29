library font_social_flutter;
import 'package:flutter/widgets.dart';
class RewaIcon {
  static const IconData wechat = const _RewaIconData(0xe758);
  static const IconData qq = const _RewaIconData(0xe601);
  static const IconData weibo = const _RewaIconData(0xe611);
}

class _RewaIconData extends IconData {
  
  const _RewaIconData(int codePoint) : super(codePoint, fontFamily: 'RewaIcon',fontPackage:"rewa_icon");
}