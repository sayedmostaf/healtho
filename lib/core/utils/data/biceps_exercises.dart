class BicepsExercises {
  static List<Map<String, dynamic>> getExercises() {
    return [
      {
        'title': "Bicep Curl",
        'photo': 'assets/images/biceps_Curl.jpg',
        'description': "A fundamental exercise for arm development.",
        'steps': [
          "Stand with feet shoulder-width apart holding dumbbells.",
          "Curl the weights towards your shoulders.",
          "Lower the weights slowly."
        ],
        'equipmentRequired': "Dumbbells",
        'targetMuscles': ["Biceps"],
        'how_to': ["assets/images/biceps_Curl 1.jpg", "assets/images/biceps_Curl 2.jpg"],
      },
      {
        'title': "Hammer Curl",
        'photo': 'assets/images/biceps_HammerCurl.jpg',
        'description': "Targets both biceps and forearms.",
        'steps': [
          "Hold dumbbells at your sides with palms facing inward.",
          "Lift the weights until your forearms are vertical.",
          "Lower them slowly back down."
        ],
        'equipmentRequired': "Dumbbells",
        'targetMuscles': ["Biceps", "Forearms"],
        'how_to': ["assets/images/biceps_HammerCurl 1.jpg", "assets/images/biceps_HammerCurl 2.jpg"],
      },
      {
        'title': "Preacher Curl",
        'photo': 'assets/images/biceps_PreacherCurl.jpg',
        'description': "Isolation exercise for the lower biceps.",
        'steps': [
          "Sit on a preacher bench with arms extended on the pad.",
          "Curl the barbell or dumbbells towards you.",
          "Lower the weight back down with control."
        ],
        'equipmentRequired': "Barbell or Dumbbells, Preacher Bench",
        'targetMuscles': ["Biceps"],
        'how_to': ["assets/images/biceps_PreacherCurl 1.jpg", "assets/images/biceps_PreacherCurl 2.jpg"],
      },
      {
        'title': "Concentration Curl",
        'photo': 'assets/images/biceps_ConcentrationCurl.jpg',
        'description':
            "Isolates each bicep individually for maximum contraction.",
        'steps': [
          "Sit on a bench with a dumbbell in one hand.",
          "Rest your elbow on the inside of your thigh.",
          "Curl the dumbbell towards your shoulder."
        ],
        'equipmentRequired': "Dumbbells",
        'targetMuscles': ["Biceps"],
        'how_to': ["assets/images/biceps_ConcentrationCurl 1.jpg", "assets/images/biceps_ConcentrationCurl 2.jpg"],
      },
      {
        'title': "EZ Bar Curl",
        'photo': 'assets/images/biceps_EZBarCurl.jpg',
        'description':
            "Uses an EZ curl bar to target the biceps with a comfortable grip.",
        'steps': [
          "Stand with feet shoulder-width apart.",
          "Grip the EZ bar with both hands.",
          "Curl the bar towards your shoulders, then lower it."
        ],
        'equipmentRequired': "EZ Curl Bar",
        'targetMuscles': ["Biceps"],
        'how_to': ["assets/images/biceps_EZBarCurl 1.jpg", "assets/images/biceps_EZBarCurl 2.jpg"],
      },
    ];
  }
}
