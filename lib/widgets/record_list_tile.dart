// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:booktickets/util/base_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../models/record.dart';
import '../view_models/contoller.dart';

class RecordListTile extends StatelessWidget {
  final Record record;
  RecordListTile({
    Key? key,
    required this.record,
  }) : super(key: key);
  final Controller _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(RadiusUtility.normalRadiusValue)),
      child: ListTile(
        leading: _buildDate(),
        title: _buildWeight(),
        trailing: _buildIcons(context),
      ),
    );
  }

  Row _buildIcons(context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
            onPressed: () {},
            icon:  Icon(
              Icons.edit,
              color: Theme.of(context).colorScheme.background,
            )),
        IconButton(
            onPressed: () {
              _controller.deleteRecord(record);
            },
            icon:  Icon(
              Icons.delete,
              color:  Theme.of(context).colorScheme.surface,
            ))
      ],
    );
  }

  Center _buildWeight() => Center(child: Text(record.weight.toString()));

  Text _buildDate() => Text(DateFormat('EEEEE,MMM d').format(record.dateTime));
}
