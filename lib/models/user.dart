class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String? profilePhoto;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    this.profilePhoto,
    this.phoneNumber,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map["id"],
      name: map["name"],
      username: map["username"],
      email: map["email"],
      profilePhoto: map["profile_photo"],
      phoneNumber: map["phone_number"],
    );
  }

  factory User.dummy() {
    return User(
      id: 2006107,
      name: "Alfin Ramadhana",
      username: "Alfin",
      email: "2006107@itg.ac.id",
      profilePhoto: "https://i.postimg.cc/4dnDT0b0/DSC-3944-copy.jpg",
      phoneNumber: "089621919638",
    );
  }
}