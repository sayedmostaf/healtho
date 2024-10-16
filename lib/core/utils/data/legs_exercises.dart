import 'package:healtho/core/utils/models/exercise_model.dart';

class LegsExercises {
  static List<Map<String, dynamic>> getExercises() {
    return [
      {
        'title': "Squats",
        'photo': "assets/images/legs_Squats.jpg",
        'description':
            "A fundamental leg exercise working the quads, glutes, and hamstrings.",
        'steps': [
          "Stand with feet shoulder-width apart.",
          "Lower your body by bending at the knees and hips.",
          "Push through your heels to stand back up."
        ],
        'equipmentRequired': "Barbell (optional)",
        'targetMuscles': ["Quadriceps", "Glutes", "Hamstrings"],
        'how_to': ["", ""],
      },
      {
        'title': "Lunges",
        'photo': "assets/images/legs_Lunges.jpg",
        'description':
            "A unilateral exercise focusing on the quads and glutes.",
        'steps': [
          "Step forward with one leg and lower your hips until both knees are bent at 90 degrees.",
          "Push through the front heel to return to the starting position.",
          "Repeat on the other leg."
        ],
        'equipmentRequired': "Dumbbells (optional)",
        'targetMuscles': ["Quadriceps", "Glutes"],
        'how_to': ["", ""],
      },
      {
        'title': "Leg Curl",
        'photo': "assets/images/legs_LegCurl.jpg",
        'description': "Isolates the hamstrings.",
        'steps': [
          "Lie face down on the leg curl machine.",
          "Curl the pad towards your glutes by bending your knees.",
          "Lower the pad back down with control."
        ],
        'equipmentRequired': "Leg Curl Machine",
        'targetMuscles': ["Hamstrings"],
        'how_to': ["", ""],
      },
      {
        'title': "Leg Extension",
        'photo': "assets/images/legs_Extension.jpg",
        'description': "Targets the quadriceps in isolation.",
        'steps': [
          "Sit on the leg extension machine with your feet under the pad.",
          "Extend your legs fully by lifting the pad.",
          "Lower it back down slowly."
        ],
        'equipmentRequired': "Leg Extension Machine",
        'targetMuscles': ["Quadriceps"],
        'how_to': ["", ""],
      },
      {
        'title': "Calf Raises",
        'photo': "assets/images/legs_CalfRaises.jpg",
        'description': "Strengthens the calves.",
        'steps': [
          "Stand with your feet hip-width apart.",
          "Raise your heels as high as possible.",
          "Lower your heels back down."
        ],
        'equipmentRequired': "Bodyweight or Dumbbells",
        'targetMuscles': ["Calves"],
        'how_to': ["", ""],
      },
    ];
  }
}
