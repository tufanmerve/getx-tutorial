import 'package:booktickets/util/base_utility.dart';
import 'package:booktickets/views/history.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:numberpicker/numberpicker.dart';

import '../view_models/contoller.dart';

class AddRecordSheet extends StatefulWidget {
  const AddRecordSheet({Key? key}) : super(key: key);

  @override
  State<AddRecordSheet> createState() => _AddRecordSheetState();
}

class _AddRecordSheetState extends State<AddRecordSheet> {
  final Controller _controller = Get.put(Controller());

  int _selectedWeight = 70;
  DateTime _selectedDate = DateTime.now();
  pickDate(context) async {
    var initialDate = DateTime.now();
    _selectedDate = await showDatePicker(
          context: context,
          initialDate: initialDate,
          firstDate: initialDate.subtract(const Duration(days: 500)),
          lastDate: initialDate.add(const Duration(days: 20)),
          builder: (context, child) {
            return Theme(
              data: ThemeData.light().copyWith(
                colorScheme: const ColorScheme.light(primary: Colors.black),
              ),
              child: child ?? const Text(''),
            );
          },
        ) ??
        DateTime.now();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Rocord'),
        centerTitle: true,
      ),
      body: Column(
        children: [weightCard(), dateCard(context), saveButton()],
      ),
    );
  }

  Padding saveButton() {
    return Padding(
      padding: PaddingUtility.all(PaddingUtility.miniPaddingValue),
      child: ElevatedButton(
        onPressed: () {
          _controller.addRecord(_selectedWeight, _selectedDate);
          Get.to(() => const HistoryScreen());
        },
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).colorScheme.primary,
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(RadiusUtility.normalRadiusValue)),
        ),
        child: const Text('Save Record'),
      ),
    );
  }

  GestureDetector dateCard(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pickDate(context);
      },
      child: Card(
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(RadiusUtility.normalRadiusValue)),
          child: Padding(
            padding: PaddingUtility.all(PaddingUtility.smallPaddingValue),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  FontAwesomeIcons.calendar,
                ),
                Text(DateFormat('EEEEE,MMM d').format(_selectedDate))
              ],
            ),
          )),
    );
  }

  Card weightCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: PaddingUtility.all(PaddingUtility.smallPaddingValue),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(FontAwesomeIcons.weightScale),
            Stack(alignment: AlignmentDirectional.bottomCenter, children: [
              NumberPicker(
                  itemHeight: 50,
                  itemWidth: 70,
                  axis: Axis.horizontal,
                  minValue: 40,
                  maxValue: 200,
                  value: _selectedWeight,
                  onChanged: (value) {
                    setState(() {
                      _selectedWeight = value;
                    });
                  }),
              const Icon(
                FontAwesomeIcons.chevronUp,
                size: 16,
              )
            ])
          ],
        ),
      ),
    );
  }
}
