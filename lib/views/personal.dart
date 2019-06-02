import 'package:flutter/material.dart';

class PersonalPage extends StatefulWidget {
  @override
  _PersonalPageState createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  var _menuList = [1, 2, 3];
  final Icon _arrowIcon = Icon(
    Icons.arrow_forward_ios,
    color: Colors.grey,
  );

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        userInfo(),
        menuItem(Icons.photo_album, '相册', () {
          print('相册');
        }),
        menuItem(Icons.favorite, '收藏', () {
          print('收藏');
        }),
        menuItem(Icons.settings, '设置', () {
          print('设置');
        }),
        Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      '退出登录',
                      style: TextStyle(fontSize: 18.0, color: Colors.red),
                    ),
                  ),
                  color: Colors.white,
                  onPressed: () {
                    _neverSatisfied();
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> _neverSatisfied() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('提 示'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('确定退出登录吗.'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('取消'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('确定'),
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'login_page');
              },
            ),
          ],
        );
      },
    );
  }

  userInfo() {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.all(40.0),
        margin: EdgeInsets.only(bottom: 20.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Image.asset(
                'assets/images/logo.jpeg',
                width: 70.0,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('用户名',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)),
                Text('ID: 89757'),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.reorder),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  menuItem(IconData icon, String title, Function onTap) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 10.0),
      margin: EdgeInsets.only(top: 5.0),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        trailing: IconButton(
          icon: _arrowIcon,
          onPressed: onTap,
        ),
      ),
    );
  }
}
