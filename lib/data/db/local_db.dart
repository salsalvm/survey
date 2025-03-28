import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import '../model/survey_model/survey_model.dart';


@lazySingleton
class SurveyDbService {
  static const String _boxName = 'surveyBox';

  // Open the Hive box
  Future<Box<SurveyModel>> _openBox() async {
    if (!Hive.isBoxOpen(_boxName)) {
      return await Hive.openBox<SurveyModel>(_boxName);
    }
    return Hive.box<SurveyModel>(_boxName);
  }

  // Save Survey
  Future<void> saveSurvey(SurveyModel survey) async {
    final box = await _openBox();
    await box.put(survey.id, survey);
  }

  // Get All Surveys
  Future<List<SurveyModel>> getSurveys() async {
    final box = await _openBox();
    return box.values.toList();
  }

  // Get a Specific Survey by ID
  Future<SurveyModel?> getSurveyById(String id) async {
    final box = await _openBox();
    return box.get(id);
  }

  // Update Survey
  Future<void> updateSurvey(SurveyModel updatedSurvey) async {
    final box = await _openBox();
    await box.put(updatedSurvey.id, updatedSurvey);
  }

  // Delete Survey
  Future<void> deleteSurvey(String id) async {
    final box = await _openBox();
    await box.delete(id);
  }

  // Clear All Surveys
  Future<void> clearAllSurveys() async {
    final box = await _openBox();
    await box.clear();
  }
}
