import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noteapp/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return const EditNoteView();
        }));
      },
      child:Container(
      padding: const EdgeInsets.only(
        top: 24,
        bottom: 24,
        left: 16,
      ),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Fltter tips',
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),

            subtitle: Padding(padding: const EdgeInsets.only(top: 16,bottom: 16),
              child:Text(
                'Build your carer with tharwat thamy',
                style:
                TextStyle(color: Colors.black.withOpacity(.5), fontSize: 18),

              ),),

            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 24,
              ),
            ),
          ),
          Padding(padding:const EdgeInsets.only(right: 24),
            child:Text(
              'may21,2022',
              style: TextStyle(color: Colors.black.withOpacity(.5),fontSize: 16),
            ),),
        ],
      ),
    ));
  }
}
