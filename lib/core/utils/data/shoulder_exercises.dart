class ShoulderExercises {
  static List<Map<String, dynamic>> getExercises() {
    return [
      {
        'title': "Overhead Press",
        'photo': "assets/images/shoulder_OverheadPress.jpg",
        'description': "A compound movement that targets the entire shoulder.",
        'steps': [
          "Stand with feet shoulder-width apart, holding a barbell at shoulder height.",
          "Press the bar overhead by extending your arms.",
          "Lower it back to the starting position.",
        ],
        'equipmentRequired': "Barbell",
        'targetMuscles': ["Deltoids", "Triceps", "Traps"],
        'how_to': ["assets/images/shoulder_OverheadPress 1.jpg", "assets/images/shoulder_OverheadPress 2.jpg"],
      },
      {
        'title': "Dumbbell Shoulder Press",
        'photo': "assets/images/shoulder_CableLateralRaise.jpg",
        'description': "A variation of the overhead press using dumbbells.",
        'steps': [
          "Sit on a bench with dumbbells at shoulder height.",
          "Press the dumbbells overhead by extending your arms.",
          "Lower them back to the starting position.",
        ],
        'equipmentRequired': "Dumbbells, Bench",
        'targetMuscles': ["Deltoids", "Triceps"],
        'how_to': ["assets/images/shoulder_CableLateralRaise 1.jpg", "assets/images/shoulder_CableLateralRaise 2.jpg"],
      },
      {
        'title': "Lateral Raise",
        'photo': "assets/images/shoulder_LateralRaise.jpg",
        'description': "Isolates the lateral deltoids.",
        'steps': [
          "Stand with a dumbbell in each hand.",
          "Raise your arms out to the sides until they reach shoulder height.",
          "Lower the dumbbells back down slowly.",
        ],
        'equipmentRequired': "Dumbbells",
        'targetMuscles': ["Lateral Deltoids"],
        'how_to': ["assets/images/shoulder_LateralRaise 1.jpg", "assets/images/shoulder_LateralRaise 2.jpg"],
      },
      {
        'title': "Front Raise",
        'photo': "assets/images/shoulder_FrontRaise.jpg",
        'description': "Targets the front delts.",
        'steps': [
          "Stand with a dumbbell in each hand.",
          "Raise your arms in front of you until they reach shoulder height.",
          "Lower them back down slowly.",
        ],
        'equipmentRequired': "Dumbbells",
        'targetMuscles': ["Front Deltoids"],
        'how_to': ["assets/images/shoulder_FrontRaise 1.jpg", "assets/images/shoulder_FrontRaise 2.jpg"],
      },
      {
        'title': "Face Pull",
        'photo': "assets/images/shoulder_FacePull.jpg",
        'description':
            "A cable exercise that targets the rear delts and traps.",
        'steps': [
          "Stand facing a cable machine with a rope attachment at eye level.",
          "Pull the rope towards your face while keeping your elbows high.",
          "Slowly return to the starting position.",
        ],
        'equipmentRequired': "Cable Machine",
        'targetMuscles': ["Rear Deltoids", "Traps"],
        'how_to': ["assets/images/shoulder_FacePull 1.jpg", "assets/images/shoulder_FacePull 2.jpg"],
      },
    ];
  }
}
