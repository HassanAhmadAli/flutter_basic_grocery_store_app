import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ptc_test/src/const/colors.dart';
import 'package:ptc_test/src/feature/category/api/category_screen_cubit.dart';
import 'package:ptc_test/src/model/category_item.dart';
import 'package:ptc_test/src/model/item.dart';
import 'package:ptc_test/src/feature/category/presentation/widget/add_item.dart';
import 'package:ptc_test/src/feature/category/presentation/widget/itemCard.dart';

class CategoryScreen extends StatelessWidget {
  static const route = 'category Screen';

  const CategoryScreen({
    super.key,
    required this.categoryModel,
  });

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CategoryScreenCubit>(
        create: (context) => CategoryScreenCubit(
              categoryId: categoryModel.categoryId,
            ),
        child: RefreshIndicator(
          onRefresh: () async {
            return context.read<CategoryScreenCubit>().emitCategoryItems();
          },
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(categoryModel.title),
              actions: [
                Container(
                    height: 40.h,
                    width: 40.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: primaryGreen.withGreen(155)),
                        color: primaryGreen,
                        borderRadius: BorderRadius.circular(20.h)),
                    child: IconButton(
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                            backgroundColor: const Color(0xFFf2f3f2),
                            context: context,
                            builder: (context) {
                              return const AddItem();
                            });
                      },
                    )),
                const Gap(8),
              ],
            ),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Builder(builder: (context) {
                  if (context.watch<CategoryScreenCubit>().state.isLoaded) {
                    return GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        crossAxisCount: 2,
                        childAspectRatio: 0.8,
                        // childAspectRatio: 0.85,
                      ),
                      itemCount: context
                          .watch<CategoryScreenCubit>()
                          .state
                          .shopItems!
                          .length,
                      itemBuilder: (BuildContext context, int index) {
                        return ItemCard(
                          shopItem: context
                              .watch<CategoryScreenCubit>()
                              .state
                              .shopItems![index],
                        );
                      },
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
              ),
            ),
          ),
        ));
  }
}
