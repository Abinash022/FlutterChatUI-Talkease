class StatusModel {
  final String name;
  final String time;
  final String profilePic;

  StatusModel({
    required this.name,
    required this.time,
    required this.profilePic,
  });
}

final List<StatusModel> recentUpdates = [
  StatusModel(
    name: 'Selena Gomez',
    time: '10 minutes ago',
    profilePic:
        'https://www.billboard.com/wp-content/uploads/2023/10/Selena-Gomez-cr-Hunter-Moreno-press-2023-billboard-1548.jpg?w=942&h=623&crop=1',
  ),
  StatusModel(
    name: 'Pink Floyd',
    time: '1 hour ago',
    profilePic:
        'https://www.usatoday.com/gcdn/media/USATODAY/USATODAY/2013/06/21/1371852894000-Pink-Floyd-1306211829_3_4.JPG',
  ),
  StatusModel(
    name: 'Virat Kohli',
    time: 'Today,12:50',
    profilePic:
        'https://middaycdn.s.llnwi.net/Radiocity-images/images/uploads/web-stories/viratkohlit20worldcuptrophy_ws.jpg',
  ),
];
final List<StatusModel> viewedUpdates = [
  StatusModel(
    name: 'John Snow',
    time: 'Yesterday,8:45',
    profilePic:
        'https://assets-prd.ignimgs.com/2022/12/12/jon-snow-spinoff-1670857671219.jpg',
  ),
  StatusModel(
    name: 'John Wick',
    time: 'Yesterday,3:30',
    profilePic:
        'https://i.guim.co.uk/img/media/877d147f10c311bf8df89444dd80c33f043e768c/0_563_2556_1533/master/2556.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=a48b7609cb4340af0eb2830a18e589f4',
  ),
];
final List<StatusModel> mutedUpdates = [
  StatusModel(
    name: 'Donald trump',
    time: '30 minutes ago',
    profilePic:
        'https://assets.editorial.aetnd.com/uploads/2016/11/donald-trump-gettyimages-687193180.jpg',
  ),
  StatusModel(
    name: 'Rahul Gandhi',
    time: 'Today,2:45',
    profilePic:
        'https://sundayguardianlive.com/wp-content/uploads/2024/04/Rahul-Gandhi.jpg',
  ),
];
