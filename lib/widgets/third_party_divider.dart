import 'package:flutter/material.dart';

/*
 *  ------ 第三方平台登录 --------
 */
class ThirdPartyDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _solidLine(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              '第三方平台登录',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          _solidLine(),
        ],
      ),
    );
  }

  /*
   * 画线的方法 显示在 第三方平台登录 文字两边的水平直线
   */
  Expanded _solidLine() {
    return Expanded(
      child: SizedBox(
        height: 1.0, //高度即线的粗细
        // width: 10.0,  // 宽度可以不用定义- expanded会自动撑开至剩余空间宽度
        child: DecoratedBox(
          decoration: BoxDecoration(color: Colors.grey),
        ),
      ),
    );
  }
}
