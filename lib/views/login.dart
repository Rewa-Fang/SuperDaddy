import 'dart:convert';

import "package:flutter/material.dart";
import 'package:super_daddy/components/third_party_login_button.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // 编辑框的控制器 通过它可以设置/获取编辑框的内容、选择编辑内容、监听编辑文本改变事件
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();

  //FormState为Form的State类  可以通过它来对Form的子孙FormField进行统一操作
  GlobalKey _formKey = new GlobalKey<FormState>();

  Widget _usernameInput() {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.0),
      child: TextFormField(
        controller: _unameController,
        decoration: InputDecoration(
          // labelText: '用户名',
          hintText: '手机号或邮箱',
          icon: Icon(Icons.person),
        ),
        // 校验用户名
        validator: (v) {
          return v.trim().length > 0 ? null : "请输入用户名";
        },
      ),
    );
  }

  Widget _pwdInput() {
    return TextFormField(
      controller: _pwdController,
      decoration: InputDecoration(
        // labelText: "密码",
        hintText: "您的登录密码",
        icon: Icon(Icons.lock),
      ),
      obscureText: true, //设置为密码框
      //校验密码
      validator: (v) {
        return v.trim().length > 5 ? null : "请输入密码";
      },
    );
  }

  Widget _loginBtn() {
    return Padding(
      padding: EdgeInsets.only(top: 30.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: RaisedButton(
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
                  onPressed: () {
                    if ((_formKey.currentState as FormState).validate()) {
                      String username = _unameController.text;
                      String pwd = _pwdController.text;

                      Map<String, dynamic> user =
                          json.decode('{"name":"$username","email":"$pwd"}');
                      print(user);

                      Navigator.pushNamed(context, 'home_page',
                          arguments: user);
                    }
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _registerForgetPwd() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          InkWell(
            child: Text('现在注册 >',
                style: TextStyle(color: Colors.blue, fontSize: 16.0)),
            onTap: () {
              Navigator.pushNamed(context, 'register_page');
            },
          ),
          InkWell(
            child: Text('忘记密码？',
                style: TextStyle(color: Colors.blue, fontSize: 16.0)),
            onTap: () {
              showTipsDialog('Hi', '还个没做好，重新注册一个吧！');
            },
          ),
        ],
      ),
    );
  }

  void showTipsDialog(title, content) {
    showDialog(
        context: context,
        builder: (ctx) {
          return SimpleDialog(
            title: Text(title),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  content,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              )
            ],
          );
        });
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.fromLTRB(50.0, 25.0, 50.0, 10.0),
      child: Form(
        key: _formKey, //设置globalKey，用于后面获取FormState
        child: Column(
          children: <Widget>[
            _usernameInput(),
            _pwdInput(),
            _loginBtn(),
            _registerForgetPwd()
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("奶爸，你好！"),
      ),
      body: Column(
        children: <Widget>[
          Logo(),
          _buildBody(),
          Expanded(
            child: ThridPartyLoginButton(),
          ),
        ],
      ),
    );
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50.0),
      alignment: Alignment.center,
      color: Colors.orange[700],
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
