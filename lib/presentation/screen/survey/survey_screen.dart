import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:functions/core/res/string.dart';

import '../../../core/res/colors.dart';
import '../../../core/res/components/custom_app_bar.dart';
import '../../../core/res/components/custom_button.dart';
import '../../../core/res/components/custom_form_field.dart';
import '../../../core/res/components/form_field.dart';
import '../../../core/res/styles.dart';
import '../../../core/utils/enum/enum.dart';
import '../../../core/utils/loading_helper.dart';
import '../../../core/utils/utils.dart';
import '../../../data/model/survey_model/survey_model.dart';
import 'bloc/survey_bloc.dart';

class ScreenSurvey extends StatefulWidget {
  const ScreenSurvey({super.key,required this.survey});

  final SurveyModel survey;

  @override
  ScreenSurveyState createState() => ScreenSurveyState();
}

class ScreenSurveyState extends State<ScreenSurvey> {
  final _formKey = GlobalKey<FormState>();

 late TextEditingController schoolNameController ;
 late TextEditingController totalStudentsController ;
 late TextEditingController totalTeachersController ;
 late TextEditingController numberOfLosController ;
 late TextEditingController numberOfWinnersController ;
 late TextEditingController schoolRankController ;

  @override
  void initState() {
    schoolNameController =TextEditingController(text: widget.survey.schoolName);
   totalStudentsController =TextEditingController(text: widget.survey.totalStudents.toString());
   totalTeachersController =TextEditingController(text: widget.survey.totalTeachers.toString());
   numberOfLosController =TextEditingController(text: widget.survey.numberOfLos.toString());
   numberOfWinnersController =TextEditingController(text: widget.survey.numberOfWinners.toString());
   schoolRankController =TextEditingController(text: widget.survey.schoolRank.toString());
    super.initState();
  }

@override
  void dispose() {
    _formKey.currentState!.reset();
      schoolNameController.clear();
      totalStudentsController.clear();
      totalTeachersController.clear();
      numberOfLosController.clear();
      numberOfWinnersController.clear();
      schoolRankController.clear();
    super.dispose();
  }




  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:  PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: CustomAppBar(titleText:widget.survey.id=='' ?'Add Survey':'Edit Survey'),
      ),
      body: SingleChildScrollView(
        child: BlocConsumer<SurveyBloc, SurveyState>(
          listener: (BuildContext context, SurveyState state) {
            if (state.isLoadingState != LoadingState.IDLE) {
              LoadingHelper.call(state.isLoadingState, context);
            }

            if (state.msg.isNotEmpty ) {
              KUtils.snackMessage(context, message: state.msg, color: kSuccess);
            }
            if (state.msg.contains(KString.suerveyUpdated)||state.msg.contains(KString.surveyAdded)) {
              Navigator.pop(context, true);
            }
          },
          builder: (BuildContext context, SurveyState state) {
            return Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, bottom: 40, left: 20, right: 20),
              child: Column(
                spacing: 10,
                children: <Widget>[
             
                  CustomForm(
                    readOnly: true,
                    controller: schoolNameController,
                    name: 'School Name',
                    labelTrue: true,
                  ),
                  CustomForm(
                    readOnly: true,
                    controller: totalStudentsController,
                    name: 'Total Student',
                    labelTrue: true,
                  ),
                  CustomForm(
                    readOnly: true,
                    controller: totalTeachersController,
                    name: 'Total Teacher',
                    labelTrue: true,
                  ),
                  CustomForm(
                    name: 'Number Of Los ',
                    labelTrue: true,
                    controller: numberOfLosController,
                  ),
                  CustomForm(
                    name: 'Number Of Win',
                    labelTrue: true,
                    controller: numberOfWinnersController,
                  ),
                  CustomForm(
                    name: 'School Rank',
                    labelTrue: true,
                    controller: schoolRankController,
                  ),
               

                CustomButton(
                    widget: Text(
                      'Save',
                      style: KStyle.title(color: kWhite),
                    ),
                    color: kPrimary,
                    buttonWidth: double.infinity,
                    borderColor: kInActive,
                    onTap: () {
                      final SurveyModel userProfileUpdate = SurveyModel(
                          schoolName: schoolNameController.text.trim(),
                          totalStudents: int.parse(totalStudentsController.text.trim()),
                          totalTeachers: int.parse(totalTeachersController.text.trim()),
                          numberOfLos:int.parse(numberOfLosController.text.trim()),
                          numberOfWinners:int.parse(numberOfWinnersController.text.trim()),
                          schoolRank: int.parse(schoolRankController.text.trim()),
                          );
                     
                      context.read<SurveyBloc>().add(AddSurvey(
                          body: userProfileUpdate));
                         
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
