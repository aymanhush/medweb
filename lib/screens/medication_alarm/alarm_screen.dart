import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/task_controller.dart';
import 'package:flutter_application_1/models/task.dart';
import 'package:flutter_application_1/screens/calorie_calculator/variables.dart';
import 'package:flutter_application_1/screens/medication_alarm/add_task_bar.dart';
import 'package:flutter_application_1/screens/medication_alarm/services/theme_services.dart';
import 'package:flutter_application_1/screens/medication_alarm/theme.dart';
import 'package:flutter_application_1/screens/medication_alarm/widgets/button.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'widgets/task_tile.dart';
class Alarm_Screen extends StatefulWidget {
  const Alarm_Screen({super.key});

  @override
  State<Alarm_Screen> createState() => _Alarm_ScreenState();
}

class _Alarm_ScreenState extends State<Alarm_Screen> {
  DateTime _selectedDate = DateTime.now();
  final _taskController = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          _addTaskBar(),
          _addDateBar(),
          SizedBox(height: 10,),
          _showTasks(),
        ],
      ),
    );
  }
  _showTasks(){
    return Expanded(
      child: Obx(() {
        return ListView.builder(
          itemCount: _taskController.taskList.length,

          itemBuilder: (_, index){
            print(_taskController.taskList.length);
          
            return AnimationConfiguration.staggeredList(
              position: index, 
              child: SlideAnimation(
                child: FadeInAnimation(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          _showBottumSheet(context, _taskController.taskList[index]);
                        },
                        child: TaskTile(_taskController.taskList[index]),
                      )
                    ],
                    )
                    )
                    ));
          
          });
      }),
    );
  }
  _showBottumSheet(BuildContext context, Task task){

  }
  
  _addDateBar(){
    return Container(
            margin: const EdgeInsets.only(top: 20, left: 20),
            child: DatePicker(
              DateTime.now(),
              width: 60,
              height: 80,
              initialSelectedDate: DateTime.now(),
              selectionColor: primaryClr,
              selectedTextColor: Colors.white,
              dateTextStyle: GoogleFonts.lato(
                textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.grey
                ),
              ),
               dayTextStyle: GoogleFonts.lato(
                textStyle: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Colors.grey
                ),
              ),
               monthTextStyle: GoogleFonts.lato(
                textStyle: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Colors.grey
                ),
              ),
              onDateChange: (date){
                _selectedDate=date;
                },
              ),
          );    
  }
  _addTaskBar(){
    return Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(DateFormat.yMMMMd().format(DateTime.now()),
                      style: subHeadingStyle,
                      ),
                      Text("Today",style: headingStyle,)
                    ],
                  ),
                ),
                MyButton(label: "+Add Task", onTap:() async {
                  await Get.to(AddTaskPage());
                  _taskController.getTasks();
                }
                )
              ],
            ),
          );
          
  }
  _appBar(){
    return AppBar(
      
      leading: GestureDetector(
        onTap:(){
          ThemeService().switchTheme();
        },
        
        child: Icon(Icons.nightlight_round,size: 20,), 
      ),
      backgroundColor: Theme.of(context).primaryColor,

      actions: [
        BackButton(
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
  }
}