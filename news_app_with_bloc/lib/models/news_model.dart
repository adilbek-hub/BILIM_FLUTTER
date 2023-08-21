class News {
  News({
    this.author,
    required this.title,
    required this.description,
  });
  final String? author;
  final String title;
  final String description;

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      author: json['author'],
      title: json['title'] ?? '',
      description: json['description'] ?? '',
    );
  }
}
