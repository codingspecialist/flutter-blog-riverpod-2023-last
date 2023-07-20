import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/size.dart';
import 'package:flutter_blog/_core/utils/validator_util.dart';
import 'package:flutter_blog/ui/widgets/custom_elavated_button.dart';
import 'package:flutter_blog/ui/widgets/custom_text_area.dart';
import 'package:flutter_blog/ui/widgets/custom_text_form_field.dart';

class PostUpdateForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _title = TextEditingController();
  final _content = TextEditingController();

  PostUpdateForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: [
          CustomTextFormField(
            controller: _title,
            initValue: "제목",
            hint: "Title",
            funValidator: validateTitle(),
          ),
          const SizedBox(height: smallGap),
          CustomTextArea(
            controller: _content,
            initValue: "내용",
            hint: "Content",
            funValidator: validateContent(),
          ),
          const SizedBox(height: largeGap),
          CustomElevatedButton(
            text: "글 수정하기",
            funPageRoute: () async {
              if (_formKey.currentState!.validate()) {
                Navigator.pop(context);
              }
            },
          ),
        ],
      ),
    );
  }
}
