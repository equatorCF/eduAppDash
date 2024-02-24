class Category {
  String thumbnail;
  String name;
  int noOfCourses;

  Category({
    required this.name,
    required this.noOfCourses,
    required this.thumbnail,
  });
}

List<Category> categoryList = [
  Category(
    name: 'Addition',
    noOfCourses: 8,
    thumbnail: 'assets/icons/maths2.png',
  ),
  Category(
    name: 'Subtraction',
    noOfCourses: 8,
    thumbnail: 'assets/icons/su2.png',
  ),
  Category(
    name: 'Multiplication',
    noOfCourses: 7,
    thumbnail: 'assets/icons/photography.jpg',
  ),
  Category(
    name: 'Division',
    noOfCourses: 8,
    thumbnail: 'assets/icons/design.jpg',
  ),
];
