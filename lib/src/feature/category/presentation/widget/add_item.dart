import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ptc_test/src/common_widgets/primary_button.dart';
import 'package:ptc_test/src/common_widgets/user_image_picker.dart';
import 'dart:io';

class AddItem extends StatefulWidget {
  const AddItem({super.key});

  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  @override
  void initState() {
    nameController = TextEditingController();
    descriptionController = TextEditingController();
    priceController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    descriptionController.dispose();
    priceController.dispose();
    super.dispose();
  }

  late final TextEditingController nameController;
  late final TextEditingController descriptionController;
  late final TextEditingController priceController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(builder: (context, constrains) {
        return Padding(
          padding: MediaQuery.of(context)
              .viewInsets
              .copyWith(top: 20.h, left: 20.w, right: 20.w),
          child: ListView(
            children: [
              Row(children: [
                Text(
                  'Add',
                  style: GoogleFonts.poppins().copyWith(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                  ),
                ),
              ]),
              TextField(
                decoration: const InputDecoration(hintText: 'Name'),
                keyboardType: TextInputType.text,
                controller: nameController,
              ),
              TextField(
                decoration: const InputDecoration(hintText: 'Description'),
                keyboardType: TextInputType.text,
                controller: descriptionController,
              ),
              TextField(
                decoration: const InputDecoration(hintText: 'Price'),
                keyboardType: TextInputType.number,
                controller: priceController,
              ),
              TextButton(
                  onPressed: () {},
                  child: UserImagePicker(
                    onPickImage: (File pickedImage) {},
                  )),
              Gap(8.h),
              PrimaryButton(
                buttonTitle: 'Add Item',
              ),
            ],
          ),
        );
      }),
    );
  }
}
