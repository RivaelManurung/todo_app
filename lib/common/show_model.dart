import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:todoapp/constant/app_style.dart';
import 'package:todoapp/widget/radio_widget.dart';
import 'package:todoapp/widget/textfield.dart';
import 'package:todoapp/widget/date_time.dart';

class AddNewTaskModel extends StatelessWidget {
  const AddNewTaskModel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      height: MediaQuery.of(context).size.height * 0.90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: double.infinity,
            child: Text(
              'New Task Todo',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black,
              ),
            ),
          ),
          Divider(
            thickness: 1.5,
            color: Colors.grey.shade200,
          ),
          Gap(12),
          const Text(
            'Title Task',
            style: AppStyle.headingOne,
          ),
          const Gap(6),
          const TextFieldWidget(
            hintText: "Add Task Name",
            maxLines: 1,
          ),
          Gap(6),
          const Text(
            'Description',
            style: AppStyle.headingOne,
          ),
          const Gap(6),
          const TextFieldWidget(
            hintText: "Add Task Name",
            maxLines: 5,
          ),
          const Gap(6),
          const Text(
            'Category',
            style: AppStyle.headingOne,
          ),
          Row(
            children: [
              const Expanded(
                  child: RadioWidget(
                categColor: Colors.green,
                titleRadio: 'LRN',
              )),
              Expanded(
                  child: RadioWidget(
                categColor: Colors.blue.shade700,
                titleRadio: 'WRK',
              )),
              Expanded(
                  child: RadioWidget(
                categColor: Colors.amberAccent.shade700,
                titleRadio: 'GEN',
              ))
            ],
          ),

          //DATE AND TIME SECTION
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              DateTime(
                titleText: 'Date',
                valueText: 'dd/mm/yy',
                icon: CupertinoIcons.calendar,
              ),
              Gap(22),
              DateTime(
                titleText: 'Time',
                valueText: 'hh : mm',
                icon: CupertinoIcons.calendar,
              ),
            ],
          ),

          Gap(6),
          //BUTTON SECTION
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Cancel'),
                ),
              ),
              Gap(22),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Create'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
