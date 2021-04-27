import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/awnser_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';

class HomeController {
  HomeState state = HomeState.empty;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() {
    user = UserModel(
      name: "Luís 77", 
      photoUrl: "https://avatars.githubusercontent.com/u/66538921?v=4"
    );
  }

  void getQuizzes() {
    quizzes = [
      QuizModel(title: "NLW 5 Flutter", 
        questions: [
          QuestionModel(
            title: "Você está curtindo o Flutter?", 
            awnsers:  [
              AwnserModel(title: "Estou curtindo"),
              AwnserModel(title: "Amando Flutter"),
              AwnserModel(title: "Muito top"),
              AwnserModel(title: "Shoe de bola", isRight: true)
            ]
          )
        ], 
        imagem: AppImages.blocks, 
        level: Level.facil
      )
    ];
  }
}