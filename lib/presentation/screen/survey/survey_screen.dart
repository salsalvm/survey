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
 late TextEditingController placeController ;
 late TextEditingController schoolRankController ;

  @override
  void initState() {
    schoolNameController =TextEditingController(text: widget.survey.schoolName);
   placeController =TextEditingController(text: widget.survey.place.toString());
   schoolRankController =TextEditingController(text: widget.survey.schoolRank.toString());
    super.initState();
  }

@override
  void dispose() {
    _formKey.currentState!.reset();
      schoolNameController.clear();
      placeController.clear();
      schoolRankController.clear();
    super.dispose();
  }




  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:  PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: CustomAppBar(titleText:widget.survey.id=='' ?'Add School':'Update School'),
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
                    controller: schoolNameController,
                    name: 'School Name',
                    labelTrue: true,
                  ),
                  CustomForm(
                    controller: placeController,
                    name: 'Place',
                    labelTrue: true,
                  ),
                 
                  CustomForm(
                    name: 'School Rank',
                    labelTrue: true,
                    controller: schoolRankController,
                  ),
               

                CustomButton(
                    widget: Text(
                     widget.survey.id=='' ?'Add School':'Update School',
                      style: KStyle.title(color: kWhite),
                    ),
                    color: kWarning,
                    buttonWidth: double.infinity,
                    borderColor: kInActive,
                    onTap: () {
                      final SurveyModel userProfileUpdate = SurveyModel(
                          schoolName: schoolNameController.text.trim(),
                          place: placeController.text.trim(),
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
