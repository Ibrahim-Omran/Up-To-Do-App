import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app/core/utils/app_assets.dart';
import 'package:to_do_app/core/utils/app_colors.dart';
import 'package:to_do_app/core/utils/app_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //fab
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.primary,
          onPressed: () {},
          child: const Icon(
            Icons.add,
            size: 32,
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //date now
              Text(
                DateFormat.yMMMMd().format(DateTime.now()),
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: 24),
              ),

              const SizedBox(
                height: 12,
              ),

              //today
              Text(
                AppStrings.today,
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: 24),
              ),

              const SizedBox(
                height: 6,
              ),

              //date picker
              DatePicker(
                DateTime.now(),
                initialSelectedDate: DateTime.now(),
                height: 110,
                width: 60,
                dateTextStyle: Theme.of(context).textTheme.displayMedium!,
                monthTextStyle: Theme.of(context).textTheme.displayMedium!,
                dayTextStyle: Theme.of(context).textTheme.displayMedium!,
                selectionColor: AppColors.primary,
                selectedTextColor: AppColors.white,
                onDateChange: (date) {
                  // New date selected
                  // setState(() {
                  //   _selectedValue = date;
                  // });
                },
              ),


              const SizedBox(
                height: 6,
              ),



              //no tasks
              Align(
                alignment: Alignment.center,
                  child: noTasksWidget(context),
              ),


            ],
          ),
        ),
      ),
    );
  }

  Column noTasksWidget(BuildContext context) {
    return Column(
              children: [
                //image
                Image.asset(
                  AppAssets.noTasks,
                ),

                const SizedBox(
                  height: 10,
                ),

                //noTaskTitle
                Text(
                  AppStrings.noTaskTitle,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontSize: 20),
                ),

                const SizedBox(
                  height: 10,
                ),

                //noTaskSubTitle
                Text(
                  AppStrings.noTaskSubTitle,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!.copyWith(color: AppColors.white),
                ),
              ],
            );
  }
}
