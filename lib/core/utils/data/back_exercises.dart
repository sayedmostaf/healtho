import 'package:healtho/core/utils/models/exercise_model.dart';

class BackExercises {
  static List<Map<String, dynamic>> getExercises() {
    return [
      {
        'title': "Pull-Ups",
        'photo': 'assets/images/back_PullUps.jpg',
        'description': "A bodyweight exercise focusing on the upper back.",
        'steps': [
          "Grab the pull-up bar with an overhand grip.",
          "Pull your body up until your chin is over the bar.",
          "Lower yourself back down with control.",
        ],
        'equipmentRequired': "Pull-Up Bar",
        'targetMuscles': ["Lats", "Traps", "Biceps"],
        'how_to': ["", ""],
      },
      {
        'title': "Deadlift",
        'photo': 'assets/images/back_DeadLift.jpg',
        'description': "A compound movement that targets the entire back.",
        'steps': [
          "Stand with feet hip-width apart and grip the barbell with hands just outside your knees.",
          "Lift the barbell by extending your hips and knees.",
          "Lower the bar back to the floor with control.",
        ],
        'equipmentRequired': "Barbell",
        'targetMuscles': ["Lats", "Traps", "Lower Back", "Glutes"],
        'how_to': ["", ""],
      },
      {
        'title': "Bent-Over Row",
        'photo': 'assets/images/back_BentOverRow.jpg',
        'description': "Targets the mid-back and lats.",
        'steps': [
          "Hold a barbell or dumbbells with palms facing down.",
          "Hinge at the hips and lower your torso.",
          "Pull the weight towards your lower chest.",
          "Lower the weight back to the starting position.",
        ],
        'equipmentRequired': "Barbell or Dumbbells",
        'targetMuscles': ["Lats", "Rhomboids", "Traps", "Biceps"],
        'how_to': ["", ""],
      },
      {
        'title': "Lat Pulldown",
        'photo': 'assets/images/back_LatPulldown.jpg',
        'description': "A cable machine exercise that isolates the lats.",
        'steps': [
          "Sit on the lat pulldown machine and grip the bar with an overhand grip.",
          "Pull the bar down to your chest, squeezing your shoulder blades.",
          "Slowly return the bar to the starting position.",
        ],
        'equipmentRequired': "Lat Pulldown Machine",
        'targetMuscles': ["Lats", "Biceps", "Traps"],
        'how_to': ["", ""],
      },
      {
        'title': "T-Bar Row",
        'photo': 'assets/images/back_TBarRow.jpg',
        'description': "A row variation that targets the mid-back.",
        'steps': [
          "Stand over a barbell with a V-handle attachment.",
          "Hinge at the hips and pull the bar towards your chest.",
          "Lower the bar back down with control.",
        ],
        'equipmentRequired': "T-Bar Row Machine or Barbell",
        'targetMuscles': ["Lats", "Traps", "Rhomboids", "Biceps"],
        'how_to': ["", ""],
      },
    ];
  }
}
