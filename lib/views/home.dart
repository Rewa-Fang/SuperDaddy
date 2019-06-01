import 'package:flutter/material.dart';
import 'package:super_daddy/model/diary_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _diaryDataList = [1, 2, 3, 4, 5];

  // @override
  // void initState() {
  //   // _retrieveData();
  // }

  @override
  Widget build(BuildContext context) {
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
            icon: Icon(Icons.camera_alt),
            onPressed: () {},
          )
        ],
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ListView.builder(
      itemCount: _diaryDataList.length,
      itemBuilder: _buildItem,
    );
  }

  Widget _buildItem(BuildContext context, int index) {
    // DiaryModel diary = _diaryDataList[index];
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[Text('05月19日'), Text('1岁5个月11天')],
        ),
        Column(
          children: <Widget>[
            Text('第一次去动物园'),
            Text('小老斧(虎)、西(狮)子、二(鳄)鱼、大胸(象)。。。。。'),
            // Image.network(diary.images[0])
          ],
        )
      ],
    );
  }

  // _retrieveData() {
  //   var urlList = [
  //     'http://09imgmini.eastday.com/mobile/20190214/20190214071055_64630101afc59aa304cebb0d84cfffb5_1.jpeg'
  //   ];
  //   DiaryModel testDiary = new DiaryModel({
  //     1000,
  //     1,
  //     '05月19日',
  //     '第一次去动物园',
  //     '1岁5个月11天',
  //     '小老斧(虎)、西(狮)子、二(鳄)鱼、大胸(象)。。。。。',
  //     urlList
  //   });
  //   setState(() {
  //     // _diaryDataList.add(testDiary);
  //   });
  // }
}
