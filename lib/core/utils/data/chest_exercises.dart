class ChestExercises {
  static List<Map<String, dynamic>> getExercises() {
    return [
      {
        'title': "Bench Press",
        'photo': 'assets/images/chest_BenchPress.jpg',
        'description':
            "A classic compound exercise to build chest, shoulders, and triceps strength.",
        'steps': [
          "Lie flat on the bench with feet firmly planted on the ground.",
          "Grip the bar slightly wider than shoulder-width.",
          "Lower the bar to your chest.",
          "Press it back up until arms are fully extended."
        ],
        'equipmentRequired': "Barbell, Bench",
        'targetMuscles': ["Chest", "Triceps", "Shoulders"],
        'how_to': [
          "assets/images/chest_BenchPress 1.jpg",
          "assets/images/chest_BenchPress 2.jpg"
        ],
      },
      {
        'title': "Incline Dumbbell Press",
        'photo': "assets/images/chest_InclineDumbbellPress.jpg",
        'description': "Targets the upper part of the chest.",
        'steps': [
          "Set an incline bench at 30-45 degrees.",
          "Hold dumbbells at shoulder height.",
          "Press the weights up until arms are extended.",
          "Lower slowly to the starting position."
        ],
        'equipmentRequired': "Dumbbells, Incline Bench",
        'targetMuscles': ["Upper Chest", "Shoulders"],
        'how_to': ["", ""],
      },
      {
        'title': "Chest Fly",
        'photo': "assets/images/chest_ChestFly.jpg",
        'description': "Isolation exercise for inner chest.",
        'steps': [
          "Lie on a flat bench with dumbbells in hand.",
          "Open your arms wide, feeling the stretch in your chest.",
          "Bring the weights back together above your chest."
        ],
        'equipmentRequired': "Dumbbells, Bench",
        'targetMuscles': ["Chest"],
        'how_to': ["", ""],
      },
      {
        'title': "Push-Ups",
        'photo': "assets/images/chest_PushUps.jpg",
        'description': "A bodyweight exercise targeting chest and triceps.",
        'steps': [
          "Start in a high plank position.",
          "Lower your body down, bending elbows.",
          "Push yourself back up."
        ],
        'equipmentRequired': "Bodyweight",
        'targetMuscles': ["Chest", "Triceps"],
        'how_to': ["", ""],
      },
      {
        'title': "Decline Bench Press",
        'photo': "assets/images/chest_DeclineBenchPress.jpg",
        'description': "Focuses on the lower chest.",
        'steps': [
          "Set the bench to a decline position.",
          "Lower the bar to the lower chest.",
          "Press it back up to full arm extension."
        ],
        'equipmentRequired': "Barbell, Decline Bench",
        'targetMuscles': ["Lower Chest", "Triceps"],
        'how_to': ["", ""],
      }
    ];
  }
}
