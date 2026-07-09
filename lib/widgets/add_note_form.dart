import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes2_app/busnisse_logic/add_note_cubit/add_note_cubit.dart';
import 'package:notes2_app/data/models/note_model.dart';
import 'package:notes2_app/widgets/custom_botton.dart';
import 'package:notes2_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final _formKey = GlobalKey<FormState>();
  String? title, describtion;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            lableText: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 24),
          CustomTextFormField(
            lableText: 'Content',
            maxLines: 4,
            onSaved: (value) {
              describtion = value;
            },
          ),
          SizedBox(height: 60),

          CustomBotton(
            onTap: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                var addNoteModel = NoteModel(
                  title: title!,
                  subTitle: describtion!,
                  date: DateTime.now().toString(),
                  color: const Color.fromARGB(255, 175, 140, 34).toARGB32(),
                );

                BlocProvider.of<AddNoteCubit>(context).addNote(addNoteModel);
              }
            },
          ),
          SizedBox(height: 60),
        ],
      ),
    );
  }
}
