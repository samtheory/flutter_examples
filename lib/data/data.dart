class SocialCardModel {
  int commentNum;
  String title;
  String desc;
  String image;
  SocialCardModel({
    required this.commentNum,
    required this.title,
    required this.desc,
    required this.image,
  });
}

class DataSet {
  DataSet._();
  static List<SocialCardModel> socialCardList = [
    SocialCardModel(
        title: 'Cyberpunk Art',
        desc: 'Published on 4th january',
        commentNum: 250,
        image: 'assets/images/mountain.jpg'),
    SocialCardModel(
        title: 'paradise border',
        desc: 'Published on 10th March',
        commentNum: 150,
        image: 'assets/images/border.jpg'),
    SocialCardModel(
        title: 'Beast ',
        desc: 'Published on 13th March',
        commentNum: 264,
        image: 'assets/images/Demon.jpg'),
    SocialCardModel(
        title: 'Witches house',
        desc: 'Published on 12th December',
        commentNum: 172,
        image: 'assets/images/house-in-tree.jpg'),
    SocialCardModel(
        title: 'Red Doom',
        desc: 'Published on 20th October',
        commentNum: 95,
        image: 'assets/images/redMountains.jpg'),
  ];
}
