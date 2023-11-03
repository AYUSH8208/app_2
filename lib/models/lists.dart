class list{
  static final products =[
    Item(id: 1, desc: "Have a chat with your friends", name: "Chatting",
        image: "https://clipartspub.com/images/friends-clipart-talking-6.jpg")
  ];}


class Item{
  final String name;
  final int id;
  final String desc;

  final String image;
  Item({required this.id,required this.desc,required this.name,required this.image});


}
