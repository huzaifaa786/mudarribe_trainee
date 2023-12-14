class Trainer {
  final String id;
  final String name;
  final String profileImageUrl;
  final String? bio;
  final List category;

  Trainer({
    required this.id,
    required this.name,
    required this.profileImageUrl,
    required this.category,
    required this.bio,
  });

  factory Trainer.fromMap(Map<String, dynamic> map) {
    return Trainer(
      id: map['id'],
      name: map['name'] ,
      profileImageUrl: map['profileImageUrl'],
      category: map['categories'],
      bio: map['bio'] ?? '',
    );
  }
}
