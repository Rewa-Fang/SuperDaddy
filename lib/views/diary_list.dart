import 'package:flutter/material.dart';
import 'package:super_daddy/myIcon/myIcon.dart';

class DiaryList extends StatefulWidget {
  @override
  _DiaryListState createState() => _DiaryListState();
}

class _DiaryListState extends State<DiaryList> {
  var _diaryDataList = [1, 2, 3, 4, 5, 11, 22, 33, 44, 55, 16, 27, 38, 49, 51];
  Color greyColor = Colors.grey;

  Widget _buildBody(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 30.0),
      child: ListView.builder(
        itemCount: _diaryDataList.length,
        itemBuilder: _buildItem,
      ),
    );
  }

  Widget _buildItem(BuildContext context, int index) {
    // DiaryModel diary = _diaryDataList[index];
    return Padding(
      padding: EdgeInsets.only(top: 30.0),
      child: Column(
        children: <Widget>[
          dateAndAge('05月19日', '1岁5个月11天'),
          contentBuild(),
        ],
      ),
    );
  }

  contentBuild() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      margin: EdgeInsets.only(left: 4.0),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(width: 3.0, color: Colors.grey[300]),
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(10.0),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            contentText(
                '小老斧(虎)、西(狮)子、二(鳄)鱼,小老斧(虎)、西(狮)子、二(鳄)鱼小老斧(虎)、西(狮)子、二(鳄)鱼小老斧(虎)、西(狮)子、二(鳄)鱼小老斧(虎)、西(狮)子、二(鳄)鱼小老斧(虎)、西(狮)子、二(鳄)鱼小老斧(虎)、西(狮)子、二(鳄)鱼'),
            creatorInfo('爸爸', '1天前'),
          ],
        ),
      ),
    );
  }

  dateAndAge(String diaryDate, String ageDays) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.panorama_fish_eye,
              size: 14.0,
              color: Colors.orange[700],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Text(
                    diaryDate,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400),
                  ),
                ),
                Text(
                  ageDays,
                  style: TextStyle(fontSize: 16.0),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  contentText(String contentText) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text(
            contentText,
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }

  creatorInfo(String user, String createTime) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              greyText(user),
              greyText(','),
              greyText(createTime),
            ],
          ),
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.thumb_up,
                  color: greyColor,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  MyIcon.commnet,
                  color: greyColor,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  greyText(String text) {
    return Text(text, style: TextStyle(color: greyColor));
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody(context);
  }
}
