
class ExerciseModel {
  final String title;
  final String photo;
  final String description;
  final List<String> steps;
  final String equipmentRequired;
  final List<String> targetMuscles;
  final List<String> howTo;

  ExerciseModel({
    required this.title,
    required this.photo,
    required this.description,
    required this.steps,
    required this.equipmentRequired,
    required this.targetMuscles,
    required this.howTo,
  });

  factory ExerciseModel.fromJson(Map<String, dynamic> json) {
    return ExerciseModel(
      title: json['title'] as String,
      photo: json['photo'] as String,
      description: json['description'] as String,
      steps: List<String>.from(json['steps'] ?? []),
      equipmentRequired: json['equipmentRequired'] as String,
      targetMuscles: (json['targetMuscles'] as List<String>),
      howTo: json['how_to'] as List<String>,
    );
  }
}
