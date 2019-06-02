import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  GlobalKey _regFormKey = new GlobalKey<FormState>();
  bool _checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("加入奶爸联盟"),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      padding: EdgeInsets.all(20.0),
      alignment: Alignment.center,
      child: Form(
        key: _regFormKey,
        child: Column(
          children: <Widget>[
            _phoneInput(),
            _verifyCodeInput(),
            _pwdInput(),
            _registerBtn(),
            //同意协议复选框及协议链接
            _agreementCheckBox()
          ],
        ),
      ),
    );
  }

  Widget _phoneInput() {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: TextFormField(
        decoration: InputDecoration(
          // icon: Icon(Icons.smartphone),
          hintText: '手机号码',
        ),
      ),
    );
  }

  Widget _pwdInput() {
    return Padding(
      padding: EdgeInsets.only(top: 24.0),
      child: TextFormField(
        decoration: InputDecoration(
            // icon: Icon(Icons.lock),
            hintText: '登录密码（6-16位数字、字母、符号组合）'),
      ),
    );
  }

  Widget _verifyCodeInput() {
    return Padding(
        padding: EdgeInsets.only(top: 24.0),
        child: Stack(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                // icon: Icon(Icons.security),
                hintText: '验证码',
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: () {},
                child: new Container(
                  alignment: Alignment.bottomCenter,
                  width: 100.0,
                  height: 36.0,
                  child: new Text(
                    '获取验证码',
                    style: new TextStyle(fontSize: 16.0, color: Colors.blue),
                  ),
                ),
              ),
            )
          ],
        ));
  }

  Widget _registerBtn() {
    return Padding(
      padding: EdgeInsets.only(top: 50.0),
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
                    '立即注册',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              InkWell(
                child: Text('已有账号，立即登录 >',
                    style: TextStyle(color: Colors.blue, fontSize: 16.0)),
                onTap: () {
                  Navigator.pushNamed(context, 'login_page');
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _agreementCheckBox() {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(
            value: _checkboxValue,
            onChanged: (value) {
              setState(() {
                _checkboxValue = value;
              });
            },
          ),
          InkWell(
            // splashColor: btnColor,
            child: Text('注册需要同意《卖身协议》',
                style: TextStyle(color: Colors.blue, fontSize: 16.0)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
