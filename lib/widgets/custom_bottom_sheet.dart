import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes2_app/busnisse_logic/add_note_cubit/add_note_cubit.dart';
import 'package:notes2_app/busnisse_logic/add_note_cubit/add_note_states.dart';
import 'package:notes2_app/widgets/add_note_form.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.only(
          left: 8,
          right: 8,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: BlocConsumer<AddNoteCubit, AddNoteStates>(
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoadingStates ? true : false,
              child: SingleChildScrollView(child: AddNoteForm()),
            );
          },

          listener: (context, state) {
            if (state is AddNoteSuccessStates) {
              Navigator.pop(context);
            }
            if (state is AddNotefailurStates) {
              print('Failed ${state.errMessage}');
            }
          },
        ),
      ),
    );
  }
}
