import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const EditNoteView()),
  );
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: const Text(
                  'Flutter tips',
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Build your career with mohamed salah',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.3), fontSize: 18),
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 35,
                    )),
                onTap: () {
                  // Add your onTap logic here
                },
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(
                  'May 21,22',
                  style: TextStyle(color: Colors.black.withOpacity(0.3)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
