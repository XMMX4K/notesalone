import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes/cubits/AddCubit/addCubit.dart';
import 'package:notes/cubits/AddCubit/addState.dart';
import 'package:notes/views/widgets/addnoteForm.dart';

class ModelSheet extends StatelessWidget {
  const ModelSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return addcubit();
      },
      child: Container(
        child: BlocConsumer<addcubit, AddNoteState>(
          listener: (context, state) {
            if (state is addFail) {
              print('failed ${state.errorMessage}');
            }
            if (state is addSucsses) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return Padding(
                padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AbsorbPointer(
                    absorbing: state is addLoading ? true : false,
                    child: SingleChildScrollView(child: addnoteForm())));
          },
        ),
      ),
    );
  }
}
