import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_serach_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          children: const [
             SizedBox(height: 50,),
             Text('Notes' , style: TextStyle(fontSize: 24),),

              Spacer(),

              CustomSearchIcon()
             
           
          ],
        );
  }
}
