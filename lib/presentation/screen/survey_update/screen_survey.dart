import 'package:flutter/material.dart';
import 'package:functions/core/res/components/custom_box.dart';
import 'package:functions/core/utils/utils.dart';

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
      appBar:const  PreferredSize(
        preferredSize:  Size.fromHeight(70),
        child: CustomAppBar(
          titleText: 'Survey Details',
          actions: 
              CustomBox(padding: 10,
                child:  Icon(Icons.delete,color: kPrimary,))
            
          
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(spacing: 10,mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text('School Information',style: KStyle.heading(),),
                CustomBox(
                  child: Column(spacing: 10,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Text('School name:',style: KStyle.title(color: kInActive)),
                          Text(survey.schoolName),
                        ],
                      ),
                      KUtils.commonDivider(),

                       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Text('Reg.No:',style: KStyle.title(color: kInActive)),
                          Text(survey.id),
                        ],
                      ),
                      KUtils.commonDivider(),

                       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Text('Rank:',style: KStyle.title(color: kInActive)),
                          Text(survey.schoolRank.toString()),
                        ],
                      ),
                      KUtils.commonDivider(),

                       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Text('Place :',style: KStyle.title(color: kInActive)),
                          Text(survey.place),
                        ],
                      ),
                   
                    ],
                  ),
                ),

               const  SizedBox(height: 15,),
                 Text('Survey Information',style: KStyle.heading()),
                CustomBox(
                  child: Column(
                    children: [
                      CustomButton(
                        widget: Text(
                          'Submit Survey',
                          style: KStyle.title(color: kWhite),
                        ),
                        color: kWarning,
                        buttonWidth: double.infinity,
                        borderColor: kInActive,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
