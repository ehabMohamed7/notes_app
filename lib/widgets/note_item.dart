import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter tips',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),

            subtitle: Text(
              'Welcome to this app \n with ehab',
              style: TextStyle(color: Colors.black45, fontSize: 18),
            ),

            trailing: IconButton(
              onPressed: () {
                // TODO remember to implementation
              },

              icon: Icon(Icons.delete, color: Colors.black, size: 30),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 30, top: 16),
            child: Text(
              'Jul 2,2026',
              style: TextStyle(color: Colors.black45, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
