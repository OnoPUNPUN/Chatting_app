class Users {
  final String friendName;
  final List<String>? chats;
  final String? imageLocation;

  Users(this.friendName, this.chats, this.imageLocation);
}
List<Users> users = [
  Users('Tonmoy', ["Hello", "What's Up"], 'pics/punpun.jpg'),
  Users('Big Boi Adolf', ["Let's Finish Them", "Ok", "So, From Where we Should Start"], 'pics/hhh.jpg'),
  Users('Nafiz', ["Amar CG 5.00", "Dream Vai Dream"], 'pics/R.jpg'),
  Users('C. Mike Rack', ['Man we should study math', "Duck You"], 'pics/mimber.jpg'),
  Users('Md. Robiul Islam', ["I will be the Next OSA", "I know That", "Yes you better Should"], 'pics/Na.jpg'),
  Users('Danny', ["Danny sent an attachment", "WTF is this? 💀💀", "💀"], 'pics/D.jpg'),
];