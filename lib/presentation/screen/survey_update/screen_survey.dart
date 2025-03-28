import 'package:flutter/material.dart';

import '../../../core/res/colors.dart';
import '../../../core/res/components/custom_app_bar.dart';
import '../../../core/res/components/custom_button.dart';
import '../../../core/res/styles.dart';
import '../../../data/model/survey_model/survey_model.dart';

class ScreenSurveyUpdate extends StatelessWidget {
  const ScreenSurveyUpdate({super.key, required this.survey});

  final SurveyModel survey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: CustomAppBar(titleText: survey.schoolName,actions: Row(children: [IconButton(onPressed: () {
          
        },
          icon: 
          const Icon(Icons.delete))],),),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text('Place : ${survey.place}'),
              Text('Rank : ${survey.schoolRank.toString()}'),
            ],
          ),

           CustomButton(
                    widget: Text(
                    'Submit Survey',
                      style: KStyle.title(color: kWhite),
                    ),
                    color: kWarning,
                    buttonWidth: double.infinity,
                    borderColor: kInActive,
                    onTap: () {
                      
                         
                    },
                  ),
        ],
      ),
    );
  }
}
