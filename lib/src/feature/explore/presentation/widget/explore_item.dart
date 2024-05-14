import 'package:flutter/material.dart';
import 'package:flutter_randomcolor/flutter_randomcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ptc_test/src/feature/category/data/category_items.dart';
import 'package:ptc_test/src/feature/category/presentation/screen.dart';
import 'package:ptc_test/src/model/category_item.dart';
import 'package:ptc_test/src/utility/random_color.dart';

class ExploreItemWidget extends StatelessWidget {
  const ExploreItemWidget({
    super.key,
    required this.exploreItemModel,
  });

  final CategoryModel exploreItemModel;

  @override
  Widget build(BuildContext context) {
    Color color = RandomColorPicker.randomColor;

    return GridTile(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CategoryScreen(
                    categoryModel: exploreItemModel,
                  )));
        },
        child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: color.withAlpha(50)),
              borderRadius: BorderRadius.circular(20),
              color: color.withAlpha(25),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  exploreItemModel.imageUrl,
                  width: 112,
                  height: 75,
                ),
                Text(
                  textAlign: TextAlign.center,
                  exploreItemModel.title,
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 16,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
