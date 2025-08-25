class User {
  final String name;
  final String userName;
  final String image;
  bool isFollowed;

  User({
    required this.name,
    required this.userName,
    required this.image,
    required this.isFollowed,
  });
}

List<User> userData = [
  User(
    name: "Alice Johnson",
    userName: "@alice_j",
    image: "https://images.unsplash.com/photo-1502685104226-ee32379fefbe",
    isFollowed: false,
  ),
  User(
    name: "Michael Smith",
    userName: "@mike_smith",
    image: "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d",
    isFollowed: true,
  ),
  User(
    name: "Sophia Williams",
    userName: "@sophia_w",
    image: "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e",
    isFollowed: false,
  ),
  User(
    name: "James Brown",
    userName: "@james_b",
    image: "https://images.unsplash.com/photo-1544723795-3fb6469f5b39",
    isFollowed: true,
  ),
  User(
    name: "Emma Davis",
    userName: "@emma_d",
    image: "https://images.unsplash.com/photo-1524504388940-b1c1722653e1",
    isFollowed: false,
  ),
  User(
    name: "Liam Miller",
    userName: "@liam_m",
    image: "https://images.unsplash.com/photo-1500648767791-00dcc994a43e",
    isFollowed: true,
  ),
  User(
    name: "Olivia Wilson",
    userName: "@olivia_w",
    image: "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e",
    isFollowed: false,
  ),
  User(
    name: "Daniel Moore",
    userName: "@dan_moore",
    image: "https://images.unsplash.com/photo-1527980965255-d3b416303d12",
    isFollowed: true,
  ),
  User(
    name: "Ava Taylor",
    userName: "@ava_t",
    image: "https://images.unsplash.com/photo-1520813792240-56fc4a3765a7",
    isFollowed: false,
  ),
  User(
    name: "Ethan Anderson",
    userName: "@ethan_a",
    image: "https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91",
    isFollowed: true,
  ),
];
