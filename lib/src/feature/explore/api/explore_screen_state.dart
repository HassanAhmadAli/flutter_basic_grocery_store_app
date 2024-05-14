part of 'explore_screen_cubit.dart';

@immutable
class ExploreScreenState extends Equatable {
  final List<CategoryModel>? categories;

  bool get isLoaded => categories != null;

  const ExploreScreenState({required this.categories});

  @override
  List<Object?> get props => [categories];
}
