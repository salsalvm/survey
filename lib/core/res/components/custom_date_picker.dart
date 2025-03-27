import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/responsive.dart';
import '../colors.dart';
import '../styles.dart';
import 'custom_button.dart';

class CustomDatePicker extends StatefulWidget {
  const CustomDatePicker({super.key, required this.onDateSelected});
  final Function(String) onDateSelected;

  @override
  CustomDatePickerState createState() => CustomDatePickerState();
}

class CustomDatePickerState extends State<CustomDatePicker> {
  int selectedMonth = DateTime.now().month - 1;
  int selectedDay = DateTime.now().day - 1;
  int selectedYear = 18;

  final List<String> months = <String>[
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];
  final List<int> days = List<int>.generate(31, (int index) => index + 1);
  final List<int> years =
      List<int>.generate(100, (int index) => DateTime.now().year - index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        color: Colors.white,
      ),
      child: Column(
        spacing: 20,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Birthday',
            style: KStyle.heading(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: ResponsiveRatio().height(context, .2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: _buildCupertinoPicker(months, selectedMonth,
                        (int index) => setState(() => selectedMonth = index))),
                Expanded(
                    child: _buildCupertinoPicker(
                        days.map((int e) => e.toString()).toList(),
                        selectedDay,
                        (int index) => setState(() => selectedDay = index))),
                Expanded(
                    child: _buildCupertinoPicker(
                        years.map((int e) => e.toString()).toList(),
                        selectedYear,
                        (int index) => setState(() => selectedYear = index))),
              ],
            ),
          ),
          const SizedBox(height: 25),
          CustomButton(
            color: kPrimary,
            widget: Text(
              'Save Birthday',
              style: KStyle.titleBold(color: kWhite),
            ),
            onTap: () {
              final String selectedDate =
                  '${months[selectedMonth]} ${days[selectedDay]}, ${years[selectedYear]}';
              widget.onDateSelected(selectedDate);
              Navigator.pop(context);
            },
          ),
          Text('You must be 18 or older to use Dil 2.',
              style: KStyle.title(color: kInActive)),
        ],
      ),
    );
  }

  Widget _buildCupertinoPicker(List<String> items, int selectedIndex,
      Function(int) onSelectedItemChanged) {
    return CupertinoPicker(
      itemExtent: 40,
      scrollController: FixedExtentScrollController(initialItem: selectedIndex),
      onSelectedItemChanged: onSelectedItemChanged,
      selectionOverlay: const CupertinoPickerDefaultSelectionOverlay(
        background: Colors.transparent,
      ),
      children: items.asMap().entries.map((MapEntry<int, String> entry) {
        final int index = entry.key;
        final String txt = entry.value;
        final bool isSelected = index == selectedIndex;

        return Column(
          children: <Widget>[
            Text(txt,
                style: KStyle.title(
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  color: isSelected ? kBlack : kInActive,
                )),
            if (isSelected)
              Container(
                margin: const EdgeInsets.only(top: 5),
                height: 2,
                width: 40,
                color: kBlack,
              ),
          ],
        );
      }).toList(),
    );
  }
}
