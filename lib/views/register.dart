import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("加入奶爸联盟"),
      ),
      body: _RegisterForm(),
    );
  }
}

class _RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<_RegisterForm> {
  GlobalKey _regFormKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Color btnColor = Theme.of(context).primaryColor;
    return Container(
      padding: EdgeInsets.all(20.0),
      alignment: Alignment.center,
      child: Form(
        key: _regFormKey,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  // icon: Icon(Icons.smartphone),
                  hintText: '手机号码',
                ),
              ),
            ),
            Padding(
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
                            style:
                                new TextStyle(fontSize: 16.0, color: btnColor),
                          ),
                        ),
                      ),
                    )
                  ],
                )),
            Padding(
              padding: EdgeInsets.only(top: 24.0),
              child: TextFormField(
                decoration: InputDecoration(
                    // icon: Icon(Icons.lock),
                    hintText: '登录密码（6-16位数字、字母、符号组合）'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      color: btnColor,
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
            ),
            //同意协议复选框及协议链接
            _AgreementCheckBox()
          ],
        ),
      ),
    );
  }
}

class _AgreementCheckBox extends StatefulWidget {
  @override
  _AgreementCheckBoxState createState() => new _AgreementCheckBoxState();
}

class _AgreementCheckBoxState extends State<_AgreementCheckBox> {
  bool _checkboxValue = false;
  @override
  Widget build(BuildContext context) {
    Color _activeColor = Theme.of(context).primaryColor;
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(
            value: _checkboxValue,
            activeColor: _activeColor,
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
