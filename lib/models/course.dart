class Course {
  String name;
  double completedPercentage;
  String author;
  String thumbnail;

  Course({
    required this.author,
    required this.completedPercentage,
    required this.name,
    required this.thumbnail,
  });
}

List<Course> courses = [
  Course(
    author: "Teacher LMK",
    completedPercentage: 1,
    name: "Introduction",
    thumbnail: "assets/icons/add1.png",
  ),
  Course(
    author: "Teacher LMK",
    completedPercentage: 1,
    name: "Addition(Lesson 2)",
    thumbnail: "assets/icons/add2.png",
  ),
  Course(
    author: "Teacher LMK",
    completedPercentage: 1,
    name: "Addition(Lesson2)",
    thumbnail: "assets/icons/add3.png",
  ),
  Course(
    author: "DevWheels",
    completedPercentage: .75,
    name: "Flutter Novice to Ninja",
    thumbnail: "assets/icons/flutter.jpg",
  ),
  Course(
    author: "DevWheels",
    completedPercentage: .60,
    name: "React Novice to Ninja",
    thumbnail: "assets/icons/react.jpg",
  ),
  Course(
    author: "DevWheels",
    completedPercentage: .75,
    name: "Node - The complete guide",
    thumbnail: "assets/icons/node.png",
  ),
];
