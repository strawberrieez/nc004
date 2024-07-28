part of '_index.dart';

class Profile {
  final String id;
  final String createdAt;
  final String imageUrl;
  final String name;
  final int age;
  final String gender;
  final String breeds;
  Profile({
    this.id = '',
    this.createdAt = '',
    this.imageUrl = '',
    this.name = '',
    this.age = 0,
    this.gender = '',
    this.breeds = '',
  });

  Profile copyWith({
    String? id,
    String? createdAt,
    String? imageUrl,
    String? name,
    int? age,
    String? gender,
    String? breeds,
  }) {
    return Profile(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      imageUrl: imageUrl ?? this.imageUrl,
      name: name ?? this.name,
      age: age ?? this.age,
      gender: gender ?? this.gender,
      breeds: breeds ?? this.breeds,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'created_at': createdAt});
    result.addAll({'image_url': imageUrl});
    result.addAll({'name': name});
    result.addAll({'age': age});
    result.addAll({'gender': gender});
    result.addAll({'cat_breeds': breeds});

    return result;
  }

  factory Profile.fromMap(Map<String, dynamic> map) {
    return Profile(
      id: map['id'] ?? '',
      createdAt: map['created_at'] ?? '',
      imageUrl: map['image_url'] ?? '',
      name: map['name'] ?? '',
      age: map['age']?.toInt() ?? 0,
      gender: map['gender'] ?? '',
      breeds: map['breeds'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Profile.fromJson(String source) => Profile.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Profile(id: $id, createdAt: $createdAt, imageUrl: $imageUrl, name: $name, age: $age, gender: $gender, breeds: $breeds)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Profile &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.imageUrl == imageUrl &&
        other.name == name &&
        other.age == age &&
        other.gender == gender &&
        other.breeds == breeds;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        createdAt.hashCode ^
        imageUrl.hashCode ^
        name.hashCode ^
        age.hashCode ^
        gender.hashCode ^
        breeds.hashCode;
  }
}