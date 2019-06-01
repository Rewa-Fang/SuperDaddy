class DiaryModel {
  final int id;
  final int type;
  final String diaryDate;
  final String title;
  final String ageToDays;
  final String contentText;
  final List images;

  DiaryModel(Set<Object> set, 
      {this.id,
      this.type,
      this.diaryDate,
      this.title,
      this.ageToDays,
      this.contentText,
      this.images});

  DiaryModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        type = json['type'],
        diaryDate = json['diaryDate'],
        title = json['title'],
        ageToDays = json['ageToDays'],
        contentText = json['contentText'],
        images = json['images'];

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      "id": id,
      "type": type,
      "diaryDate": diaryDate,
      "title": title,
      "ageToDays": ageToDays,
      "contentText": contentText,
      "images": images,
    };
  }
}
