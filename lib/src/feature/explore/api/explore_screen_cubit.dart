import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ptc_test/src/feature/explore/data/explore_items.dart';
import 'package:ptc_test/src/model/category_item.dart';

part 'explore_screen_state.dart';

class ExploreScreenCubit extends Cubit<ExploreScreenState> {
  ExploreScreenCubit() : super(const ExploreScreenState(categories: null)) {
    emitUpdateCategories();
  }

  Future<void> emitUpdateCategories() async {
    final categories = await ExploreRepository.categories;
    emit(ExploreScreenState(categories: categories));
    return;
  }
}
