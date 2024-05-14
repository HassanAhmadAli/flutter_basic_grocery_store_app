import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ptc_test/src/common_widgets/buttom_navigation_bar.dart';
import 'package:ptc_test/src/const/colors.dart';
import 'package:ptc_test/src/feature/explore/api/explore_screen_cubit.dart';
import 'package:ptc_test/src/feature/explore/data/explore_items.dart';
import 'package:ptc_test/src/feature/explore/presentation/widget/explore_item.dart';

class ExploreScreen extends StatelessWidget {
  static const route = 'explore';

  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _exploreCategoryModels = ExploreRepository.categories;
    return BlocProvider<ExploreScreenCubit>(
      create: (context) => ExploreScreenCubit(),
      child: RefreshIndicator(
        color: primaryGreen,
        onRefresh: () async {
          return context.read<ExploreScreenCubit>().emitUpdateCategories();
        },
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Find Products",
                style: GoogleFonts.poppins().copyWith(
                  fontSize: 20,
                ),
              ),
            ),
            body: Builder(builder: (context) {
              return Padding(
                padding: const EdgeInsets.only(
                  right: 24,
                  left: 24,
                ),
                child: BlocBuilder<ExploreScreenCubit, ExploreScreenState>(
                  builder: (context, state) {
                    switch (state.isLoaded) {
                      case true:
                        return GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 12,
                            crossAxisCount: 2,
                            crossAxisSpacing: 16,
                          ),
                          itemCount: state.categories!.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ExploreItemWidget(
                              exploreItemModel: state.categories![index],
                            );
                          },
                        );

                      case false:
                        context
                            .read<ExploreScreenCubit>()
                            .emitUpdateCategories();
                        return const Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              );
            }),
            bottomNavigationBar: const BottomNaviationBar(
              currentIndex: 1,
            ),
          ),
        ),
      ),
    );
  }
}
