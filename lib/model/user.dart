class User {
  final String name;
  final String image;
  final String lastMessage;
  final String lastMessageTime;

  User({
    required this.name,
    required this.image,
    required this.lastMessage,
    required this.lastMessageTime,
  });
}

List<User> userData = [
  User(
    name: "John Doe",
    image: "https://randomuser.me/api/portraits/men/1.jpg",
    lastMessage: "Hey! How are you?",
    lastMessageTime: "10:20 AM",
  ),
  User(
    name: "Emma Watson",
    image: "https://randomuser.me/api/portraits/women/2.jpg",
    lastMessage: "Let’s catch up tomorrow!",
    lastMessageTime: "09:15 AM",
  ),
  User(
    name: "Michael Smith",
    image: "https://randomuser.me/api/portraits/men/3.jpg",
    lastMessage: "Did you check the file?",
    lastMessageTime: "Yesterday",
  ),
  User(
    name: "Sophia Johnson",
    image: "https://randomuser.me/api/portraits/women/4.jpg",
    lastMessage: "Good night 🌙",
    lastMessageTime: "11:45 PM",
  ),
  User(
    name: "Liam Brown",
    image: "https://randomuser.me/api/portraits/men/5.jpg",
    lastMessage: "I’ll call you in 5 minutes.",
    lastMessageTime: "08:32 PM",
  ),
  User(
    name: "Olivia Davis",
    image: "https://randomuser.me/api/portraits/women/6.jpg",
    lastMessage: "See you soon 😊",
    lastMessageTime: "Yesterday",
  ),
  User(
    name: "Noah Wilson",
    image: "https://randomuser.me/api/portraits/men/7.jpg",
    lastMessage: "Where are you now?",
    lastMessageTime: "07:05 PM",
  ),
  User(
    name: "Ava Martinez",
    image: "https://randomuser.me/api/portraits/women/8.jpg",
    lastMessage: "Thanks a lot!",
    lastMessageTime: "Yesterday",
  ),
  User(
    name: "Ethan Anderson",
    image: "https://randomuser.me/api/portraits/men/9.jpg",
    lastMessage: "Can you send the notes?",
    lastMessageTime: "02:12 PM",
  ),
  User(
    name: "Isabella Thomas",
    image: "https://randomuser.me/api/portraits/women/10.jpg",
    lastMessage: "I’m on my way 🚗",
    lastMessageTime: "Today",
  ),
  User(
    name: "James Taylor",
    image: "https://randomuser.me/api/portraits/men/11.jpg",
    lastMessage: "Let’s meet at 5?",
    lastMessageTime: "Yesterday",
  ),
  User(
    name: "Mia White",
    image: "https://randomuser.me/api/portraits/women/12.jpg",
    lastMessage: "Okay, noted 👍",
    lastMessageTime: "Yesterday",
  ),
  User(
    name: "Alexander Harris",
    image: "https://randomuser.me/api/portraits/men/13.jpg",
    lastMessage: "Great job!",
    lastMessageTime: "09:50 AM",
  ),
  User(
    name: "Charlotte Clark",
    image: "https://randomuser.me/api/portraits/women/14.jpg",
    lastMessage: "Talk later 💬",
    lastMessageTime: "Yesterday",
  ),
  User(
    name: "Benjamin Lewis",
    image: "https://randomuser.me/api/portraits/men/15.jpg",
    lastMessage: "Happy Birthday 🥳",
    lastMessageTime: "07:45 AM",
  ),
];
