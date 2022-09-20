class ChatData {
  static List<Map> newChat = [];

  static addChat({required String chat}) {
    newChat.add({
      'message': chat,
    });
  }

  static List<Map> chat = [
    {
      'message': 'Welcome to Help Center.',
      'isMe': false,
      'profile_picture': 'asset/image/utilities/customer-service.jpg',
    },
    {
      'message': 'Hello, Jessica is at your service. How can i help you?',
      'isMe': false,
      'profile_picture': 'asset/image/utilities/customer-service.jpg',
    },
    {
      'message': 'Hi, Jessica.',
      'isMe': true,
      'profile_picture': 'asset/image/utilities/profile-picture.jpg',
    },
  ];
}
