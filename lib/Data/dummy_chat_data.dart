class ChatModel {
  final String name;
  final String time;
  final String profilePic;
  final String message;
  ChatModel({
    required this.name,
    required this.time,
    required this.profilePic,
    required this.message,
  });
}

final List<ChatModel> dummyinfo = [
  ChatModel(
    name: 'Selena Gomez',
    time: '9:00PM',
    profilePic:
        'https://www.billboard.com/wp-content/uploads/2023/10/Selena-Gomez-cr-Hunter-Moreno-press-2023-billboard-1548.jpg?w=942&h=623&crop=1',
    message: 'Hey, How are you? Just feeling good tonight.',
  ),
  ChatModel(
    name: 'Pink Floyd',
    time: '6:15AM',
    profilePic:
        'https://www.usatoday.com/gcdn/media/USATODAY/USATODAY/2013/06/21/1371852894000-Pink-Floyd-1306211829_3_4.JPG',
    message: 'How I wish you were here..',
  ),
  ChatModel(
    name: 'Virat Kohli',
    time: '9:15AM',
    profilePic:
        'https://middaycdn.s.llnwi.net/Radiocity-images/images/uploads/web-stories/viratkohlit20worldcuptrophy_ws.jpg',
    message: 'Hey,I am the Greatest of all time.',
  ),
  ChatModel(
    name: 'Britney Spears',
    time: '8:30AM',
    profilePic:
        'https://cdn.britannica.com/37/242137-050-66F83EE5/Britney-Spears-GLAAD-Media-Awards-2018.jpg',
    message: 'Mama I am in Love with the Criminal!',
  ),
  ChatModel(
    name: 'Leonardo DiCaprio',
    time: '10:45AM',
    profilePic:
        'https://media.vogue.fr/photos/5c2f607ef73dacd6ece1793f/master/pass/gettyimages_97205874_jpg_3153.jpg',
    message: 'Good morning! Another day to save the planet.',
  ),
  ChatModel(
    name: 'Adele',
    time: '12:00PM',
    profilePic:
        'https://www.rollingstone.com/wp-content/uploads/2021/11/Adele-1.jpeg?w=1581&h=1054&crop=1',
    message: 'Hello from the Other side',
  ),
  ChatModel(
    name: 'I am Thor',
    time: '2:15PM',
    profilePic: 'https://ichef.bbci.co.uk/images/ic/1200x675/p09t1hg0.jpg',
    message: 'Hey there! Ready for the Thunder?',
  ),
  ChatModel(
      name: 'Iron Man',
      time: '4:30PM',
      profilePic:
          'https://cdn.britannica.com/49/182849-050-4C7FE34F/scene-Iron-Man.jpg',
      message: 'Hey! What\'s up Kid? Wanna Hangout?'),
  ChatModel(
    name: 'Tom Hanks',
    time: '6:45PM',
    profilePic:
        'https://media.cnn.com/api/v1/images/stellar/prod/230516114637-tom-hanks-file-cannes-2022.jpg?c=original',
    message: 'Evening! What is the latest buzz?',
  ),
  ChatModel(
    name: 'Cristiano Ronaldo',
    time: '6:45PM',
    profilePic:
        'https://www.mensjournal.com/.image/t_share/MjAzMzQ5NzAwMzc0NDM5NDkx/portugal-v-iceland-group-j---uefa-euro-2024-european-qualifiers.jpg',
    message: 'I am the GOAT 🐐',
  ),
];
