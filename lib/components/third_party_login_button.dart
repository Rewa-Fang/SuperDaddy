import 'package:flutter/material.dart';
import 'package:super_daddy/widgets/third_party_divider.dart';
import 'package:super_daddy/myIcon/myIcon.dart';

class ThridPartyLoginButton extends StatefulWidget {
  @override
  _ThridPartyLoginButtonState createState() => _ThridPartyLoginButtonState();
}

class _ThridPartyLoginButtonState extends State<ThridPartyLoginButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(50.0, 50.0, 50.0, 10.0),
      child: Column(
        children: <Widget>[
          ThirdPartyDivider(),
          Padding(
            padding: EdgeInsets.only(top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _thirdLoginBtn(
                    Icon(MyIcon.wechat), Color.fromARGB(255, 140, 220, 80)),
                _thirdLoginBtn(
                    Icon(MyIcon.qq), Color.fromARGB(255, 38, 184, 242)),
                _thirdLoginBtn(
                    Icon(MyIcon.weibo), Color.fromARGB(255, 227, 28, 52)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column _thirdLoginBtn(Icon buttonIcon, Color iconColor) {
    return Column(
      children: <Widget>[
        IconButton(
          padding: EdgeInsets.all(5.0),
          icon: buttonIcon,
          iconSize: 30.0,
          color: iconColor,
          onPressed: () {},
        )
      ],
    );
  }
}
