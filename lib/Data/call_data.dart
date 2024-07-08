// ignore_for_file: public_member_api_docs, sort_constructors_first

class CallModel {
  final String profileImage;
  final String username;
  final bool incomingCall;
  final bool outgoingCall;
  final String callTypeAndTime;
  final bool missedCall;
  final bool videoCall;
  CallModel({
    required this.videoCall,
    required this.missedCall,
    required this.incomingCall,
    required this.outgoingCall,
    required this.profileImage,
    required this.username,
    required this.callTypeAndTime,
  });
}

final List<CallModel> callData = [
  CallModel(
    profileImage:
        'https://static1.moviewebimages.com/wordpress/wp-content/uploads/2023/04/john-wick-5.jpg',
    username: 'John Wick',
    callTypeAndTime: 'incomming | Today 11:25',
    incomingCall: true,
    outgoingCall: false,
    missedCall: false,
    videoCall: false,
  ),
  CallModel(
    profileImage:
        'https://i0.wp.com/www.thewrap.com/wp-content/uploads/2016/04/Cillian-Murphy.jpg?fit=618%2C412&ssl=1',
    username: 'Cillian Murphy',
    callTypeAndTime: 'outgoing | yesterday 08:39',
    incomingCall: false,
    outgoingCall: true,
    missedCall: false,
    videoCall: true,
  ),
  CallModel(
    profileImage:
        'https://cdn.wisden.com/wp-content/uploads/2018/08/GettyImages-1463453325-1.jpg',
    username: 'Lauren Bell',
    callTypeAndTime: 'incoming | july 01 07:09',
    incomingCall: true,
    outgoingCall: false,
    missedCall: false,
    videoCall: false,
  ),
  CallModel(
    profileImage:
        'https://www.billboard.com/wp-content/uploads/2023/10/Selena-Gomez-cr-Hunter-Moreno-press-2023-billboard-1548.jpg?w=942&h=623&crop=1',
    username: 'Selena Gomez',
    callTypeAndTime: 'missed call | june 19 09:00',
    incomingCall: false,
    outgoingCall: false,
    missedCall: true,
    videoCall: true,
  ),
  CallModel(
    profileImage:
        'https://sundayguardianlive.com/wp-content/uploads/2024/04/Rahul-Gandhi.jpg',
    username: 'Rahul Gandhi',
    callTypeAndTime: 'incomming | Today 09:25',
    incomingCall: true,
    outgoingCall: false,
    missedCall: false,
    videoCall: false,
  ),
  CallModel(
    profileImage:
        'https://assets.editorial.aetnd.com/uploads/2016/11/donald-trump-gettyimages-687193180.jpg',
    username: 'Donald Trump',
    callTypeAndTime: 'outgoing | yesterday 07:39',
    incomingCall: false,
    outgoingCall: true,
    missedCall: false,
    videoCall: true,
  ),
  CallModel(
    profileImage:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlDLIHD46imKrdp3-BbpQkPxhxGTU4w0Kz6k-ZkhlDtZWeRr1OQvw9lzjalnZjZOEl2dY&usqp=CAU',
    username: 'Ronaldo The Goat',
    callTypeAndTime: 'missed call | june 27 09:29',
    incomingCall: false,
    outgoingCall: false,
    missedCall: true,
    videoCall: false,
  ),
  CallModel(
    profileImage:
        'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQL05fgkdkgK-x3ED1C5pyDdBZ4lqYrAyjDPEdL9doMGgKNu86Jcdsh3zMqMbszE6k_3b-as1QXul5L-r3i3phtdrqxRZBKuaObO8AtnQ',
    username: 'Arya Stark',
    callTypeAndTime: 'missed call | june 19 09:00',
    incomingCall: false,
    outgoingCall: false,
    missedCall: false,
    videoCall: true,
  ),
  CallModel(
    profileImage:
        'https://hips.hearstapps.com/hmg-prod/images/millie-bobby-brown-attends-the-damsel-world-premiere-at-the-news-photo-1710002929.jpg',
    username: 'Millie Bobby Brown',
    callTypeAndTime: 'incomming | Today 11:25',
    incomingCall: true,
    outgoingCall: false,
    missedCall: false,
    videoCall: false,
  ),
  CallModel(
    profileImage:
        'https://hips.hearstapps.com/hmg-prod/images/j_cole_photo_by_isaac_brekken_wireimage_getty_503069628.jpg',
    username: 'J.Cole',
    callTypeAndTime: 'outgoing | yesterday 08:39',
    incomingCall: false,
    outgoingCall: true,
    missedCall: false,
    videoCall: true,
  ),
  CallModel(
    profileImage:
        'https://m.media-amazon.com/images/I/71UFRXZzamL._AC_UF1000,1000_QL80_.jpg',
    username: 'Eminem',
    callTypeAndTime: 'incoming | july 01 07:09',
    incomingCall: true,
    outgoingCall: false,
    missedCall: false,
    videoCall: false,
  ),
  CallModel(
    profileImage:
        'https://qph.cf2.quoracdn.net/main-qimg-259af5c63e2023a602c2a2085c9562e3-lq',
    username: 'Alexandra Daddario',
    callTypeAndTime: 'missed call | june 19 09:00',
    incomingCall: false,
    outgoingCall: false,
    missedCall: false,
    videoCall: true,
  )
];
