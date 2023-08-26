import 'package:flutter/material.dart';

import '../widgets/container_column.dart';
import '../widgets/time_slot_button.dart';

class PickupDateScreen extends StatefulWidget {
  const PickupDateScreen({super.key});

  @override
  State<PickupDateScreen> createState() => _PickupDateScreenState();
}

class _PickupDateScreenState extends State<PickupDateScreen> {
  bool isSwitchOn = true;
  int selectedDropdownValue = 1;
  String selectedRepeatOption = 'Every week';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.blue,
            )),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.table_rows,
              color: Colors.blue,
            ),
            onPressed: () {
              // Handle the three lines wala icon action
            },
          ),
        ],
        backgroundColor: Colors.white,
        title: const Row(
          children: [
            Text(
              'Pickup Date',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'When would you like your pickup?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontStyle: FontStyle.italic),
                ),
                // SizedBox(width: 30,),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.blue,
                    )),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ContainerColumn(
                  color: Colors.grey,
                  weekDay: 'Fri',
                  date: '25 Jun Yesterday',
                ),
                ContainerColumn(
                  color: Colors.blue,
                  weekDay: 'Sat',
                  date: '26 Jun Today',
                ),
                ContainerColumn(
                  color: Colors.green,
                  weekDay: 'Sun',
                  date: '27 Jun Tomorrow',
                ),
                ContainerColumn(
                  color: Colors.red,
                  weekDay: 'Mon',
                  date: '28 Jun Black day',
                ),
              ],
            ),
            const SizedBox(height: 26),
            const Center(
              child: Text(
                'Available time slots',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 18),
            const Column(
              children: [
                Row(
                  children: [
                    TimeSlotButton(time: '7am - 9pm'),
                    SizedBox(
                      width: 15,
                    ),
                    TimeSlotButton(time: '10am - 12pm'),
                    SizedBox(
                      width: 15,
                    ),
                    TimeSlotButton(time: '1pm - 2pm'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    TimeSlotButton(time: '4pm - 6pm'),
                    SizedBox(
                      width: 15,
                    ),
                    TimeSlotButton(time: '8pm - 10pm'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            Material(
              elevation: 4.0,
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 28.0),
                      // Adjust the value as needed
                      child: Text(
                        'Repeat Pickup',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Switch(
                      value: isSwitchOn,
                      onChanged: (value) {
                        setState(() {
                          isSwitchOn = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 28),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Text(
                'How Often Repeat?',
                style: TextStyle(color: Colors.grey.shade600),
              ),
            ),
            const SizedBox(height: 5),
            Material(
              elevation: 5.0,
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                ),
                height: 40,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    items: ['Every week', 'Every month', 'Custom']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 28),
                          child: Text(
                            value,
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedRepeatOption = value!; // Update selected value
                      });
                    },
                    value: selectedRepeatOption,
                    // Set selected value
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 24,
                    isExpanded: true,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 28),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Text(
                'How many times?',
                style: TextStyle(color: Colors.grey.shade600),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Material(
              elevation: 5.0,
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                ),
                height: 40,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<int>(
                    items: [1, 2, 3, 4].map((int value) {
                      return DropdownMenuItem<int>(
                        value: value,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedDropdownValue =
                                  value; // Update the selected value
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.only(left: 28),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              value.toString(),
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedDropdownValue = value!; // Update selected value
                      });
                    },
                    value: selectedDropdownValue,
                    // Set selected value
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 24,
                    isExpanded: true,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                ),
              ),
              child: const Text(
                'Continue',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            )

          ],
        ),
      ),
    );
  }
}
