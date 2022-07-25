part of 'workouts_cubit.dart';

@immutable
class WorkoutsState {
  final List<QueryDocumentSnapshot<Map<String, dynamic>>> documents;
  final bool isLoading;
  final String errorMessage;

  const WorkoutsState({
    required this.documents,
    required this.isLoading,
    required this.errorMessage,
  });
}
