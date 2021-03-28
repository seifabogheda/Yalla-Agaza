import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';
class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {

  String _selectedDate;
  String _dateCount;
  String _range;
  String _rangeCount;
  @override
  void initState() {
    _selectedDate = '';
    _dateCount = '';
    _range = '';
    _rangeCount = '';
    super.initState();
  }
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is PickerDateRange) {
        _range =
            DateFormat('dd/MM/yyyy').format(args.value.startDate).toString() +
                ' - ' +
                DateFormat('dd/MM/yyyy')
                    .format(args.value.endDate ?? args.value.startDate)
                    .toString();
      } else if (args.value is DateTime) {
        _selectedDate = args.value;
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      } else {
        _rangeCount = args.value.length.toString();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          shape: BoxShape.rectangle,
          boxShadow: [BoxShadow(offset: Offset(0,1),color: Colors.black,blurRadius: 15)]
        ),
        height: MediaQuery.of(context).size.height*.3,
        width: MediaQuery.of(context).size.width*.8,
        child: SfDateRangePicker(
            view: DateRangePickerView.month,
            monthViewSettings: DateRangePickerMonthViewSettings(firstDayOfWeek: 1),
            onSelectionChanged: _onSelectionChanged,
            selectionMode: DateRangePickerSelectionMode.range
        ),
      ),
    );
  }
}
