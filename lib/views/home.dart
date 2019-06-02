import 'package:flutter/material.dart';
import 'package:super_daddy/myIcon/myIcon.dart';
import 'package:super_daddy/views/diary_list.dart';
import 'package:super_daddy/views/personal.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedIndex = 0;
  Color greyColor = Colors.grey;
  var _pageList = [];

  void initState() {
    // _retrieveData();
    _pageList = [DiaryList(), PersonalPage()];
  }

  @override
  Widget build(BuildContext context) {
    initState();
    Color primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: AppBar(
        title: Text("幸路历程"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(MyIcon.camera_add),
            onPressed: () {},
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange[700],
        child: Icon(MyIcon.naiping),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: _selectedIndex == 0 ? primaryColor : greyColor,
              ),
              onPressed: () {
                _onItemTapped(0);
              },
            ),
            //sizedBox 为凹凸按钮占位
            SizedBox(),
            IconButton(
              icon: Icon(
                MyIcon.user,
                color: _selectedIndex == 1 ? primaryColor : greyColor,
              ),
              onPressed: () {
                _onItemTapped(1);
              },
            ),
          ],
        ),
      ),
      body: _pageList[_selectedIndex],
    );
  }

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  _retrieveData() {
    // var urlList = [
    //   'http://09imgmini.eastday.com/mobile/20190214/20190214071055_64630101afc59aa304cebb0d84cfffb5_1.jpeg'
    // ];
    // DiaryModel testDiary = new DiaryModel({
    //   1000,
    //   1,
    //   '05月19日',
    //   '第一次去动物园',
    //   '1岁5个月11天',
    //   '小老斧(虎)、西(狮)子、二(鳄)鱼、大胸(象)。。。。。',
    //   urlList
    // });
    setState(() {
      // _diaryDataList.add(testDiary);
      print(111111);
    });
  }
}
