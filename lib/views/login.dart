import "package:flutter/material.dart";
import 'package:super_daddy/components/third_party_login_button.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("奶爸，你好！"),
      ),
      body: Column(
        children: <Widget>[
          Logo(),
          LoginForm(),
          LoginBtn(),
          ThridPartyLoginButton()
        ],
      ),
    );
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 80.0),
      alignment: Alignment.center,
      color: Color.fromARGB(255, 43, 140, 251),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0), //10像素圆角
        child: Image.asset(
          'assets/images/logo.jpeg',
          width: 80.0,
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
        child: Form(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: '用户名',
                      hintText: '手机号或邮箱',
                      icon: Icon(Icons.person)),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "密码",
                    hintText: "您的登录密码",
                    icon: Icon(Icons.lock)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginBtn extends StatefulWidget {
  @override
  _LoginBtnState createState() => _LoginBtnState();
}

class _LoginBtnState extends State<LoginBtn> {
  @override
  Widget build(BuildContext context) {
    Color btnColor = Theme.of(context).primaryColor;
    return Padding(
        padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 0.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    color: btnColor,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(12.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Text(
                      '登  录',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  InkWell(
                    // splashColor: btnColor,
                    child: Text('注册账号',
                        style: TextStyle(color: Colors.blue, fontSize: 16.0)),
                    onTap: () {},
                  ),
                  InkWell(
                    // splashColor: btnColor,
                    child: Text('忘记密码？',
                        style: TextStyle(color: Colors.blue, fontSize: 16.0)),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
