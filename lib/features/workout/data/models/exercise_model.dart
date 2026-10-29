class ExerciseModel {
  final String name, duration, muscleGroup;
  final int sets, reps, restSeconds;
  const ExerciseModel({required this.name, required this.sets, required this.reps, required this.duration, required this.restSeconds, required this.muscleGroup});
}

const mockExercises = [
  ExerciseModel(name: "Push Ups", sets: 3, reps: 12, duration: "60s rest", restSeconds: 60, muscleGroup: "Chest • Arms"),
  ExerciseModel(name: "Squats", sets: 4, reps: 15, duration: "45s rest", restSeconds: 45, muscleGroup: "Legs • Glutes"),
  ExerciseModel(name: "Plank Hold", sets: 3, reps: 45, duration: "30s rest", restSeconds: 30, muscleGroup: "Core • Stability"),
];