import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';


class CalenderSection extends StatefulWidget {
  const CalenderSection({super.key});

  @override
  State<CalenderSection> createState() => _CalenderSectionState();
}

class _CalenderSectionState extends State<CalenderSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back),
          color: Colors.grey[800],
        ),
      ) ,
      body: Column(
        children: [
          Container(
              child: TableCalendar(
                rowHeight: 43,
                headerStyle: HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                ),
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
              ),
          )
        ],
      ),
    );
  }
}