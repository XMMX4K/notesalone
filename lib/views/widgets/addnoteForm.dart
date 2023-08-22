import 'package:flutter/material.dart';
import 'package:notes/views/widgets/CusttomContainer.dart';
import 'package:notes/views/widgets/CusttomTextFeild.dart';

class addnoteForm extends StatefulWidget {
  addnoteForm({
    super.key,
  });

  @override
  State<addnoteForm> createState() => _addnoteFormState();
}

final GlobalKey<FormState> formkey = GlobalKey();
AutovalidateMode autovalidate = AutovalidateMode.disabled;
String? title, Content;

class _addnoteFormState extends State<addnoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidate,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CusttomTextFeild(
            onsaved: (value) {
              title = value;
            },
            CustText: 'Title',
          ),
          SizedBox(
            height: 20,
          ),
          CusttomTextFeild(
            onsaved: (value) {
              Content = value;
            },
            CustText: 'Content',
            maxlines: 5,
          ),
          SizedBox(
            height: 20,
          ),
          CusttomContainer(
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidate = AutovalidateMode.always;
                setState(() {});
              }
            },
          )
        ],
      ),
    );
  }
}
