import 'package:healtho/core/utils/models/exercise_model.dart';

class TricepsExercises {
  static List<Map<String, dynamic>> getExercises() {
    return [
      {
        'title': "Triceps Dips",
        'photo': "assets/images/triceps_Dips.jpg",
        'description': "A bodyweight exercise that targets the triceps.",
        'steps': [
          "Sit on the edge of a bench with hands next to your hips.",
          "Slide off the bench, keeping your legs straight.",
          "Lower your body by bending your elbows.",
          "Push back up to the starting position."
        ],
        'equipmentRequired': "Bench",
        'targetMuscles': ["Triceps"],
        'how_to': ["assets/images/triceps_Dips 1.jpg", "assets/images/triceps_Dips 2.jpg"],
      },
      {
        'title': "Close-Grip Bench Press",
        'photo': "assets/images/triceps_CloseGripBenchPress.jpg",
        'description': "A barbell exercise that focuses on the triceps.",
        'steps': [
          "Lie flat on the bench with your hands close together on the bar.",
          "Lower the bar to your chest.",
          "Press the bar up, extending your arms fully."
        ],
        'equipmentRequired': "Barbell, Bench",
        'targetMuscles': ["Triceps", "Chest", "Shoulders"],
        'how_to': ["assets/images/triceps_CloseGripBenchPress 1.jpg", "assets/images/triceps_CloseGripBenchPress 2.jpg"],
      },
      {
        'title': "Triceps Kickback",
        'photo': "assets/images/triceps_Kickback.jpg",
        'description': "Isolates the triceps for full contraction.",
        'steps': [
          "Hold a dumbbell in one hand and hinge at the hips.",
          "Keep your elbow close to your side.",
          "Extend your arm behind you.",
          "Return to the starting position."
        ],
        'equipmentRequired': "Dumbbells",
        'targetMuscles': ["Triceps"],
        'how_to': ["assets/images/triceps_Kickback 1.jpg", "assets/images/triceps_Kickback 2.jpg"],
      },
      {
        'title': "Skull Crushers",
        'photo': "assets/images/triceps_SkullCrushers.jpg",
        'description':
            "Lying triceps extension targeting all three heads of the triceps.",
        'steps': [
          "Lie on a flat bench holding an EZ curl bar.",
          "Lower the bar towards your forehead.",
          "Extend your arms back to the starting position."
        ],
        'equipmentRequired': "EZ Curl Bar, Bench",
        'targetMuscles': ["Triceps"],
        'how_to': ["assets/images/triceps_SkullCrushers 1.jpg", "assets/images/triceps_SkullCrushers 2.jpg"],
      },
      {
        'title': "Dumbbell Floor Press",
        'photo': "assets/images/triceps_DumbbellFloorPress.jpg",
        'description': "Targets the triceps with minimal shoulder involvement.",
        'steps': [
          "Lie on the floor with dumbbells in hand.",
          "Press the dumbbells up until your arms are fully extended.",
          "Lower them to the floor, stopping when your upper arms touch the ground."
        ],
        'equipmentRequired': "Dumbbells",
        'targetMuscles': ["Triceps", "Chest"],
        'how_to': ["assets/images/triceps_DumbbellFloorPress 1.jpg", "assets/images/triceps_DumbbellFloorPress 2.jpg"],
      },
    ];
  }
}
